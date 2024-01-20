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
  const [isImageModalVisible, setImageModalVisible] = useState(false);
  const navigation = useNavigation();
  const [isChangeImageModalVisible, setChangeImageModalVisible] =
    useState(false);

  const handleOrderHistory = () => {
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
    // Các xử lý khi thay đổi ảnh đại diện
  };

  const username = userInfo?.user?.name ?? "Guest";

  const avatarUrl = userInfo?.user?.avatar
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
              uri: avatarUrl,
            }}
          />
        </TouchableOpacity>
        <Modal
          animationType="slide"
          transparent={false}
          visible={isImageModalVisible}
          onRequestClose={closeImageModal}
        >
          {/* Phần modal code */}
        </Modal>
        <Text style={styles.username}>Xin Chào! {username}</Text>
      </View>

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
