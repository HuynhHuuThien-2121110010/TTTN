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

const ProfileInfo = ({ route }) => {
  const { userInfo } = route.params;
  const navigation = useNavigation();
  const [editing, setEditing] = useState(false);
  const [editedUserInfo, setEditedUserInfo] = useState({ ...userInfo.user });
  const [password, setPassword] = useState("");
  const handleEdit = () => {
    setEditing(true);
  };
  const handleSave = async () => {
    const id = userInfo.user.id;
    console.log(editedUserInfo.id);

    // Hiển thị ô nhập mật khẩu
    const isPasswordValid = await showPasswordInput();

    if (isPasswordValid) {
      try {
        // Thực hiện gọi API để cập nhật thông tin người dùng
        const updateProfileResponse = await axiosAPI.put(`orders/${id}`, {
          data: {
            email: editedUserInfo.email,
            name: editedUserInfo.name,
            phone: editedUserInfo.phone,
            password, // Thêm mật khẩu vào dữ liệu cập nhật
          },
        });

        console.log(
          "Kết quả cập nhật thông tin người dùng:",
          updateProfileResponse.data
        );

        // Sau khi cập nhật thành công, có thể thực hiện các bước khác nếu cần
        setEditing(false);
      } catch (error) {
        console.error("Lỗi khi cập nhật thông tin người dùng:", error);
        // Xử lý lỗi nếu cần
      }
    } else {
      console.log("Mật khẩu không hợp lệ");
      // Xử lý khi mật khẩu không hợp lệ
    }
  };
  const handleChange = (key, value) => {
    setEditedUserInfo((prevUserInfo) => ({
      ...prevUserInfo,
      [key]: value,
    }));
  };
  const showPasswordInput = () => {
    // Hiển thị ô nhập mật khẩu và xác nhận mật khẩu trước khi gọi API
    return new Promise((resolve) => {
      // Thêm logic hiển thị một ô nhập mật khẩu, có thể sử dụng Modal hoặc các phương thức khác

      // Ví dụ: sử dụng Alert.prompt
      Alert.prompt(
        "Nhập mật khẩu",
        "Vui lòng nhập mật khẩu để xác nhận",
        [
          {
            text: "Hủy",
            onPress: () => resolve(false),
            style: "cancel",
          },
          {
            text: "Xác nhận",
            onPress: (password) => {
              setPassword(password);
              resolve(true);
            },
          },
        ],
        "secure-text" // Chế độ secure-text để ẩn mật khẩu nhập vào
      );
    });
  };
  return (
    <View style={styles.container}>
      <TouchableOpacity
        style={styles.backButton}
        onPress={() => navigation.goBack()}
      >
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      <Text style={styles.title}>Thông tin cá nhân</Text>

      <View style={styles.profileInfo}>
        <Text style={styles.label}>Email:</Text>
        <TextInput
          style={styles.input}
          value={editing ? editedUserInfo.email : userInfo.user.email}
          onChangeText={(text) => handleChange("email", text)}
          editable={editing}
        />

        <Text style={styles.label}>Tên:</Text>
        <TextInput
          style={styles.input}
          value={editing ? editedUserInfo.name : userInfo.user.name}
          onChangeText={(text) => handleChange("name", text)}
          editable={editing}
        />

        <Text style={styles.label}>Số điện thoại:</Text>
        <TextInput
          style={styles.input}
          value={
            editing
              ? editedUserInfo.phone.toString()
              : userInfo.user.phone.toString()
          }
          onChangeText={(text) => handleChange("phone", text)}
          keyboardType="numeric"
          editable={editing}
        />
        {editing && (
          <>
            <Text style={styles.label}>Mật khẩu:</Text>
            <TextInput
              style={styles.input}
              value={password}
              onChangeText={(text) => setPassword(text)}
              secureTextEntry={true} // Ẩn mật khẩu
            />
          </>
        )}
      </View>
      <View style={styles.buttonContainer}>
        {!editing ? (
          <TouchableOpacity style={styles.editButton} onPress={handleEdit}>
            <Text style={styles.buttonText}>Chỉnh sửa</Text>
          </TouchableOpacity>
        ) : (
          <TouchableOpacity style={styles.saveButton} onPress={handleSave}>
            <Text style={styles.buttonText}>Lưu</Text>
          </TouchableOpacity>
        )}
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

export default ProfileInfo;
