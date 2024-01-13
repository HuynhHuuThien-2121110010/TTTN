import React, { useState, useEffect } from "react";
import axiosAPI from "../API/axiosAPI";
import {
  View,
  Text,
  StyleSheet,
  TextInput,
  TouchableOpacity,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import Toast from "react-native-toast-message";
import { useAuth } from "../Content/AuthContext";

const RegisterScreen = () => {
  const navigation = useNavigation();
  const { login } = useAuth();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [email, setEmail] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [loading, setLoading] = useState(false);
  const [showPassword, setShowPassword] = useState(false);
  const [showPasswordc, setShowPasswordc] = useState(false);
  const fetchData = async () => {
    try {
      const result = await axiosAPI.post("auth/local", {
        identifier: username,
        password: password,
      });

      // Xử lý dữ liệu từ API theo nhu cầu của bạn
      console.log("Dữ liệu người dùng:", result.data);
    } catch (error) {
      console.error("Lỗi khi lấy dữ liệu:", error);
    }
  };
  const handleRegister = async () => {
    try {
      // Kiểm tra xác nhận mật khẩu
      if (password !== confirmPassword) {
        Toast.show({
          type: "error",
          position: "top",
          text1: "Thông báo",
          text2: "Mật khẩu không trùng khớp",
          visibilityTime: 2000,
        });
        return;
      }

      setLoading(true);

      // Gửi yêu cầu đăng ký đến server
      const response = await axiosAPI.post("auth/local/register", {
        username,
        password,
        email,
      });

      // Xử lý kết quả từ server
      if (response.data && response.data.user) {
        // Đăng ký thành công, điều hướng đến trang chính
        navigation.navigate("Home");

        Toast.show({
          type: "success",
          position: "top",
          text1: "Thông báo",
          text2: "Đăng ký thành công",
          visibilityTime: 2000,
        });

        login(response.data);
      } else {
        // Hiển thị thông báo lỗi từ server
        Toast.show({
          type: "error",
          position: "top",
          text1: "Thông báo",
          text2: "Lỗi đăng ký",
          visibilityTime: 2000,
        });
      }
    } catch (error) {
      Toast.show({
        type: "error",
        position: "top",
        text1: "Thông báo",
        text2: "Tài khoản hoặc email đã tồn tại",
        visibilityTime: 2000,
      });
    } finally {
      setLoading(false);
    }
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
      <Text style={styles.title}>Đăng ký</Text>
      <View style={styles.form}>
        <TextInput
          style={styles.input}
          placeholder="Email"
          keyboardType="email-address"
          value={email}
          onChangeText={(text) => setEmail(text)}
        />

        <TextInput
          style={styles.input}
          placeholder="Tên đăng nhập"
          value={username}
          onChangeText={(text) => setUsername(text)}
        />
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
        <View style={styles.passwordContainer}>
          <TextInput
            style={styles.input}
            placeholder="Xác nhận mật khẩu"
            secureTextEntry={!showPasswordc}
            value={confirmPassword}
            onChangeText={(text) => setConfirmPassword(text)}
          />
          <View style={styles.eyeIconContainer}>
            <TouchableOpacity
              style={styles.eyeIcon}
              onPress={() => setShowPasswordc(!showPasswordc)}
            >
              <Icon
                name={showPasswordc ? "eye" : "eye-slash"}
                size={20}
                color="#333"
              />
            </TouchableOpacity>
          </View>
        </View>
        <TouchableOpacity
          style={styles.button}
          onPress={handleRegister}
          disabled={loading}
        >
          <Text style={styles.buttonText}>
            {loading ? "Đang xử lý..." : "Đăng ký"}
          </Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flexDirection: "column",
    flex: 1,
    backgroundColor: "#f4f4f4",
    justifyContent: "center",
    alignItems: "center",
  },
  title: {
    fontSize: 24,
    marginBottom: 20,
    color: "#333",
  },
  form: {
    width: "80%",
  },
  passwordContainer: {
    position: "relative",
    marginBottom: 10,
  },
  eyeIconContainer: {
    position: "absolute",
    top: 10,
    right: 10,
    zIndex: 1,
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
});

export default RegisterScreen;
