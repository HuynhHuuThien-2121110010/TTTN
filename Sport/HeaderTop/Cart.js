import React, { useState, useEffect } from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import { StyleSheet, Text, TouchableOpacity, View } from "react-native";

const MyCart = () => {
  const navigation = useNavigation();
  const [cartCount, setCartCount] = useState(0); // Thêm state để theo dõi số lượng sản phẩm trong giỏ hàng

  useEffect(() => {
    // Cập nhật biểu tượng giỏ hàng mỗi khi giỏ hàng thay đổi
    // Trong trường hợp thực tế, bạn có thể lưu giữ giỏ hàng trong AsyncStorage hoặc Redux để giữ trạng thái khi ứng dụng khởi động lại.
  }, [cartCount]);

  return (
    <View style={styles.cart}>
      <View style={styles.iconContainer}>
        <TouchableOpacity
          style={styles.column}
          onPress={() => {
            navigation.navigate("Cart");
          }}
        >
          <Icon name="shopping-cart" size={25} color="#000000" />
        </TouchableOpacity>
        {cartCount > 0 && ( // Hiển thị số lượng sản phẩm nếu giỏ hàng không rỗng
          <View style={styles.cartCountContainer}>
            <Text style={styles.cartCountText}>{cartCount}</Text>
          </View>
        )}
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  cart: {
    flex: 0.5,
    height: 30,
    marginTop: 15,
  },
  iconContainer: {
    position: "absolute",
    top: "50%",
    left: "50%",
    transform: [{ translateX: -15 }, { translateY: -15 }],
  },
  cartCountContainer: {
    position: "absolute",
    top: 0,
    right: 0,
    backgroundColor: "red",
    borderRadius: 10,
    paddingVertical: 3,
    paddingHorizontal: 8,
  },
  cartCountText: {
    color: "white",
    fontSize: 12,
    fontWeight: "bold",
  },
});

export default MyCart;
