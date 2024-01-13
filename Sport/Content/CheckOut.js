import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  Image,
  ScrollView,
} from "react-native";
import { useNavigation } from "@react-navigation/native";
import ApiUrl from "../API/ApiUrl";
import MapView, { Marker } from "react-native-maps";

const PaymentForm = ({ route }) => {
  const { productInfo, selectedProducts } = route.params;
  const [selectedPaymentMethod, setSelectedPaymentMethod] = useState("cash");
  const navigation = useNavigation();
  const [fullName, setFullName] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");
  const [address, setAddress] = useState("");
  const [totalAmount, setTotalAmount] = useState(0);

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

  useEffect(() => {
    let totalPrice = 0;

    if (productInfo) {
      totalPrice += productInfo.quantity * productInfo.price;
    }

    if (Array.isArray(selectedProducts)) {
      selectedProducts.forEach((item) => {
        totalPrice += item.quantity * item.attributes.price;
      });
    }

    setTotalAmount(totalPrice);
  }, [productInfo, selectedProducts]);

  const handleOrder = () => {
    alert(
      `Đặt hàng thành công! Phương thức thanh toán: ${selectedPaymentMethod}`
    );
  };

  return (
    <View style={styles.container}>
      <ScrollView style={styles.scrollView}>
        {/* Các thông tin sản phẩm */}
        <Text style={{ textAlign: "center" }}>Thông tin sản phẩm</Text>
        {productInfo && (
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
        )}

        {/* Danh sách sản phẩm đã chọn */}
        {Array.isArray(selectedProducts) &&
          selectedProducts.map((item, index) => (
            <View key={index} style={styles.cartItem}>
              <Image
                style={styles.productImage}
                resizeMode="contain"
                source={{
                  uri:
                    ApiUrl.imageURL +
                    item.attributes.image.data[0].attributes.url,
                }}
              />
              <View style={styles.productInfo}>
                <Text style={styles.productTitle}>
                  {limitString(item.attributes.productName, 30)}
                </Text>
                <View style={styles.quantityContainer}>
                  <Text style={styles.quantityText}>
                    Số lượng: {item.quantity}
                  </Text>
                </View>
                <Text style={styles.priceText}>
                  Thành tiền: {`đ ${formatPrice(item.attributes.price)}`}
                </Text>
              </View>
            </View>
          ))}

        {/* Các TextInput và các phần còn lại của mã JSX */}
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

        <Text style={styles.label}>Địa chỉ: {address}</Text>

        <Text style={styles.label}>
          Tổng giá: {`đ ${formatPrice(totalAmount)}`}
        </Text>
        <Text style={styles.label}>Mã giảm:</Text>
        <Text style={styles.label}>Phí vận chuyển:</Text>
        <Text style={styles.label}>Thành Tiền:</Text>
      </ScrollView>
      {/* Nút đặt hàng và quay lại */}
      <View style={styles.buy}>
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
  buy: {
    flexDirection: "row",
  },
  mapButton: {
    backgroundColor: "#be1e2d",
    padding: 15,
    borderRadius: 8,
    alignItems: "center",
    marginTop: 10,
  },
  buttonText: {
    color: "#fff",
    fontSize: 18,
    fontWeight: "bold",
  },
  map: {
    height: 200,
    borderRadius: 8,
    overflow: "hidden",
    marginTop: 10,
  },
  cartItem: {
    flexDirection: "row",
    justifyContent: "flex-start",
    alignItems: "center",
    backgroundColor: "#fff",
    padding: 10,
    borderRadius: 8,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
    marginTop: 10,
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
    marginRight: 5,
    flex: 1,
    borderRadius: 8,
    alignItems: "center",
  },
  backButton: {
    backgroundColor: "#ccc",
    padding: 15,
    flex: 1,
    marginLeft: 5,
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
