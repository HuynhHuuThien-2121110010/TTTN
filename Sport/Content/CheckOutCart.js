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
import Toast from "react-native-toast-message";
import { useAuth } from "./AuthContext";
import { Picker } from "@react-native-picker/picker";
import { Linking } from "react-native";
import axiosAPI from "../API/axiosAPI";
const PaymentForm = ({ route }) => {
  const { productInfo } = route.params;
  const [selectedPaymentMethod, setSelectedPaymentMethod] = useState("cash");
  // Thêm các phương thức thanh toán khác nếu cần
  const [discountCode, setDiscountCode] = useState("");
  const [discountedAmount, setDiscountedAmount] = useState(0);
  const [shippingFee, setShippingFee] = useState(20000);
  const navigation = useNavigation();
  const [fullName, setFullName] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");
  const [address, setAddress] = useState("");
  const [totalAmount, setTotalAmount] = useState(0);
  const { userInfo } = useAuth();
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
  //-------------------Gửi Email -------------------
  const handleOrder = async () => {
    if (!fullName || !phoneNumber || !address) {
      Toast.show({
        type: "error",
        position: "top",
        text1: "Thông báo",
        text2: "Nhập đầy đủ thông tin",
        visibilityTime: 2000,
      });
    } else {
      const phoneRegex = /^0[0-9+\s()]*$/;

      if (!phoneRegex.test(phoneNumber)) {
        alert("Số điện thoại không hợp lệ. Vui lòng nhập 10 chữ số!");
        return;
      } else {
        if (selectedPaymentMethod === "cash") {
          const response = await axiosAPI.post("orders", {
            data: {
              code: Math.floor(Math.random() * 10000),
              user_id: userInfo.user.id,
              deliveryaddress: address,
              deliveryname: fullName,
              total: total,
              ship: shippingFee,
              deliveryphone: phoneNumber,
              deliveryemail: userInfo.user.email,
              status: 0,
              orderdetails: [],
            },
          });
          console.log("Dữ liệu 1:", response.data.data.id);
          const orderId = response.data.data.id;
          console.log("Dữ liệu 2:", productInfo);
          const orderDetailsResponse1 = await axiosAPI.post("orderdetails", {
            data: {
              order_id: orderId,
              product_id: productInfo.id,
              qty: productInfo.quantity,
              price: productInfo.price,
              amount: productInfo.price * productInfo.quantity,
              products: [],
            },
          });
          const id = orderDetailsResponse1.data.data.id;
          const updateMainOrderResponse = await axiosAPI.put(
            `orders/${orderId}`,
            {
              data: {
                orderdetails: id,
              },
            }
          );
          // Kiểm tra kết quả từ API và xử lý tương ứng
          if (response.status === 200) {
            // sendOrderConfirmationEmail(userInfo.user.email);
            navigation.navigate("Home");
            Toast.show({
              type: "success",
              position: "top",
              text1: "Đặt hàng thành công",
              text2: `Mã đơn hàng: ${response.data.data.attributes.code}`,
              visibilityTime: 2000,
            });
          } else {
            Toast.show({
              type: "error",
              position: "top",
              text1: "Đặt hàng thất bại",
              text2: "Có lỗi xảy ra. Vui lòng thử lại sau.",
              visibilityTime: 2000,
            });
          }
        } else {
          if (selectedPaymentMethod === "momo") {
            const momoUrl = "momo://payment?..."; // Thêm tham số cần thiết

            // Mở ứng dụng Momo nếu đã cài đặt, ngược lại mở trình duyệt
            Linking.canOpenURL(momoUrl).then((supported) => {
              if (supported) {
                Linking.openURL(momoUrl);
              } else {
                // Nếu không hỗ trợ, có thể mở trình duyệt để thanh toán qua trình duyệt
                Linking.openURL("https://momo.vn");
              }
            });
          } else {
            alert(
              `Đặt hàng thành công! Phương thức thanh toán: chuyển khoản. Thành tiền: ${discountedTotalAmount} đ`
            );
          }
        }
      }
    }
  };

  const productTotal = productInfo.price * productInfo.quantity;
  const discountAmount = parseInt(discountCode) || 0; // Nếu discountCode không phải số, sẽ sử dụng giá trị mặc định là 0
  const total = productTotal + discountAmount + shippingFee;

  return (
    <View style={styles.container}>
      <ScrollView style={styles.scrollView}>
        {/* Các thông tin sản phẩm */}
        <Text style={{ textAlign: "center" }}>Thông tin sản phẩm</Text>
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
              Giá: {`đ${formatPrice(productInfo.price)}`}
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
        <Text style={styles.label}>Địa chỉ:</Text>
        <TextInput
          style={styles.input}
          placeholder="Nhập địa chỉ"
          value={address}
          onChangeText={(text) => setAddress(text)}
        />
        {/* <Text style={styles.label}>Mã giảm giá:</Text>
        <TextInput
          style={styles.input}
          placeholder="Nhập mã giảm giá"
          value={discountCode}
          onChangeText={(text) => setDiscountCode(text)}
        /> */}
        <Text style={styles.label}>
          Tổng giá: {`đ ${formatPrice(productTotal)}`}
        </Text>

        {/* <Text style={styles.label}>
          Mã giảm:{`đ ${formatPrice(discountCode)}`}
        </Text> */}
        <Text style={styles.label}>
          Phí vận chuyển: {`đ ${formatPrice(shippingFee)}`}
        </Text>
        <Text style={styles.label}>
          Thành Tiền: {`đ ${formatPrice(total)}`}
        </Text>
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
    marginTop: 8,
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
