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
import { format } from "date-fns";

const OrderDetailsScreen = ({ route }) => {
  const { order } = route.params;
  const [loading, setLoading] = useState(true);
  const navigation = useNavigation();
  const [mergedData, setMergedData] = useState([]);
  const [products, setProducts] = useState([]);
  const [orderdetails, setOrderdetails] = useState([]);

  // // ... (existing code)

  // // ... (existing code)
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("orderdetails?populate=*");
        const allOrderDetails = result.data.data;

        console.log("All Order Details:", order.id);
        const orderIdString = order.id.toString();
        // Lọc những chi tiết đơn hàng có order_id === order.id
        const filteredOrderDetails = allOrderDetails.filter(
          (detail) => detail.attributes.order_id === orderIdString
        );

        setOrderdetails(filteredOrderDetails);
        console.log(filteredOrderDetails);
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

        // Gộp orderdetails với products
        const mergedData = orderdetails.map((detail) => {
          const product = allProducts.find(
            (p) => p.id === detail.attributes.product_id
          );

          // Kiểm tra orderDetail và product trước khi gộp
          if (product && detail) {
            // Chắc chắn rằng có trường qty trong orderDetail
            const qty = detail.attributes.qty || 0;

            return {
              orderDetail: detail,
              product: { ...product, qty }, // Thêm qty vào product
            };
          } else {
            return null; // Nếu một trong số chúng là undefined hoặc null, trả về null
          }
        });

        // Lọc bỏ những phần tử null
        const filteredMergedData = mergedData.filter((data) => data !== null);

        setMergedData(filteredMergedData);

        // Lấy thông tin của những sản phẩm có id trùng với product_id
        const selectedProducts = filteredMergedData.map((data) => data.product);
        setProducts(selectedProducts);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu sản phẩm:", error);
      } finally {
        setLoading(false); // Đặt trạng thái loading thành false sau khi hoàn tất việc lấy dữ liệu
      }
    };

    fetchData();
  }, [orderdetails]);
  const getStatusText = (status) => {
    switch (status) {
      case 0:
        return "Chờ xác nhận";
      case 1:
        return "Đang chuẩn bị";
      case 2:
        return "Đang vận chuyển";
      case 3:
        return "Đã giao";
      case 4:
        return "Đã hủy";
      default:
        return "Unknown";
    }
  };

  const formatPrice = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
  };
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
      <Text style={styles.text}>{`Mã đơn hàng: ${order.attributes.code}`}</Text>
      <Text style={styles.text}>{`Ngày đặt hàng: ${format(
        new Date(order.attributes.createdAt),
        "dd/MM/yyyy HH:mm:ss"
      )}`}</Text>
      <Text style={styles.text}>{`Phí vận chuyển: đ${formatPrice(
        order.attributes.ship
      )}`}</Text>
      <Text style={styles.text}>{`Trạng thái: ${getStatusText(
        order.attributes.status
      )}`}</Text>
      <Text style={styles.subtitle}>Sản phẩm trong đơn hàng:</Text>
      <FlatList
        data={products}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={styles.productItem}>
            <View style={styles.productInfoContainer}>
              <Image
                style={styles.productImage}
                source={{
                  uri:
                    ApiUrl.imageURL +
                    item.attributes.image.data[0].attributes.url,
                }}
              />
              <View style={styles.productTextContainer}>
                <Text>{`Sản phẩm: ${item.attributes.productName}`}</Text>
                <Text>{`Giá: đ${formatPrice(item.attributes.price)}`}</Text>
                <Text>{`Số lượng: ${item.qty}`}</Text>
                <Text>{`Tổng giá: đ${formatPrice(
                  item.attributes.price * item.qty
                )}`}</Text>
              </View>
            </View>
          </View>
        )}
      />
      <Text style={styles.title1}>{`Thành tiền: đ${formatPrice(
        order.attributes.total
      )}`}</Text>
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
  productInfoContainer: {
    flexDirection: "row",
  },

  productTextContainer: {
    marginLeft: 10, // Khoảng cách giữa hình ảnh và văn bản
    flex: 1, // Để số lượng chiếm phần còn lại của dòng
  },
  title: {
    textAlign: "center",
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 10,
  },
  title1: {
    marginTop: 5,
    textAlign: "right",
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 10,
  },
  text: {
    fontSize: 15,
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
