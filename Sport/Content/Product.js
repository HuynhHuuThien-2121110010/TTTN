import React, { useState, useEffect } from "react";
import axiosAPI from "../API/axiosAPI";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import {
  StyleSheet,
  Image,
  View,
  Text,
  FlatList,
  TouchableOpacity,
} from "react-native";
import Carousel from "react-native-snap-carousel";
import Toast from "react-native-toast-message";
import AsyncStorage from "@react-native-async-storage/async-storage";
import ApiUrl from "../API/ApiUrl";

const Product = () => {
  const [products, setProducts] = useState([]);
  const navigation = useNavigation();
  const [cart, setCart] = useState([]);
  const [visibleSpringItemCount, setVisibleSpringItemCount] = useState(5);

  useEffect(() => { 
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("products?populate=*");
        setProducts(result.data.data); // Update this line
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu:", error);
      }
    };

    fetchData();
  }, []);

  const handleProductPress = (product) => {
    // Chuyển đến trang chi tiết sản phẩm và truyền thông tin sản phẩm
    // Bạn cần import navigation từ thư viện bạn sử dụng (React Navigation chẳng hạn)
    // và đảm bảo rằng nó đã được cấu hình đúng trong ứng dụng của bạn.
    navigation.navigate("ProductDetail", {
      productImage: product.attributes.image.data,
      product,
    });
  };

  const addToCart = async (item) => {
    try {
      const existingCart = await AsyncStorage.getItem("cart");
      const existingCartArray = existingCart ? JSON.parse(existingCart) : [];

      const existingItemIndex = existingCartArray.findIndex(
        (cartItem) => cartItem.id === item.id
      );

      if (existingItemIndex !== -1) {
        existingCartArray[existingItemIndex].quantity += 1;
        existingCartArray[existingItemIndex].totalPrice =
          existingCartArray[existingItemIndex].quantity * item.price;
      } else {
        const newItem = { ...item, quantity: 1, totalPrice: item.price };
        existingCartArray.push(newItem);
      }

      await AsyncStorage.setItem("cart", JSON.stringify(existingCartArray));
      setCart(existingCartArray);

      // Hiển thị Toast
      Toast.show({
        type: "success",
        position: "top",
        text1: "Thông báo",
        text2: "Đã thêm sản phẩm vào giỏ hàng!",
        visibilityTime: 2000,
      });
    } catch (error) {
      console.error("Lỗi khi thêm sản phẩm vào giỏ hàng:", error);
    }
  };

  const handleShowMoreSpring = () => {
    setVisibleSpringItemCount(visibleSpringItemCount + 4);
  };

  const renderProductItem = ({ item }) => {
    const maxLength = 20;
    const truncatedTitle =
      item.attributes.productName.length > maxLength
        ? item.attributes.productName.substring(0, maxLength - 3) + "..."
        : item.attributes.productName;

    return (
      <TouchableOpacity onPress={() => handleProductPress(item)}>
        <View style={styles.productItem}>
          <Image
            source={{
              uri:
                ApiUrl.imageURL + item.attributes.image.data[0].attributes.url,
            }}
            style={styles.image}
          />

          <Text
            numberOfLines={2}
            ellipsizeMode="tail"
            style={styles.productName}
          >
            {truncatedTitle}
          </Text>
          <Text
            style={styles.productPrice}
          >{`${item.attributes.price} Đ`}</Text>
          <TouchableOpacity
            style={styles.addToCartButton}
            onPress={() => addToCart(item)} // Gọi hàm addToCart khi nhấn vào nút "Add to Cart"
          >
            <Text style={styles.addToCartButtonText}>Thêm vào giỏ</Text>
          </TouchableOpacity>
        </View>
      </TouchableOpacity>
    );
  };

  return (
    <View style={styles.container}>
      <View style={styles.containerheader}>
        <Text style={{ fontSize: 20, fontWeight: "bold", color: "red" }}>
          Sẩn phẩm
        </Text>
        <TouchableOpacity
          onPress={handleShowMoreSpring}
          style={styles.showMoreButton}
        >
          <Text style={styles.showMoreButtonText}>Xem thêm</Text>
        </TouchableOpacity>
      </View>
      <FlatList
        data={products.slice(0, visibleSpringItemCount)}
        renderItem={renderProductItem}
        keyExtractor={(item) => item.id.toString()}
        horizontal
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "column",
    marginTop: 5,
  },
  containerheader: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    padding: 10,
  },
  productItem: {
    margin: 10,
    borderColor: "black",
    borderWidth: 0.5,
    alignItems: "center",
  },
  showMoreButton: {
    alignItems: "flex-end",
  },
  showMoreButtonText: {
    marginTop: 7,
  },
  image: {
    width: 100,
    height: 100,
    resizeMode: "contain",
  },
  productName: {
    marginTop: 5,
    marginHorizontal: 2,
    fontSize: 14,
    textAlign: "center",
  },
  productPrice: {
    marginTop: 5,
    fontSize: 16,
    fontWeight: "bold",
  },
  addToCartButton: {
    backgroundColor: "#ee4e2e",
    padding: 10,
    marginVertical: 5,
    marginHorizontal:3,
  },
  addToCartButtonText: {
    color: "white",
    textAlign: "center",
  },
});

export default Product;
