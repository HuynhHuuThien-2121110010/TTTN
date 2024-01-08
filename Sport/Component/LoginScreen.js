// LoginScreen.js
import React, { useState, useEffect } from "react";
import axiosAPI from "../API/axiosAPI";
import {
  View,
  Text,
  StyleSheet,
  TextInput,
  TouchableOpacity,
} from "react-native";
import Toast from "react-native-toast-message";
import { useNavigation } from "@react-navigation/native";
import Icon from "react-native-vector-icons/FontAwesome";
const LoginScreen = () => {
  const navigation = useNavigation();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [users, setUsers] = useState([]);
  const [showPassword, setShowPassword] = useState(false);
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("users?populate=*");
        setUsers(result.data.data); // Update this line
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu:", error);
      }
    };
    fetchData();
  }, []);
  const handleLogin = async () => {
    // Kiểm tra xem tên đăng nhập và mật khẩu có được nhập không
    if (!username || !password) {
      Toast.show({
        type: "error",
        position: "top",
        text1: "Thông báo",
        text2: "Nhập tên tài khoản hoặc mật khẩu",
        visibilityTime: 2000,
      });
      return;
    }

    try {
      console.log("Dữ liệu người dùng:", users);
      // Tìm người dùng với tên đăng nhập đã nhập
      const user = users.find((user) => user.username === username);
      console.log("Thông tin người dùng:", user);
      // Kiểm tra xem người dùng có được tìm thấy và mật khẩu có đúng không
      if (user && user.password === password) {
        console.log("Đăng nhập thành công!");
        // Điều hướng đến màn hình chính (cập nhật với tuyến đường điều hướng thực tế của bạn)
        navigation.navigate("Home");
      } else {
        console.error("Tên đăng nhập hoặc mật khẩu không đúng.");
        // Xử lý thông tin đăng nhập không đúng (ví dụ: hiển thị thông báo lỗi)
      }
    } catch (error) {
      console.error("Lỗi khi xác thực đăng nhập:", error);
    }
  };
  const handleForgotPassword = () => {
    // Xử lý quên mật khẩu
  };

  const handleRegister = () => {
    navigation.navigate("Register");
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
      <Text style={styles.title}>Đăng nhập</Text>
      <View style={styles.form}>
        <TextInput
          style={styles.input}
          placeholder="Tên đăng nhập"
          value={username}
          onChangeText={(text) => setUsername(text)}
        />
        {/* Sử dụng đúng tên style (passwordContainer) ở đây */}
        <View style={styles.passwordContainer}>
          <TextInput
            style={styles.input}
            placeholder="Mật khẩu"
            secureTextEntry={!showPassword}
            value={password}
            onChangeText={(text) => setPassword(text)}
          />
          <View style={styles.eyeIconContainer}>
            <TouchableOpacity
              style={styles.eyeIcon}
              onPress={() => setShowPassword(!showPassword)}
            >
              <Icon
                name={showPassword ? "eye" : "eye-slash"}
                size={20}
                color="#333"
              />
            </TouchableOpacity>
          </View>
        </View>
        <View style={styles.bottomLinks}>
          <TouchableOpacity onPress={handleForgotPassword}>
            <Text style={styles.linkText}>Quên mật khẩu?</Text>
          </TouchableOpacity>
          <TouchableOpacity onPress={handleRegister}>
            <Text style={styles.linkText}>Đăng ký</Text>
          </TouchableOpacity>
        </View>
        <TouchableOpacity style={styles.button} onPress={handleLogin}>
          <Text style={styles.buttonText}>Đăng nhập</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flexDirection: "column",
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#f4f4f4",
  },
  passwordContainer: {
    position: "relative", // Đặt vị trí là "relative"
    marginBottom: 10, // Thêm margin để tách TextInput của Mật khẩu và biểu tượng mắt
  },
  eyeIconContainer: {
    position: "absolute",
    top: 10,
    right: 10,
    zIndex: 1, // Để đảm bảo biểu tượng mắt hiển thị trước TextInput
  },
  title: {
    fontSize: 24,
    marginBottom: 20,
    color: "#333",
  },
  form: {
    width: "80%",
  },
  input: {
    height: 40,
    borderColor: "#ccc",
    borderWidth: 1,
    borderRadius: 5,
    marginBottom: 10,
    paddingLeft: 10,
  },
  backButton: {
    position: "absolute",
    top: 17,
    left: 15,
    zIndex: 1,
  },
  button: {
    backgroundColor: "#2f486e",
    padding: 10,
    borderRadius: 5,
    alignItems: "center",
  },
  buttonText: {
    color: "#fff",
    fontSize: 16,
  },
  bottomLinks: {
    flexDirection: "row",
    justifyContent: "space-between",
  },
  leftLink: {
    flex: 1,
  },
  separator: {
    width: 10,
  },
  rightLink: {
    flex: 1,
    alignItems: "flex-end",
  },
  linkText: {
    color: "#4285f4",
  },
});

export default LoginScreen;
