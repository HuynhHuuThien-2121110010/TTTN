import React, { useEffect, useState } from "react";
import axiosAPI from "../API/axiosAPI";
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  Image,
  Button,
  ScrollView,
  Modal,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
// import ImagePicker from "react-native-image-crop-picker";
import { useNavigation } from "@react-navigation/native";
import { useAuth } from "./AuthContext";

const ProfileScreen = ({ userInfo }) => {
  const { logout } = useAuth();
  // const [users, setUsers] = useState([]);
  const [isImageModalVisible, setImageModalVisible] = useState(false);
  const navigation = useNavigation();
  const [isChangeImageModalVisible, setChangeImageModalVisible] =
    useState(false); // Thêm state mới
  //   const [userInfo, setUserInfo] = useState({
  //     username: "JohnDoe",
  //     email: "john.doe@example.com",
  //     phoneNumber: "+1234567890",
  //     address: "123 Main St, City, Country",
  //     orderHistory: [
  //       { id: "1", status: "Delivered", totalItems: 3, totalPrice: "$50.00" },
  //       { id: "2", status: "Processing", totalItems: 2, totalPrice: "$30.00" },
  //     ],
  //   });
  // useEffect(() => {
  //   const fetchData = async () => {
  //     try {
  //       const result = await axiosAPI.get("users?populate=*");
  //       setUsers(result.data); // Update this line
  //     } catch (error) {
  //       console.error("Lỗi khi lấy dữ liệu:", error);
  //     }
  //   };

  //   fetchData();
  // }, []);
  // console.log(users);
  // console.log(userInfo.user.id);
  // const filteredUsers = users.filter((user) => user.id === userInfo.user.id);

  // console.log(filteredUsers);
  const handleOrderHistory = () => {
    // Chuyển đến trang lịch sử mua hàng
    navigation.navigate("OrderHistory", { userInfo });
  };
  const openImageModal = () => {
    setImageModalVisible(true);
  };

  const closeImageModal = () => {
    setImageModalVisible(false);
  };
  const openChangeImageModal = () => {
    setChangeImageModalVisible(true);
  };

  const closeChangeImageModal = () => {
    setChangeImageModalVisible(false);
  };
  const handleEditAvatar = async () => {
    // try {
    //   const image = await ImagePicker.openPicker({
    //     width: 300,
    //     height: 400,
    //     cropping: true,
    //   });
    //   // Xử lý ảnh được chọn, ví dụ: lưu vào state, gửi lên máy chủ, ...
    //   console.log("Selected Image:", image);
    // } catch (error) {
    //   console.error("Error selecting image:", error);
    // }
  };
  const avatarUrl =
    userInfo.user && userInfo.user.avatar
      ? typeof userInfo.user.avatar === "string"
        ? userInfo.user.avatar
        : userInfo.user.avatar.url
      : "https://assets.stickpng.com/images/585e4bf3cb11b227491c339a.png";
  return (
    <ScrollView style={styles.container}>
      <View style={styles.profileHeader}>
        <TouchableOpacity onPress={openImageModal}>
          <Image
            style={styles.avatar}
            source={{
              uri: "https://assets.stickpng.com/images/585e4bf3cb11b227491c339a.png",
            }}
          />
        </TouchableOpacity>
        <Modal
          animationType="slide"
          transparent={false}
          visible={isImageModalVisible}
          onRequestClose={closeImageModal}
        >
          <View
            style={{ flex: 1, justifyContent: "center", alignItems: "center" }}
          >
            <Image
              style={{ width: "100%", height: "100%", resizeMode: "contain" }}
              source={{
                uri: "https://assets.stickpng.com/images/585e4bf3cb11b227491c339a.png",
              }}
            />
            <TouchableOpacity
              style={{ position: "absolute", top: 20, right: 20 }}
              onPress={closeImageModal}
            >
              <Text style={{ color: "black", fontSize: 18 }}>Đóng</Text>
            </TouchableOpacity>
            <TouchableOpacity
              style={{
                position: "absolute",
                bottom: 20,
                backgroundColor: "#2f486e",
                padding: 10,
                borderRadius: 5,
              }}
              onPress={() => handleEditAvatar()}
            >
              {userInfo && userInfo.user && (
                <Text style={{ color: "white" }}>Đổi ảnh</Text>
              )}
            </TouchableOpacity>
          </View>
        </Modal>
        <Text style={styles.username}>Xin Chào! {userInfo?.user?.name}</Text>
        {/* <Text style={styles.email}>{userInfo.user.email}</Text>
        <Text style={styles.phoneNumber}>(+84) {userInfo.user.phone}</Text>
        <Text style={styles.address}>{userInfo.address}</Text> */}
      </View>

      {/* <View style={styles.section}>
        <Text style={styles.sectionTitle}>Order History</Text>
        
          <TouchableOpacity key={order.id} style={styles.orderItem}>
            <Text>{`Order ID: ${order.id}`}</Text>
            <Text>{`Status: ${order.status}`}</Text>
            <Text>{`Items: ${order.totalItems}`}</Text>
            <Text>{`Total Price: ${order.totalPrice}`}</Text>
          </TouchableOpacity>
      </View> */}
      <TouchableOpacity style={styles.orderButton} onPress={handleOrderHistory}>
        <Text style={styles.orderButtonText}>Đơn mua</Text>
        <View style={styles.arrowIconContainer}>
          <Icon name="arrow-right" size={16} />
        </View>
      </TouchableOpacity>
      <TouchableOpacity style={styles.orderButton} onPress={handleOrderHistory}>
        <Text style={styles.orderButtonText}>Thông tin cá nhân</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.orderButton} onPress={handleOrderHistory}>
        <Text style={styles.orderButtonText}>Đổi mật khẩu</Text>
      </TouchableOpacity>
      <Button title="Đăng xuất" onPress={logout} />
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: "#f0f0f0",
  },
  orderButton: {
    borderWidth: 1,
    paddingVertical: 10,
    paddingHorizontal: 10,
    borderRadius: 5,
    marginTop: 20,
    flexDirection: "row",
    alignItems: "center", // Thêm dòng này để căn giữa theo chiều dọc
  },
  orderButtonText: {
    fontSize: 16,
    fontWeight: "bold",
    marginRight: 5,
  },
  arrowIconContainer: {
    marginLeft: "auto", // Thêm dòng này để đẩy biểu tượng về cuối phải
  },
  profileHeader: {
    alignItems: "center",
    marginVertical: 20,
  },
  avatar: {
    width: 150,
    height: 150,
    borderRadius: 75,
    marginBottom: 10,
  },
  username: {
    fontSize: 24,
    fontWeight: "bold",
  },
  email: {
    fontSize: 16,
    color: "gray",
  },
  phoneNumber: {
    fontSize: 16,
    color: "gray",
  },
  address: {
    fontSize: 16,
    color: "gray",
    textAlign: "center",
  },
  avatar: {
    width: 150,
    height: 150,
    borderRadius: 75,
    marginBottom: 10,
    position: "relative", // Thêm thuộc tính position: "relative"
  },
  editButton: {
    position: "absolute",
    bottom: 0,
    right: 0,
    borderWidth: 3,
    padding: 10,
    borderRadius: 20,
    alignItems: "center",
    justifyContent: "center",
    zIndex: 1, // Đặt giá trị zIndex lớn hơn giá trị zIndex của tấm hình ảnh
  },
  section: {
    marginTop: 20,
  },
  sectionTitle: {
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
});

export default ProfileScreen;
