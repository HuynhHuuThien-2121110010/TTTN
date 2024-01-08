// CartModal.js

import React, { useState } from "react";

import Toast from "react-native-toast-message";
import { View, Text, Image, StyleSheet, TouchableOpacity } from "react-native";
import Modal from "react-native-modal";
import Icon from "react-native-vector-icons/FontAwesome";
import AsyncStorage from "@react-native-async-storage/async-storage";
import ApiUrl from "../API/ApiUrl";

const CartModal = ({ isVisible, closeModal, product, setCart }) => {
  const [quantity, setQuantity] = useState(1);
  const increaseQuantity = () => {
    setQuantity(quantity + 1);
  };

  const decreaseQuantity = () => {
    if (quantity > 1) {
      setQuantity(quantity - 1);
    }
  };

  const addToCart = async (item, quantity) => {
    try {
      const existingCart = await AsyncStorage.getItem("cart");
      const existingCartArray = existingCart ? JSON.parse(existingCart) : [];

      const existingItemIndex = existingCartArray.findIndex(
        (cartItem) => cartItem.id === item.id
      );

      if (existingItemIndex !== -1) {
        existingCartArray[existingItemIndex].quantity += quantity;
        existingCartArray[existingItemIndex].totalPrice =
          existingCartArray[existingItemIndex].quantity * item.price;
      } else {
        const newItem = {
          ...item,
          quantity,
          totalPrice: item.price * quantity,
        };
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

  const handleAddToCart = () => {
    addToCart(product, quantity);
    closeModal();
  };

  return (
    <Modal isVisible={isVisible} style={styles.modal}>
      <View style={styles.modalContent}>
        <TouchableOpacity style={styles.closeButton} onPress={closeModal}>
          <Icon name="times" size={20} color="black" />
        </TouchableOpacity>
        <Image
          source={{
            uri:
              ApiUrl.imageURL + product.attributes.image.data[0].attributes.url,
          }}
          style={styles.productImage}
        />
        <Text>{product.attributes.productName}</Text>

        {/* Số lượng có thể tăng giảm */}
        <View style={styles.quantityContainer}>
          <Text>Số lượng: </Text>
          <TouchableOpacity
            onPress={decreaseQuantity}
            style={styles.quantityButton}
          >
            <Icon name="minus" size={10} color="white" />
          </TouchableOpacity>
          <Text>{quantity}</Text>
          <TouchableOpacity
            onPress={increaseQuantity}
            style={styles.quantityButton}
          >
            <Icon name="plus" size={10} color="white" />
          </TouchableOpacity>
        </View>

        {/* Nút thêm vào giỏ hàng */}
        <TouchableOpacity
          style={styles.addToCartButton}
          onPress={handleAddToCart}
        >
          <Text style={{ color: "white" }}>Thêm vào giỏ hàng</Text>
        </TouchableOpacity>
      </View>
    </Modal>
  );
};
const styles = StyleSheet.create({
  modal: {
    flex: 1,
    margin: 0,
    justifyContent: "flex-end",
  },
  closeButton: {
    position: "absolute",
    top: 10,
    right: 10,
  },

  modalContent: {
    backgroundColor: "white",
    padding: 22,
    justifyContent: "center",
    alignItems: "center",
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
  },
  productImage: {
    width: 100,
    height: 100,
    marginBottom: 10,
  },
  quantityContainer: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 10,
  },
  quantityButton: {
    backgroundColor: "#ee4e2e",
    padding: 8,
    margin: 5,
    borderRadius: 5,
  },
  addToCartButton: {
    backgroundColor: "#ee4e2e",
    padding: 10,
    borderRadius: 5,
    marginTop: 10,
  },
});
export default CartModal;
