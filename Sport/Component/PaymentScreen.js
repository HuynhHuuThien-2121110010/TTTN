// PaymentScreen.js
import React from "react";
import { View, Text, TouchableOpacity } from "react-native";

const PaymentScreen = ({ navigation, route }) => {
  // Trích xuất dữ liệu cần thiết từ route.params
  const { total, productInfo } = route.params;

  const handlePayment = () => {
    // Thực hiện logic thanh toán của bạn ở đây
    console.log("Đang xử lý thanh toán cho:", productInfo);
    // Chuyển hướng đến màn hình thành công hoặc thực hiện các hành động khác
    navigation.navigate("PaymentSuccess");
  };

  return (
    <View>
      <Text>{`Tổng: $${total}`}</Text>
      {/* Hiển thị các phần khác của giao diện thanh toán */}
      <TouchableOpacity onPress={handlePayment}>
        <Text>Chuyển đến thanh toán</Text>
      </TouchableOpacity>
    </View>
  );
};

export default PaymentScreen;
