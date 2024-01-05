import React, { useEffect, useState } from "react";
import { useNavigation } from "@react-navigation/native";
import Rating from "../Content/Rating";
import RelatedProducts from "../Content/ProductRelated";
import Swiper from "react-native-swiper";
import {
  View,
  Text,
  Image,
  StyleSheet,
  Button,
  ScrollView,
  TouchableOpacity,
  Share,
  Animated,
  Easing,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import AsyncStorage from "@react-native-async-storage/async-storage";
import axiosAPI from "../API/axiosAPI";
import ApiUrl from "../API/ApiUrl";

const ProductDetail = ({ route }) => {
  // const imageUrl = "http://172.16.0.89:1337";
  const navigation = useNavigation();
  const [swiperIndex, setSwiperIndex] = useState(0);
  const [scrollY] = useState(new Animated.Value(0));
  const [userRating, setUserRating] = useState(null);
  const [isFavorite, setFavorite] = useState(false);
  const [showFullDescription, setShowFullDescription] = useState(false);
  const [customerReviews, setCustomerReviews] = useState([]);
  const [showShortenedDescription, setShowShortenedDescription] =
    useState(true);
  const { product, productImage } = route.params;
  useEffect(() => {
    const interval = setInterval(() => {
      if (swiperIndex < productImage.length - 1) {
        setSwiperIndex(swiperIndex + 1);
      } else {
        setSwiperIndex(0);
      }
    }, 3000); // 1 giây

    return () => clearInterval(interval); // Clear interval khi component unmount
  }, [swiperIndex, productImage.length]);
  useEffect(() => {
    const fetchFavoriteStatus = async () => {
      try {
        // Lấy trạng thái yêu thích của sản phẩm cụ thể từ AsyncStorage
        const storedFavoriteStatus = await AsyncStorage.getItem(
          `favoriteStatus_${product.id}`
        );

        console.log(
          `Stored Favorite Status for Product ${product.id}:`,
          storedFavoriteStatus
        );

        if (storedFavoriteStatus !== null) {
          setFavorite(storedFavoriteStatus === "true");
        }
      } catch (error) {
        console.error("Error fetching favorite status:", error);
      }
    };

    fetchFavoriteStatus();
  }, [product.id]); // Sử dụng product.id để theo dõi thay đổi của sản phẩm cụ thể
  const handlePrev = () => {
    if (swiperIndex > 0) {
      setSwiperIndex(swiperIndex - 1);
    }
  };

  const handleNext = () => {
    if (swiperIndex < productImage.length - 1) {
      setSwiperIndex(swiperIndex + 1);
    }
  };
  // console.log(product);
  const toggleFavorite = async () => {
    try {
      // Toggle trạng thái yêu thích của sản phẩm cụ thể
      const newFavoriteStatus = !isFavorite;
      setFavorite(newFavoriteStatus);

      // Lưu trạng thái yêu thích của sản phẩm cụ thể vào AsyncStorage
      await AsyncStorage.setItem(
        `favoriteStatus_${product.id}`,
        newFavoriteStatus.toString()
      );

      console.log(
        `Favorite status saved for Product ${product.id}:`,
        newFavoriteStatus
      );
    } catch (error) {
      console.error("Error toggling favorite status:", error);
    }
  };
  const goBack = () => {
    navigation.goBack();
  };
  useEffect(() => {
    console.log("scrollY value:", scrollY);
  }, [scrollY]);

  const renderBackButton = () => {
    const opacity = scrollY.interpolate({
      inputRange: [0, 50],
      outputRange: [1, 0],
      extrapolate: "clamp",
    });

    return (
      <Animated.View style={[styles.backButtonContainer, { opacity }]}>
        <Icon name="arrow-left" size={24} style={styles.backButton} />
      </Animated.View>
    );
  };
  const submitUserRating = (rating) => {
    const newReview = {
      rating: rating.rating,
      review: rating.review,
    };

    // Thêm đánh giá mới vào mảng
    setCustomerReviews([...customerReviews, newReview]);

    // Cập nhật đánh giá của người dùng
    setUserRating(newReview);
  };
  const relatedProducts = [
    {
      id: 1,
      title: "Sản phẩm liên quan 1",
      price: 200000,
      image:
        "https://beyono.vn/wp-content/uploads/2023/05/z3942912201572-6562199a36aa2b79ceb66fabb9755aec.webp",
    },
    {
      id: 2,
      title: "Sản phẩm liên quan 2",
      price: 250000,
      image:
        "https://beyono.vn/wp-content/uploads/2023/05/z3942912201572-6562199a36aa2b79ceb66fabb9755aec.webp",
    },
    {
      id: 3,
      title: "Sản phẩm liên quan 2",
      price: 250000,
      image:
        "https://beyono.vn/wp-content/uploads/2023/05/z3942912201572-6562199a36aa2b79ceb66fabb9755aec.webp",
    },
    {
      id: 4,
      title: "Sản phẩm liên quan 2",
      price: 250000,
      image:
        "https://beyono.vn/wp-content/uploads/2023/05/z3942912201572-6562199a36aa2b79ceb66fabb9755aec.webp",
    },
    {
      id: 5,
      title: "Sản phẩm liên quan 2",
      price: 250000,
      image:
        "https://beyono.vn/wp-content/uploads/2023/05/z3942912201572-6562199a36aa2b79ceb66fabb9755aec.webp",
    },
    // Thêm các sản phẩm liên quan khác nếu cần
  ];
  const formatPrice = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
  };
  const handleChatNow = () => {
    // Xử lý khi người dùng nhấn vào nút "Chat ngay"
    console.log("Chat ngay");
  };
  const handleAddToCart = () => {
    // Xử lý khi người dùng nhấn vào nút "Thêm vào giỏ hàng"
    console.log("Thêm vào giỏ hàng");
  };

  const handleBuyNow = () => {
    // Xử lý khi người dùng nhấn vào nút "Mua ngay"
    console.log("Mua ngay");
  };
  const shareProduct = () => {
    // Sử dụng React Native Share API để chia sẻ thông tin sản phẩm
    Share.share({
      title: product.title,
      message: `Check out this product: ${product.title} - $${product.price}`,
      url: product.image, // (Optional) Đường dẫn đến hình ảnh sản phẩm
    })
      .then((result) => console.log(result))
      .catch((error) => console.error(error));
  };
  const toggleDescription = () => {
    setShowShortenedDescription(!showShortenedDescription);
  };

  return (
    <View style={styles.container}>
      <ScrollView
        style={styles.scrollView}
        contentContainerStyle={styles.scrollContent}
        onScroll={Animated.event(
          [{ nativeEvent: { contentOffset: { y: scrollY } } }],
          { useNativeDriver: false }
        )}
        scrollEventThrottle={16}
      >
        <TouchableOpacity style={styles.backButton} onPress={goBack}>
          <Icon name="arrow-left" size={24} color="black" />
        </TouchableOpacity>
        <Swiper
          style={styles.swiper}
          loop={false}
          // showsButtons={false}
          // showsPagination={false}
          index={swiperIndex}
          onIndexChanged={(index) => setSwiperIndex(index)}
        >
          {productImage.map((image, index) => (
            <Image
              key={index}
              source={{ uri: ApiUrl.imageURL + image.attributes.url }}
              style={styles.image}
            />
          ))}
        </Swiper>
        <View style={styles.price}>
          <Text style={styles.priceText}>{`đ ${formatPrice(
            product.attributes.price
          )}`}</Text>
        </View>
        <View style={{ marginHorizontal: 5 }}>
          <Text style={styles.titleText}>{product.attributes.productName}</Text>
        </View>
        <View style={styles.rating}>
          {product.rating ? (
            <>
              <Rating rating={product.rating} />
              <Text style={{ marginHorizontal: 3, marginRight: 3 }}>
                | Đã bán 10k
              </Text>
            </>
          ) : (
            <Text>Chưa có đánh giá | Đã bán 10k</Text>
          )}
          <View style={styles.favoriteShareContainer}>
            <View style={styles.favorite}>
              <TouchableOpacity onPress={toggleFavorite}>
                <Icon
                  name={isFavorite ? "heart" : "heart-o"}
                  size={20}
                  color={isFavorite ? "red" : "black"}
                />
              </TouchableOpacity>
            </View>
            <View style={styles.share}>
              <TouchableOpacity onPress={shareProduct}>
                <Icon
                  name="share"
                  size={20}
                  color="black"
                  style={{ marginLeft: 10 }}
                />
              </TouchableOpacity>
            </View>
          </View>
        </View>
        <View style={styles.rating}></View>
        <View style={styles.description}>
          {product.attributes.detail && (
            <>
              <Text numberOfLines={showShortenedDescription ? 3 : 0}>
                {product.attributes.detail}
              </Text>
              {product.attributes.detail.length > 3 && (
                <TouchableOpacity
                  onPress={toggleDescription}
                  style={styles.showMoreButton}
                >
                  <Text style={styles.showMoreButtonText}>
                    {showShortenedDescription ? "Xem thêm" : "Thu gọn"}
                  </Text>
                </TouchableOpacity>
              )}
            </>
          )}
        </View>

        <ScrollView
          style={{ marginHorizontal: 5 }}
          contentContainerStyle={styles.scrollContent}
        >
          <RelatedProducts relatedProducts={relatedProducts} />
        </ScrollView>
      </ScrollView>
      <View style={styles.buttonContainer}>
        {/* Nút "Chat ngay" */}
        <View style={styles.buttonfooter}>
          <TouchableOpacity style={styles.button} onPress={handleChatNow}>
            <Text style={styles.buttonText}>Chat ngay</Text>
          </TouchableOpacity>

          {/* Nút "Thêm vào giỏ hàng" */}
          <TouchableOpacity style={styles.button} onPress={handleAddToCart}>
            <Text style={styles.buttonText}>Thêm vào giỏ hàng</Text>
          </TouchableOpacity>
        </View>

        {/* Nút "Mua ngay" */}
        <TouchableOpacity style={styles.button} onPress={handleBuyNow}>
          <Text style={styles.buttonText}>Mua ngay</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    marginTop: 10,
    flex: 1,
    backgroundColor: "#f2f2f2",
    flexDirection: "column",
  },
  buttonfooter: {},
  scrollView: {
    flex: 3,
  },
  buttonContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginTop: 10,
  },
  button: {
    backgroundColor: "#3498db",
    padding: 10,
    borderRadius: 5,
    flex: 1,
    margin: 5,
  },
  swiper: {
    height: 400, // Điều chỉnh kích thước swiper theo ý muốn
  },
  buttonText: {
    color: "#fff",
    textAlign: "center",
    alignContent: "center",
  },
  buttonContainer: {
    flex: 0.075,
    flexDirection: "row",
  },
  description: {
    marginHorizontal: 5,
  },
  priceText: {
    textAlign: "left",
    color: "white",
    fontSize: 20,
  },
  price: {
    padding: 15,
    marginVertical: 5,
    backgroundColor: "#ee4e2e",
  },
  rating: {
    flexDirection: "row",
    marginHorizontal: 10,
    paddingTop: 20,
    backgroundColor: "#efefef",
  },
  favotite: {
    flexDirection: "row",
    backgroundColor: "#efefef",
  },
  titleText: {
    marginVertical: 5,
    textAlign: "left",
    fontSize: 20,
  },
  image: {
    width: "100%",
    height: 400,
    resizeMode: "contain",
  },
  favoriteShareContainer: {
    flexDirection: "row",
    justifyContent: "flex-end", // Đưa nó về phía bên phải
    alignItems: "center",
    flex: 1, // Sử dụng flex để căn lề nếu cần thiết
  },
  favorite: {
    marginRight: 4,
  },
  share: {
    marginLeft: 4,
  },
  showMoreButton: {
    marginTop: 5,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
  },
  showMoreButtonText: {
    color: "blue",
    marginRight: 5,
  },
  backButton: {
    position: "absolute",
    top: 15,
    left: 13,
    zIndex: 1,
  },
});

export default ProductDetail;
