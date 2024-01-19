import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  FlatList,
  Image,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import axiosAPI from "../API/axiosAPI";
import { useNavigation } from "@react-navigation/native";
import ApiUrl from "../API/ApiUrl";

const OrderDetailsScreen = ({ route }) => {
  const { order } = route.params;
  const navigation = useNavigation();
  const [products, setProducts] = useState([]);
  const [orderdetails, setOrderdetails] = useState([]);

  // ... (existing code)

  // ... (existing code)

  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("orderdetails?populate=*");
        const allOrderDetails = result.data.data;

        // Convert order.id to string for comparison
        const orderDetailsForOrder = allOrderDetails.filter(
          (detail) => detail.attributes.order_id === order.id.toString()
        );

        setOrderdetails(orderDetailsForOrder);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu chi tiết đơn hàng:", error);
      }
    };

    fetchData();
  }, [order.id]);
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("products?populate=*");
        const allProducts = result.data.data;

        // Filter products based on orderdetails
        const productsForOrderDetails = allProducts.filter((product) =>
          orderdetails.some(
            (detail) => detail.attributes.product_id === product.id
          )
        );

        setProducts(productsForOrderDetails);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu sản phẩm:", error);
      }
    };

    fetchData();
  }, [orderdetails]);
  // Add order.id as a dependency

  // ... (existing code)
  // Add order.id as a dependency

  // ... (existing code)

  //   console.log("order", order.id);
  //   console.log("orderdetails", orderdetails);
  console.log("products", products);
  const goBack = () => {
    // Xử lý khi người dùng nhấn nút "Quay về"
    navigation.goBack();
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.backButton} onPress={goBack}>
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      <Text style={styles.title}>Thông Tin Đơn hàng</Text>
      <Text>{`Mã đơn hàng: ${order.id}`}</Text>
      <Text>{`Ngày đặt hàng: ${order.attributes.created_at}`}</Text>
      <Text>{`Trạng thái: ${order.attributes.status}`}</Text>

      <Text style={styles.subtitle}>Sản phẩm trong đơn hàng:</Text>
      <FlatList
        data={products}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={styles.productItem}>
            <Image
              style={styles.productImage}
              source={{
                uri:
                  ApiUrl.imageURL +
                  item.attributes.image.data[0].attributes.url,
              }}
            />
            <Text>{`Sản phẩm: ${item.attributes.productName}`}</Text>
            <Text>{`Số lượng: ${item.attributes.quantity}`}</Text>
          </View>
        )}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: "#f0f0f0",
  },
  productImage: {
    width: 100, // Set the width as per your design
    height: 100, // Set the height as per your design
    resizeMode: "cover", // Adjust the resizeMode as needed
    marginBottom: 5,
  },
  title: {
    textAlign: "center",
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 10,
  },
  subtitle: {
    fontSize: 18,
    fontWeight: "bold",
    marginTop: 10,
    marginBottom: 5,
  },
  backButton: {
    position: "absolute",
    top: 17,
    left: 15,
    zIndex: 1,
  },
  productItem: {
    backgroundColor: "white",
    padding: 10,
    borderRadius: 8,
    marginBottom: 10,
  },
});

export default OrderDetailsScreen;
