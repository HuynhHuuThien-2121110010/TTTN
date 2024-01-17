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
import Dialog, {
  DialogContent,
  SlideAnimation,
} from "react-native-popup-dialog";
import ApiUrl from "../API/ApiUrl";
import CartModal from "../Component/CartModal";
import ChatModal from "../Component/ChatModal";
import { useAuth } from "../Content/AuthContext";

const ProductDetail = ({ route }) => {
  // const imageUrl = "http://172.16.0.89:1337";
  const [cart, setCart] = useState([]);
  const navigation = useNavigation();
  const { authenticated, userInfo } = useAuth();
  //-----------------------Mua ngay------------------
  const [isPopupVisible, setPopupVisible] = useState(false);
  const [selectedProductInfo, setSelectedProductInfo] = useState(null);
  const [totalPrice, setTotalPrice] = useState(0);
  const [quantity, setQuantity] = useState(1);
  const [isPaymentVisible, setPaymentVisible] = useState(false);
  //-----------------------------------------
  const [isChatModalVisible, setChatModalVisible] = useState(false);
  const [isModalVisible, setModalVisible] = useState(false);
  const [categoryNameToFilter, setCategoryNameToFilter] = useState("");
  const [productData, setProductData] = useState([]);
  const [swiperIndex, setSwiperIndex] = useState(0);
  const [scrollY] = useState(new Animated.Value(0));
  const [userRating, setUserRating] = useState(null);
  const [isFavorite, setFavorite] = useState(false);
  const [showFullDescription, setShowFullDescription] = useState(false);
  const [customerReviews, setCustomerReviews] = useState([]);
  const [showShortenedDescription, setShowShortenedDescription] =
    useState(true);

  const { product, productImage } = route.params;
  //  ---------Lấy sản phẩm liên quan---------------
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("products?populate=*");
        setProductData(result.data.data);
        setCategoryNameToFilter(route.params.attributes);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu:", error);
      }
    };

    fetchData();
  }, []); // Thêm route.params làm phụ thuộc
  //-----------------------------------------------------
  const relatedProducts = filterByCategory(productData, categoryNameToFilter);
  useEffect(() => {
    setCategoryNameToFilter(product.categoryName); // hoặc bất kỳ thuộc tính nào của sản phẩm bạn muốn sử dụng để lọc sản phẩm liên quan
  }, [route.params]);
  //----------------------------------------
  function filterByCategory(data, category) {
    return data.filter((item) => item.categoryName === category);
  }

  //---------------------Mua ngay-----------------------------
  const openPopup = () => {
    if (!authenticated) {
      navigation.navigate("Acount");
      return;
    }
    const price = product.attributes.price * quantity;
    setTotalPrice(price);

    setSelectedProductInfo({
      image: productImage[swiperIndex].attributes.url,
      productName: product.attributes.productName,
      quantity: quantity,
      id: product.id,
      // Thêm các thông tin khác của sản phẩm nếu cần
    });
    setPopupVisible(true);
  };

  const closePopup = () => {
    setPopupVisible(false);
  };
  const handlePayment = () => {
    // Thực hiện logic thanh toán ở đây
    console.log("Thực hiện thanh toán");
    // Đóng pop-up sau khi thanh toán thành công hoặc theo logic của bạn
    closePopup();
  };

  const updateTotalPrice = () => {
    const newTotalPrice = product.attributes.price * quantity;
    setTotalPrice(newTotalPrice);
  };
  const handleCheckout = () => {
    // Xử lý thanh toán ở đây
    // Ví dụ: Chuyển đến màn hình thanh toán
    navigation.navigate("CheckOutCart");
    closePopup();
  };
  const increaseQuantity = () => {
    setQuantity((prevQuantity) => prevQuantity + 1);
    updateTotalPrice();
  };

  const decreaseQuantity = () => {
    if (quantity > 1) {
      setQuantity((prevQuantity) => prevQuantity - 1);
      updateTotalPrice();
    }
  };
  //--------------------------thêm vào giỏ----------------
  const openModal = () => {
    setModalVisible(true);
  };

  const closeModal = () => {
    setModalVisible(false);
  };

  //------------End thêm vào giỏ-------------------
  const openChatModal = () => {
    setChatModalVisible(true);
  };

  // Hàm đóng ChatModal
  const closeChatModal = () => {
    setChatModalVisible(false);
  };
  //------------End Chat-------------------
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
        const storedFavoriteStatus = await AsyncStorage.getItem(
          `favoriteStatus_${product.id}`
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
  const formatPrice = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
  };
  const handleChatNow = () => {
    // Xử lý khi người dùng nhấn vào nút "Chat ngay"
    console.log("Chat ngay");
  };
  const handleAddToCart = () => {
    if (!authenticated) {
      navigation.navigate("Acount");
      return;
    }
    openModal();
  };

  const handleBuyNow = () => {
    navigation.navigate("CheckOutCart", {
      productInfo: {
        id: selectedProductInfo.id,
        image: selectedProductInfo.image,
        productName: selectedProductInfo.productName,
        price: product.attributes.price,
        quantity: quantity,
      },
    });
    closePopup();
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
      <TouchableOpacity style={styles.backButton} onPress={goBack}>
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      <ScrollView
        style={styles.scrollView}
        contentContainerStyle={styles.scrollContent}
        onScroll={Animated.event(
          [{ nativeEvent: { contentOffset: { y: scrollY } } }],
          { useNativeDriver: false }
        )}
        scrollEventThrottle={16}
      >
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
          {productData.rating ? (
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
          <RelatedProducts data={relatedProducts} />
        </ScrollView>
      </ScrollView>
      <View style={styles.buttonContainer}>
        <TouchableOpacity style={styles.button} onPress={openChatModal}>
          <Text style={styles.buttonText}>Chat ngay</Text>
        </TouchableOpacity>
        {/* Hiển thị ChatModal */}
        <ChatModal isVisible={isChatModalVisible} closeModal={closeChatModal} />
        <TouchableOpacity style={styles.button} onPress={handleAddToCart}>
          <Text style={styles.buttonText}>Thêm vào giỏ hàng</Text>
        </TouchableOpacity>
        {/* Hiển thị Modal */}
        <CartModal
          isVisible={isModalVisible}
          closeModal={closeModal}
          product={route.params.product}
          setCart={setCart}
        />
        <TouchableOpacity style={styles.button} onPress={openPopup}>
          <Text style={styles.buttonText}>Mua ngay</Text>
        </TouchableOpacity>
        {/* Pop-up hiển thị thông tin sản phẩm khi người dùng nhấn "Mua ngay" */}
        <Dialog
          visible={isPopupVisible}
          dialogAnimation={new SlideAnimation({ slideFrom: "bottom" })}
          onTouchOutside={closePopup}
        >
          <DialogContent style={styles.popupContent}>
            <Image
              source={{
                uri:
                  ApiUrl.imageURL +
                  product.attributes.image.data[0].attributes.url,
              }}
              style={styles.popupImage}
            />
            <Text style={styles.popupText}>
              {selectedProductInfo?.productName}
            </Text>
            <View style={styles.quantityContainer}>
              <Text>Số lượng: </Text>
              <TouchableOpacity
                onPress={decreaseQuantity}
                style={styles.quantityButton}
              >
                <Icon name="minus" size={10} color="white" />
              </TouchableOpacity>
              <Text style={styles.quantityText}>{quantity}</Text>
              <TouchableOpacity
                onPress={increaseQuantity}
                style={styles.quantityButton}
              >
                <Icon name="plus" size={10} color="white" />
              </TouchableOpacity>
            </View>
            <Text style={styles.popupText}>
              Giá: {`đ${formatPrice(product.attributes.price)}`}
            </Text>
            {/* Thêm các thông tin khác của sản phẩm nếu cần */}
            <TouchableOpacity
              onPress={handleBuyNow}
              style={styles.popupPayButton}
            >
              <Text style={{ color: "white" }}>Thanh toán</Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={closePopup}
              style={styles.popupCloseButton}
            >
              <Text style={styles.popupCloseButtonText}>✕</Text>
            </TouchableOpacity>
          </DialogContent>
        </Dialog>
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
  scrollView: {
    flex: 3,
  },
  buttonContainer: {
    flexDirection: "row",
    margin: 10,
  },
  button: {
    backgroundColor: "#2f486e",
    padding: 10,
    borderRadius: 5,
    flex: 1,
    margin: 5,
  },
  swiper: {
    height: 400, // Điều chỉnh kích thước swiper theo ý muốn
  },
  buttonText: {
    flexDirection: "row",
    color: "#fff",
    textAlign: "center",
    alignContent: "center",
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
    backgroundColor: "#2f486e",
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
  buttonfooter: {
    flexDirection: "column",
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
    color: "#2f486e",
    marginRight: 5,
  },
  backButton: {
    position: "absolute",
    top: 15,
    left: 13,
    zIndex: 1,
  },
  //-----Mua ngay-------
  popupContent: {
    padding: 20,
    backgroundColor: "#fff",
    alignItems: "center",
  },
  popupImage: {
    width: 200,
    height: 200,
    resizeMode: "contain",
    marginBottom: 10,
  },
  popupText: {
    fontSize: 18,
    marginBottom: 10,
  },
  popupPayButton: {
    backgroundColor: "#2f486e",
    padding: 10,
    borderRadius: 5,
    marginTop: 10,
  },
  popupCloseButton: {
    position: "absolute",
    top: 10,
    right: 10,
    padding: 10,
  },
  popupCloseButtonText: {
    color: "#000000",
    fontSize: 18,
  },
  quantityContainer: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 10,
  },
  quantityButton: {
    backgroundColor: "#2f486e",
    padding: 8,
    margin: 5,
    borderRadius: 5,
  },
  quantityButtonText: {
    color: "#2f486e",
    fontSize: 18,
  },
  quantityText: {
    fontSize: 18,
    fontWeight: "bold",
  },
});

export default ProductDetail;
