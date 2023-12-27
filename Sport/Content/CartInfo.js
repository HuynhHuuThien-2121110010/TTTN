import React, { useEffect, useState } from "react";
import FooterContent from "./FooterContent";
import HeaderCart from "../Component/HeaderCart";
import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Image,
  FlatList,
  TouchableOpacity,
} from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import { CheckBox } from "react-native-elements";

const MyComponent = () => {
  const [cart, setCart] = useState([]);
  const [selectedProducts, setSelectedProducts] = useState([]);
  const navigation = useNavigation();

  const [cartItemCount, setCartItemCount] = useState(0);
  const [, forceUpdate] = useState();

  useEffect(() => {
    const fetchCart = async () => {
      try {
        const storedCart = await AsyncStorage.getItem("cart");
        const parsedCart = storedCart ? JSON.parse(storedCart) : [];
        setCart(parsedCart);
        setCartItemCount(parsedCart.length);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu giỏ hàng:", error);
      }
    };

    fetchCart();
  }, []);

  const calculateTotalAmount = (selectedProducts) => {
    const selectedCart = cart.filter((item) =>
      selectedProducts.includes(item.id)
    );
    const totalAmount = Math.round(
      selectedCart.reduce((total, item) => total + (item.totalPrice || 0), 0)
    );
    setCartItemCount(totalAmount);
  };

  const handleCheckout = () => {
    // Xử lý thanh toán ở đây
    // Ví dụ: Chuyển đến màn hình thanh toán
    navigation.navigate("CheckOut");
  };
  const toggleSelectProduct = (productId) => {
    const updatedSelectedProducts = selectedProducts.includes(productId)
      ? selectedProducts.filter((id) => id !== productId)
      : [...selectedProducts, productId];

    setSelectedProducts(updatedSelectedProducts);

    // Tính toán lại thành tiền khi có sự thay đổi ở chọn sản phẩm
    calculateTotalAmount(updatedSelectedProducts);
  };
  const handleRemoveItem = (item) => {
    const updatedCart = cart.filter((cartItem) => cartItem.id !== item.id);
    setCart(updatedCart);
    saveCartToAsyncStorage(updatedCart);
  };
  const handleIncreaseQuantity = (item) => {
    const updatedCart = cart.map((cartItem) => {
      if (cartItem.id === item.id) {
        const newQuantity = (cartItem.quantity || 1) + 1;
        const newTotalPrice = newQuantity * item.price;
        return {
          ...cartItem,
          quantity: newQuantity,
          totalPrice: newTotalPrice,
        };
      }
      return cartItem;
    });
    setCart(updatedCart);
    saveCartToAsyncStorage(updatedCart);
  };

  const handleDecreaseQuantity = (item) => {
    const updatedCart = cart.map((cartItem) => {
      if (cartItem.id === item.id && cartItem.quantity > 1) {
        const newQuantity = cartItem.quantity - 1;
        const newTotalPrice = newQuantity * item.price;
        return {
          ...cartItem,
          quantity: newQuantity,
          totalPrice: newTotalPrice,
        };
      }
      return cartItem;
    });
    setCart(updatedCart);
    saveCartToAsyncStorage(updatedCart);
  };

  const saveCartToAsyncStorage = async (updatedCart) => {
    try {
      await AsyncStorage.setItem("cart", JSON.stringify(updatedCart));
      const itemCount = updatedCart.reduce(
        (total, item) => total + item.quantity,
        0
      );
      setCartItemCount(itemCount);
    } catch (error) {
      console.error("Lỗi khi lưu giỏ hàng vào AsyncStorage:", error);
    }
  };

  const renderCartItem = ({ item }) => (
    <View style={styles.cartItem}>
      <CheckBox
        checked={selectedProducts.includes(item.id)}
        onPress={() => toggleSelectProduct(item.id)}
      />
      <Image style={styles.productImage} resizeMode="contain" source={{ uri: item.image }} />
      <View style={styles.productInfo}>
        <Text style={styles.productTitle}>{item.title}</Text>
        <Text style={styles.productPrice}>${item.price}</Text>
        <View style={styles.quantityContainer}>
          <TouchableOpacity
            onPress={() => handleDecreaseQuantity(item)}
            style={styles.quantityButton}
          >
            <Text style={styles.quantityButtonText}>-</Text>
          </TouchableOpacity>
          <Text style={styles.quantityText}>{item.quantity || 1}</Text>
          <TouchableOpacity
            onPress={() => handleIncreaseQuantity(item)}
            style={styles.quantityButton}
          >
            <Text style={styles.quantityButtonText}>+</Text>
          </TouchableOpacity>
        </View>

        <Text style={styles.totalPrice}>Tổng giá: {item.totalPrice}$</Text>
      </View>
      <TouchableOpacity
        onPress={() => handleRemoveItem(item)}
        style={styles.removeButton}
      >
        <Text style={styles.removeButtonText}>Xóa</Text>
      </TouchableOpacity>
    </View>
  );

  // const totalAmount = cart.reduce(
  //   (total, item) => total + (item.totalPrice || 0),
  //   0
  // ); không làm tròn
  const selectedCart = cart.filter((item) =>
    selectedProducts.includes(item.id)
  );
  const totalAmount = Math.round(
    selectedCart.reduce((total, item) => total + (item.totalPrice || 0), 0)
  ); // làm tròn

  return (
    <View style={styles.container}>
      <ScrollView
        style={styles.scrollView}
        contentContainerStyle={styles.scrollContent}
      >
        <View style={styles.header}>
          <HeaderCart itemCount={cartItemCount} />
        </View>
        {cart.length === 0 ? (
          <Text style={styles.emptyCartText}>
            Không có sản phẩm trong giỏ hàng!
          </Text>
        ) : (
          <FlatList
            contentContainerStyle={styles.flatListContent}
            data={cart}
            keyExtractor={(item) => item.id.toString()}
            renderItem={renderCartItem}
          />
        )}
      </ScrollView>
      {cart.length > 0 && (
        <View style={styles.totalContainer}>
          <Text style={styles.totalText}>Thành Tiền:</Text>
          <Text style={styles.totalAmount}>${totalAmount}</Text>
        </View>
      )}
      {cart.length > 0 && (
        <View style={styles.checkoutButtonContainer}>
          <TouchableOpacity
            style={styles.checkoutButton}
            onPress={handleCheckout}
          >
            <Text style={styles.checkoutButtonText}>Thanh Toán</Text>
          </TouchableOpacity>
        </View>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 15,
  },
  checkoutButtonContainer: {
    alignItems: "flex-end",
    marginTop: 20,
  },
  removeButton: {
    backgroundColor: "red",
    padding: 8,
    borderRadius: 4,
    marginLeft: 8,
    marginRight: 5,
  },
  removeButtonText: {
    color: "white",
    fontSize: 16,
  },
  emptyCartText: {
    fontSize: 18,
    textAlign: "center",
    marginTop: 20,
  },
  checkoutButton: {
    backgroundColor: "#007BFF",
    padding: 15,
    borderRadius: 8,
    width: 150, // Đặt chiều rộng của nút thanh toán
    alignItems: "center",
  },
  quantityContainer: {
    flexDirection: "row",
    alignItems: "center",
  },

  quantityButton: {
    padding: 8,
    borderRadius: 4,
    marginRight: 8,
  },

  quantityButtonText: {
    fontSize: 16,
  },

  quantityText: {
    fontSize: 16,
  },

  checkoutButtonText: {
    color: "#fff",
    fontSize: 18,
    fontWeight: "bold",
  },
  cartItem: {
    flexDirection: "row",
    justifyContent: "flex-start",
    alignItems: "center",
    backgroundColor: "#fff", // Thêm màu nền để phân biệt các sản phẩm
    padding: 10,
    borderRadius: 8,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
    marginTop: 10, // Thay đổi giá trị này nếu cần
    marginLeft: 2,
    marginRight: 2,
  },
  productImage: {
    width: 80,
    height: 100,
    marginRight: 10,
  },
  productInfo: {
    flex: 1,
  },
  productTitle: {
    fontSize: 16,
    fontWeight: "bold",
  },
  productPrice: {
    fontSize: 18,
    color: "#007BFF",
  },
  totalContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginTop: 16,
    borderTopWidth: 1,
    paddingTop: 8,
  },
  totalText: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#333",
  },
  totalAmount: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#007BFF",
  },
  totalPrice: {
    fontSize: 16,
    color: "#555",
  },

  image: {
    width: 200,
    height: 250,
  },
  flatListContent: {
    paddingBottom: 20, // Điều chỉnh giá trị này nếu cần
  },
});

export default MyComponent;
