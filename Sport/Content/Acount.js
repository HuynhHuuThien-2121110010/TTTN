import React, { useState } from "react";
import FooterContent from "../Content/FooterContent";
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  TextInput,
  Modal,
  Button,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";

const MyComponent = () => {
  const navigation = useNavigation();
  const [isUserLoggedIn, setIsUserLoggedIn] = useState(false);
  const [showLoginModal, setShowLoginModal] = useState(false);
  const [showRegisterModal, setShowRegisterModal] = useState(false);
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  // Hàm xử lý khi người dùng nhấn vào link đăng nhập
  const handleLogin = () => {
    // Thực hiện các bước đăng nhập
    // Nếu đăng nhập thành công, cập nhật trạng thái đăng nhập và ẩn Modal
    setIsUserLoggedIn(true);
    setShowLoginModal(false);
    // Điều hướng đến trang cần đến sau khi đăng nhập
    navigation.navigate("Home");
  };

  // Hàm xử lý khi người dùng nhấn vào thông tin tài khoản
  const handleProfile = () => {
    // Điều hướng đến trang thông tin tài khoản
    navigation.navigate("Profile");
  };
  const handleNavigateToLogin = () => {
    // Điều hướng đến trang đăng nhập khi người dùng nhấn vào nút "Đăng nhập"
    navigation.navigate("Login");
  };
  const handleShowRegisterModal = () => {
    navigation.navigate("Register");
  };
  const handleRegister = () => {
    // Thực hiện xác thực đăng ký
    // Nếu đăng ký thành công, bạn có thể điều hướng đến trang chính
    // Ví dụ: navigation.navigate("Home");
    // Sau khi đăng ký thành công, đóng modal đăng ký
    setShowRegisterModal(false);
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
      {isUserLoggedIn ? (
        // Hiển thị nội dung khi đã đăng nhập
        <View style={styles.content}>
          <Text>Chào mừng bạn!</Text>
          <Button title="Thông tin tài khoản" onPress={handleProfile} />
        </View>
      ) : (
        // Hiển thị nội dung khi chưa đăng nhập
        <View style={styles.content}>
          <TouchableOpacity style={styles.backButton} onPress={goBack}>
            <Icon name="arrow-left" size={24} color="black" />
          </TouchableOpacity>
          <Text>Bạn chưa đăng nhập.</Text>
          <View style={styles.buttonContainer}>
            <Button title="Đăng nhập" onPress={handleNavigateToLogin} />
            <Text style={styles.orText}>hoặc</Text>
            <View style={styles.separator} />
            <Button title="Đăng ký" onPress={handleShowRegisterModal} />
          </View>
        </View>
      )}

      {/* Modal đăng nhập */}
      <Modal
        visible={showLoginModal}
        animationType="slide"
        transparent={true}
        onRequestClose={() => setShowLoginModal(false)}
      >
        <View style={styles.modalContainer}>
          <View style={styles.modalContent}>
            <Text>Đăng nhập</Text>
            <TextInput
              placeholder="Tên đăng nhập"
              value={username}
              onChangeText={(text) => setUsername(text)}
            />
            <TextInput
              placeholder="Mật khẩu"
              secureTextEntry
              value={password}
              onChangeText={(text) => setPassword(text)}
            />
            <Button title="Đăng nhập" onPress={handleLogin} />
            <Text style={styles.orText}>hoặc</Text>
            <Button title="Đóng" onPress={() => setShowLoginModal(false)} />
          </View>
        </View>
      </Modal>
      <Modal
        visible={showRegisterModal}
        animationType="slide"
        transparent={true}
        onRequestClose={() => setShowRegisterModal(false)}
      >
        <View style={styles.content}>
          <Text>Bạn chưa đăng nhập.</Text>
          <View style={styles.buttonContainer}>
            <Button title="Đăng nhập" onPress={handleNavigateToLogin} />
            <Text style={styles.orText}>hoặc</Text>
            <Button title="Đăng ký" onPress={handleShowRegisterModal} />
          </View>
        </View>
      </Modal>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
  },
  content: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  modalContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "rgba(0, 0, 0, 0.5)",
  },
  backButton: {
    position: "absolute",
    top: 17,
    left: 15,
    zIndex: 1,
  },
  modalContent: {
    backgroundColor: "#fff",
    padding: 20,
    borderRadius: 10,
    width: 300,
  },
  buttonContainer: {
    flexDirection: "row",
    marginTop: 10,
  },
  separator: {
    width: 10,
  },
  orText: {
    marginHorizontal: 10,
    color: "#555",
    fontSize: 16, // Thêm kích thước chữ
  },
});

export default MyComponent;
