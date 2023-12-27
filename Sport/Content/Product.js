import React, { useState, useEffect } from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import {
  StyleSheet,
  Image,
  View,
  Text,
  Alert,
  FlatList,
  TouchableOpacity,
} from "react-native";
import Carousel from 'react-native-snap-carousel';
import Toast from "react-native-toast-message";
import AsyncStorage from "@react-native-async-storage/async-storage";
const Product = () => {
  const [products, setProducts] = useState([]);
  const navigation = useNavigation();
  const [cart, setCart] = useState([]);
  const [visibleSpringItemCount, setVisibleSpringItemCount] = useState(5);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch("https://fakestoreapi.com/products");
        const data = await response.json();
        setProducts(data);
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
    navigation.navigate("ProductDetail", { product });
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
      item.title.length > maxLength
        ? item.title.substring(0, maxLength - 3) + "..."
        : item.title;
    return (
      <TouchableOpacity onPress={() => handleProductPress(item)}>
        <View style={styles.productItem}>
          <Image source={{ uri: item.image }} style={styles.image} />
          <Text
            numberOfLines={2}
            ellipsizeMode="tail"
            style={styles.productName}
          >
            {truncatedTitle}
          </Text>
          <Text style={styles.productPrice}>{`$${item.price}`}</Text>
          <TouchableOpacity
            style={styles.addToCartButton}
            onPress={() => addToCart(item)} // Gọi hàm addToCart khi nhấn vào nút "Add to Cart"
          >
            <Text style={styles.addToCartButtonText}>Add to Cart</Text>
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
      <View>
        {visibleSpringItemCount < products.length && (
          <TouchableOpacity
            onPress={handleShowMoreSpring}
            style={styles.showMoreButton}
          ></TouchableOpacity>
        )}
        <FlatList
          data={products.slice(0, visibleSpringItemCount)}
          renderItem={renderProductItem}
          keyExtractor={(item) => item.id.toString()}
          horizontal
        />
      </View>
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
    flex: 1,
    flexDirection: "row",
    marginTop: 5,
  },
  category: {
    flex: 1,
  },
  productItem: {
    margin: 10,
    borderColor: "black",
    borderWidth: 0.5,
    alignItems: "center",
  },
  showMoreButton: {
    flex: 1,
    alignItems: "flex-end",
    alignContent: "center",
  },
  showMoreButtonText: {
    marginTop: 7,
  },
  image: {
    flex: 1,
    padding: 2,
    width: 100,
    height: 100,
    resizeMode: "contain",
  },
  //   flsale1: {
  //     flex: 1,
  //     width: 100,
  //     height: 50,
  //   },
  //   flsale2: {
  //     flex: 1,
  //     alignItems: "center",
  //     alignContent: "center",
  //   },
});

export default Product;
