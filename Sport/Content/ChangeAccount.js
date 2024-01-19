// Trong ChangeAccount.js
import React, { useState } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  TextInput,
  Button,
  StyleSheet,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";

import { useNavigation, useRoute } from "@react-navigation/native";
const ChangeAccount = () => {
  const navigation = useNavigation();
  const route = useRoute();
  const { userInfo } = route.params || {};
  const [newUserInfo, setNewUserInfo] = useState({
    username: userInfo.user.name || "",
    email: userInfo.user.email || "",
    phoneNumber: userInfo.user.phone || "",
    // Thêm các trường khác tùy thuộc vào thông tin người dùng
  });
  const goBack = () => {
    // Xử lý khi người dùng nhấn nút "Quay về"
    navigation.goBack();
  };
  console.log(userInfo);
  const handleSaveChanges = () => {
    // Lưu thông tin mới
    // ...
    // Truyền thông tin mới về màn hình ProfileScreen
    // navigation.navigate("Profile", { updatedUserInfo: newUserInfo });
  };

  return (
    <View>
      <TouchableOpacity style={styles.backButton} onPress={goBack}>
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      <TextInput
        value={newUserInfo.username}
        onChangeText={(text) =>
          setNewUserInfo((prev) => ({ ...prev, username: text }))
        }
        placeholder="Name"
      />
      <TextInput
        value={newUserInfo.email}
        onChangeText={(text) =>
          setNewUserInfo((prev) => ({ ...prev, email: text }))
        }
        placeholder="Email"
      />
      <TextInput
        value={newUserInfo.phoneNumber}
        onChangeText={(text) =>
          setNewUserInfo((prev) => ({ ...prev, phoneNumber: text }))
        }
        placeholder="Phone"
      />

      {/* Nút lưu thay đổi */}
      <Button title="Save Changes" onPress={handleSaveChanges} />
    </View>
  );
};
const styles = StyleSheet.create({
  ccontainer: {
    flex: 1,
    padding: 16,
    backgroundColor: "#fff",
    justifyContent: "center",
  },
  input: {
    height: 40,
    borderColor: "#ccc",
    borderWidth: 1,
    marginBottom: 20,
    paddingHorizontal: 10,
    borderRadius: 5,
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
export default ChangeAccount;
