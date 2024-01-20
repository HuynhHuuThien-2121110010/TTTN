import React, { useState } from "react";
import {
  View,
  Text,
  Alert,
  TextInput,
  TouchableOpacity,
  StyleSheet,
} from "react-native";
import axiosAPI from "../API/axiosAPI";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation, useRoute } from "@react-navigation/native";

const ChangePasswword = ({ route }) => {
  const { userInfo } = route.params;
  const [currentPassword, setCurrentPassword] = useState("");
  const [newPassword, setNewPassword] = useState("");
  const navigation = useNavigation();
  const [confirmPassword, setConfirmPassword] = useState("");
  console.log(userInfo);
  const handleAuthentication = (token, userInfo) => {
    // Triển khai logic để lưu mã và thông tin người dùng
    // Ví dụ, bạn có thể sử dụng AsyncStorage hoặc một giải pháp quản lý trạng thái
    // Đối với AsyncStorage:
    // await AsyncStorage.setItem('jwtToken', token);
    // await AsyncStorage.setItem('userInfo', JSON.stringify(userInfo));
    // Đối với quản lý trạng thái (ví dụ: sử dụng Redux):
    // dispatch(authenticateUser({ token, userInfo }));
  };
  const handleChangePassword = async () => {
    if (newPassword !== confirmPassword) {
      Alert.alert("Lỗi", "Mật khẩu mới và xác nhận mật khẩu không khớp.");
      return;
    }

    try {
      // Thực hiện xác thực ở đây và nhận được token
      const authToken =
        "b3a542dc38133c8843fd66da299b1b22a8728e54e44fd0abd510868ad193568278c43b73acb7864d4b3186e8f143e13afcadd4ffed1eeb1e6266a5e45a928edf18f906eea83dd4ccb3945fa1f001f798c2462575c51bbffb7b3339ebeb9afff574448309908a258aae828f46ace453b673aab20681b8b25b1764aafb241ef229"; // Thay thế bằng cách lấy token từ xác thực của bạn
      console.log(currentPassword, newPassword, confirmPassword);
      const response = await axiosAPI.post(
        "/auth/change-password",
        {
          password: currentPassword,
          currentPassword: newPassword,
          passwordConfirmation: confirmPassword,
        },
        {
          headers: {
            Authorization: `Bearer ${authToken}`,
          },
        }
      );

      // Assuming the API response structure is similar to the one you provided
      const { jwt, user } = response.data;

      // Call your authentication function to save the new token and user information
      handleAuthentication(jwt, user);

      // Display success message
      Alert.alert("Thành công", "Đã đổi mật khẩu thành công.");
    } catch (error) {
      console.error("Lỗi khi đổi mật khẩu:", error.message);

      if (
        error.response &&
        error.response.data &&
        error.response.data.error &&
        error.response.data.error.message
      ) {
        // Handle specific error messages from the API
        Alert.alert("Lỗi", error.response.data.error.message);
      } else {
        Alert.alert("Lỗi", "Không thể đổi mật khẩu. Vui lòng thử lại.");
      }
    }
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity
        style={styles.backButton}
        onPress={() => navigation.goBack()}
      >
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      <Text style={styles.title}>Đổi mật khẩu</Text>

      {/* Add input fields */}
      <View style={styles.profileInfo}>
        <Text style={styles.label}>Mật khẩu hiện tại</Text>
        <TextInput
          style={styles.input}
          secureTextEntry={true}
          value={currentPassword}
          onChangeText={(text) => setCurrentPassword(text)}
        />

        <Text style={styles.label}>Mật khẩu mới</Text>
        <TextInput
          style={styles.input}
          secureTextEntry={true}
          value={newPassword}
          onChangeText={(text) => setNewPassword(text)}
        />

        <Text style={styles.label}>Xác nhận mật khẩu mới</Text>
        <TextInput
          style={styles.input}
          secureTextEntry={true}
          value={confirmPassword}
          onChangeText={(text) => setConfirmPassword(text)}
        />
      </View>
      <View style={styles.container}>
        {/* ... existing code ... */}

        {/* Add a button to trigger password change */}
        <TouchableOpacity
          style={styles.editButton}
          onPress={handleChangePassword}
        >
          <Text style={styles.buttonText}>Đổi mật khẩu</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: "#fff",
  },
  title: {
    textAlign: "center",
    fontSize: 24,
    fontWeight: "bold",
    marginVertical: 20,
  },
  profileInfo: {
    marginBottom: 20,
  },
  label: {
    fontSize: 16,
    marginBottom: 5,
  },
  input: {
    fontSize: 18,
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 5,
    padding: 10,
    marginBottom: 15,
  },
  backButton: {
    position: "absolute",
    top: 17,
    left: 15,
    zIndex: 1,
  },
  buttonContainer: {
    flexDirection: "row",
    justifyContent: "center",
  },
  editButton: {
    paddingVertical: 10,
    paddingHorizontal: 20,
    backgroundColor: "#3498db",
    borderRadius: 5,
    marginRight: 10,
  },
  saveButton: {
    paddingVertical: 10,
    paddingHorizontal: 20,
    backgroundColor: "#2ecc71",
    borderRadius: 5,
    marginRight: 10,
  },
  buttonText: {
    color: "#fff",
    fontSize: 16,
  },
});

export default ChangePasswword;
