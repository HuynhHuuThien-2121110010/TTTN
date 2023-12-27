import React, { useEffect, useState } from "react";
import { useNavigation } from "@react-navigation/native";
import Rating from "../Content/Rating";
import RatingInput from "../Content/RatingInput";
import RelatedProducts from "../Content/ProductRelated";
import {
  View,
  Text,
  Image,
  StyleSheet,
  Button,
  ScrollView,
  TouchableOpacity,
  Share,
  Easing,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import AsyncStorage from "@react-native-async-storage/async-storage";

const ProductDetail = ({ route }) => {
  const navigation = useNavigation();
  const [userRating, setUserRating] = useState(null);
  const [isFavorite, setFavorite] = useState(false);
  const [showFullDescription, setShowFullDescription] = useState(false);
  const [customerReviews, setCustomerReviews] = useState([]);
  const [showShortenedDescription, setShowShortenedDescription] =
    useState(true);
  const { product } = route.params;

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
      >
        <TouchableOpacity style={styles.backButton} onPress={goBack}>
          <Icon name="arrow-left" size={24} color="black" />
        </TouchableOpacity>
        <Image source={{ uri: product.image }} style={styles.image} />
        <View style={styles.price}>
          <Text style={styles.priceText}>{`đ${product.price}`}</Text>
        </View>
        <View style={{ marginHorizontal: 5 }}>
          <Text style={styles.titleText}>{product.title}</Text>
        </View>
        <View style={styles.rating}>
          <Rating rating={product.rating.rate} />
          <Text style={{ marginHorizontal: 3, marginRight: 3 }}>
            | Đã bán 10k
          </Text>
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
          <Text numberOfLines={showShortenedDescription ? 3 : 0}>
            {product.description}
          </Text>
          {product.description.length > 3 && (
            <TouchableOpacity
              onPress={toggleDescription}
              style={styles.showMoreButton}
            >
              <Text style={styles.showMoreButtonText}>
                {showShortenedDescription ? "Xem thêm" : "Thu gọn"}
              </Text>
            </TouchableOpacity>
          )}
        </View>
        <ScrollView
          style={{ marginHorizontal: 5 }}
          contentContainerStyle={styles.scrollContent}
        >
          <RelatedProducts relatedProducts={relatedProducts} />
        </ScrollView>
        <View style={styles.ratingInput}>
          <Text>Đánh giá của người mua:</Text>
          <RatingInput onSubmit={submitUserRating} />
          {customerReviews.map((review, index) => (
            <View key={index} style={styles.userRating}>
              <Text style={{ marginLeft: 2 }}>
                Đánh giá của khách hàng {index + 1}:
              </Text>
              <Text>Số sao: {review.rating}</Text>
              <Text>Nội dung: {review.review}</Text>
            </View>
          ))}
        </View>
        {userRating && (
          <View style={styles.userRating}>
            <Text style={{ marginLeft: 2 }}>Đánh giá của bạn:</Text>
            {/* Hiển thị đánh giá của người dùng sau khi họ gửi */}
            <Text>Số sao: {userRating.rating}</Text>
            <Text>Nội dung: {userRating.review}</Text>
          </View>
        )}
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
    backgroundColor: "#ee4e2e",
  },
  rating: {
    flexDirection: "row",
    margin: 10,
    padding: 10,
    backgroundColor: "#efefef",
  },
  favotite: {
    flexDirection: "row",
    backgroundColor: "#efefef",
  },
  titleText: {
    textAlign: "left",
    fontSize: 20,
  },
  image: {
    width: "100%",
    height: 300,
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
