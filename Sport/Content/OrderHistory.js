import React, { useState, useEffect } from "react";
import axiosAPI from "../API/axiosAPI";
import {
  View,
  TouchableOpacity,
  Text,
  FlatList,
  StyleSheet,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation, useRoute } from "@react-navigation/native";

const OrderHistory = () => {
  const navigation = useNavigation();
  const route = useRoute();
  const { userInfo } = route.params;
  const [isLoading, setIsLoading] = useState(true);
  const [orders, setOrders] = useState([]);
  const ids = userInfo.user.id;
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("orders?populate=*");
        const filteredOrders = result.data.data.filter((order) => {
          // Chuyển đổi user_id thành số để so sánh
          const orderUserId = Number(order.attributes.user_id);
          return orderUserId === ids;
        });
        setOrders(filteredOrders);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu:", error);
      } finally {
        setIsLoading(false); // Đánh dấu rằng dữ liệu đã được tải xong, không còn trong trạng thái loading
      }
    };

    fetchData();
  }, [ids]);

  console.log(userInfo);
  console.log(orders);
  const goBack = () => {
    // Xử lý khi người dùng nhấn nút "Quay về"
    navigation.goBack();
  };
  const handleOrderPress = (selectedOrder) => {
    // Navigating to the order details screen, passing the selected order information
    navigation.navigate("OrderDetails", { order: selectedOrder });
  };

  const formatPrice = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
  };
  const renderOrderItem = ({ item }) => {
    let statusText = "";

    switch (item.attributes.status) {
      case 0:
        statusText = "Chờ xác nhận";
        break;
      case 1:
        statusText = "Đang chuẩn bị";
        break;
      case 2:
        statusText = "Đang giao hàng";
        break;
      case 3:
        statusText = "Đã giao";
        break;
      case 4:
        statusText = "Đã hủy";
        break;
      default:
        statusText = "Trạng thái không xác định";
        break;
    }
    return (
      <TouchableOpacity onPress={() => handleOrderPress(item)}>
        <View style={styles.orderItem}>
          <Text
            style={styles.orderText}
          >{`Mã đơn hàng: ${item.attributes.code}`}</Text>
          <Text style={styles.orderText}>{`Tổng tiền: đ${formatPrice(
            item.attributes.total
          )}`}</Text>
          <Text style={styles.orderText}>{`Trạng thái: ${statusText}`}</Text>
          {/* Thêm các trường dữ liệu khác cần hiển thị */}
        </View>
      </TouchableOpacity>
    );
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.backButton} onPress={goBack}>
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      <Text style={styles.title}>Đơn hàng</Text>
      {/* Kiểm tra xem có đang trong trạng thái loading hay không */}
      {isLoading ? (
        <Text style={styles.orderText}>Đang tải đơn hàng...</Text>
      ) : // Kiểm tra xem có đơn hàng hay không để hiển thị FlatList hoặc thông báo
      orders.length > 0 ? (
        <FlatList
          data={orders}
          keyExtractor={(item) => item.id}
          renderItem={renderOrderItem}
        />
      ) : (
        <Text style={styles.title}>Chưa có đơn hàng!</Text>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: "#f0f0f0",
  },
  title: {
    textAlign: "center",
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 10,
  },
  orderItem: {
    backgroundColor: "white",
    padding: 10,
    borderRadius: 8,
    marginBottom: 10,
  },
  orderText: {
    fontSize: 16,
  },
  backButton: {
    position: "absolute",
    top: 17,
    left: 15,
    zIndex: 1,
  },
  buttonContainer: {
    flexDirection: "row",
    marginTop: 10,
  },
});

export default OrderHistory;
