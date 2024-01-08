import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Image,
} from "react-native";

import { useNavigation } from "@react-navigation/native";
import ApiUrl from "../API/ApiUrl";

const PaymentForm = () => {
  const route = useRoute();
  const { productInfo } = route.params;
  const [selectedPaymentMethod, setSelectedPaymentMethod] = useState("cash"); // Giả sử "cash" là phương thức thanh toán mặc định
  const navigation = useNavigation();
  const [fullName, setFullName] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");
  const [address, setAddress] = useState("");
  const [region, setRegion] = useState({
    latitude: 37.78825, // Địa điểm mặc định
    longitude: -122.4324,
    latitudeDelta: 0.0922,
    longitudeDelta: 0.0421,
  });

  const formatPrice = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
  };
  const limitString = (str, maxLength) => {
    if (str.length <= maxLength) {
      return str;
    } else {
      return str.substring(0, maxLength) + "...";
    }
  };

  const handleOrder = () => {
    // Xử lý đặt hàng ở đây
    // Ví dụ: Kiểm tra thông tin và thực hiện đặt hàng
    alert(
      `Đặt hàng thành công! Phương thức thanh toán: ${selectedPaymentMethod}`
    );
  };
  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text>Thông tin sản phẩm</Text>
        <View style={styles.cartItem}>
          <Image
            style={styles.productImage}
            resizeMode="contain"
            source={{
              uri: ApiUrl.imageURL + productInfo.image,
            }}
          />
          <View style={styles.productInfo}>
            <Text style={styles.productTitle}>
              {limitString(productInfo.productName, 30)}
            </Text>
            <View style={styles.quantityContainer}>
              <Text style={styles.quantityText}>
                Số lượng: {productInfo.quantity}
              </Text>
            </View>
            <Text style={styles.priceText}>
              Thành tiền: {`đ ${formatPrice(productInfo.price)}`}
            </Text>
          </View>
        </View>
        <Text style={styles.label}>Họ và tên người nhận: </Text>
        <TextInput
          style={styles.input}
          placeholder="Nhập họ và tên"
          value={fullName}
          onChangeText={(text) => setFullName(text)}
        />

        <Text style={styles.label}>Số điện thoại:</Text>
        <TextInput
          style={styles.input}
          placeholder="Nhập số điện thoại"
          keyboardType="numeric"
          value={phoneNumber}
          onChangeText={(text) => setPhoneNumber(text)}
        />

        <Text style={styles.label}>Địa chỉ: </Text>
        <TextInput
          style={styles.input}
          placeholder="Nhập địa chỉ"
          value={address}
          onChangeText={(text) => setAddress(text)}
        />

        <TouchableOpacity style={styles.button} onPress={handleOrder}>
          <Text style={styles.buttonText}>Đặt hàng</Text>
        </TouchableOpacity>

        <TouchableOpacity
          style={styles.backButton}
          onPress={() => navigation.goBack()}
        >
          <Text style={styles.backButtonText}>Quay Lại</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 15,
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
  label: {
    fontSize: 16,
    marginBottom: 8,
  },
  input: {
    height: 40,
    borderColor: "gray",
    borderWidth: 1,
    borderRadius: 8,
    marginBottom: 16,
    paddingHorizontal: 10,
  },
  button: {
    backgroundColor: "#be1e2d",
    padding: 15,
    borderRadius: 8,
    alignItems: "center",
  },
  buttonText: {
    color: "#fff",
    fontSize: 18,
    fontWeight: "bold",
  },
  backButton: {
    backgroundColor: "#ccc",
    padding: 15,
    marginTop: 5,
    borderRadius: 8,
    alignItems: "center",
  },
  backButtonText: {
    color: "#000",
    fontSize: 18,
    fontWeight: "bold",
  },
});

export default PaymentForm;
