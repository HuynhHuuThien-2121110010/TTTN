import React, { createContext, useContext, useEffect, useState } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";

const AuthContext = createContext();

const AuthProvider = ({ children }) => {
  const [authenticated, setAuthenticated] = useState(false);
  const [userInfo, setUserInfo] = useState(null);
  // Kiểm tra thông tin người dùng đã lưu trong quá trình khởi tạo
  const checkLoginStatus = async () => {
    try {
      const storedUserInfo = await AsyncStorage.getItem("userInfo");
      if (storedUserInfo) {
        const parsedUserInfo = JSON.parse(storedUserInfo);
        setAuthenticated(true);
        setUserInfo(parsedUserInfo);
        console.log(parsedUserInfo);
      } else {
        setAuthenticated(false);
        setUserInfo(null);
      }
    } catch (error) {
      console.error("Lỗi khi kiểm tra trạng thái đăng nhập:", error);
    }
  };

  useEffect(() => {
    checkLoginStatus();
  }, []);

  // Mảng phụ thuộc rỗng đảm bảo hiệu ứng này chỉ chạy một lần trong quá trình khởi tạo thành phần
  const login = (userData) => {
    setAuthenticated(true);
    setUserInfo(userData);
    saveLoginInfo(userData);
  };

  const logout = () => {
    setAuthenticated(false);
    setUserInfo({});
    clearLoginInfo();
  };
  

  const saveLoginInfo = async (userData) => {
    try {
      await AsyncStorage.setItem("userInfo", JSON.stringify(userData));
      console.log("Thông tin đăng nhập đã được lưu.", { userData });
    } catch (error) {
      console.error("Lỗi khi lưu thông tin đăng nhập:", error);
    }
  };

  // AuthContext.js
const clearLoginInfo = async () => {
  try {
    await AsyncStorage.removeItem("userInfo"); // Xóa thông tin người dùng khỏi AsyncStorage
    await AsyncStorage.removeItem("userData"); // Xóa thông tin người dùng cụ thể
    console.log("Thông tin đăng nhập đã được xóa.");
  } catch (error) {
    console.error("Lỗi khi xóa thông tin đăng nhập:", error);
  }
};


  const value = {
    authenticated,
    userInfo,
    login,
    logout,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
};

const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error("useAuth phải được sử dụng bên trong AuthProvider");
  }
  return context;
};

export { AuthProvider, useAuth };
