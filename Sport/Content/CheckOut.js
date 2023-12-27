import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
} from "react-native";
import HeaderCart from "../Component/HeaderCart";
import { useNavigation } from "@react-navigation/native";

const PaymentForm = () => {
  const [cardNumber, setCardNumber] = useState("");
  const [expiryDate, setExpiryDate] = useState("");
  const [cvv, setCVV] = useState("");
  const navigation = useNavigation();
  const [fullName, setFullName] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");
  const [address, setAddress] = useState("");

  const handleOrder = () => {
    // Xử lý đặt hàng ở đây
    // Ví dụ: Kiểm tra thông tin và thực hiện đặt hàng
    alert("Đặt hàng thành công!");
  };

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={styles.label}>Họ và tên</Text>
        <TextInput
          style={styles.input}
          placeholder="Nhập họ và tên"
          value={fullName}
          onChangeText={(text) => setFullName(text)}
        />

        <Text style={styles.label}>Số điện thoại</Text>
        <TextInput
          style={styles.input}
          placeholder="Nhập số điện thoại"
          keyboardType="numeric"
          value={phoneNumber}
          onChangeText={(text) => setPhoneNumber(text)}
        />

        <Text style={styles.label}>Địa chỉ</Text>
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
