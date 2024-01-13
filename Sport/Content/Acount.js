import React from "react";
import { View, Text, StyleSheet, TouchableOpacity, Button } from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import { useAuth } from "./AuthContext";

const Account = () => {
  const navigation = useNavigation();
  const { authenticated, logout, userInfo } = useAuth();

  const goBack = () => {
    // Xử lý khi người dùng nhấn nút "Quay về"
    navigation.goBack();
  };
  console.log("userInfo:", userInfo);
  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.backButton} onPress={goBack}>
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      {authenticated ? (
        // Hiển thị nội dung khi đã đăng nhập
        <View style={styles.content}>
          <Text>Thông tin tài khoản:</Text>
          {userInfo ? (
            <>
              <Text>Username: {userInfo.user.username}</Text>
              <Text>Email: {userInfo.user.email}</Text>
            </>
          ) : (
            <Text>Loading user information...</Text>
          )}
          <Button title="Đăng xuất" onPress={logout} />
        </View>
      ) : (
        // Hiển thị nội dung khi chưa đăng nhập
        <View style={styles.content}>
          <TouchableOpacity style={styles.backButton} onPress={goBack}>
            <Icon name="arrow-left" size={24} color="black" />
          </TouchableOpacity>
          <Text style={{ fontSize: 30 }}>Bạn chưa đăng nhập!</Text>
          <View style={styles.buttonContainer}>
            <Button
              title="Đăng nhập"
              onPress={() => navigation.navigate("Login")}
            />
            <Text style={styles.orText}>hoặc</Text>
            <View style={styles.separator} />
            <Button
              title="Đăng ký"
              onPress={() => navigation.navigate("Register")}
            />
          </View>
        </View>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "column", // Đổi thành "column" để tránh việc nút "Quay về" và nội dung trên cùng một dòng
  },
  content: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
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
  separator: {
    width: 10,
  },
  orText: {
    marginHorizontal: 10,
    color: "#555",
    fontSize: 16,
  },
});

export default Account;
