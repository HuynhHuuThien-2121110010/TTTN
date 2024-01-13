import React, { useState } from "react";
import { StatusBar } from "expo-status-bar";
import Content from "./Component/Content";
import Footer from "./Component/Footer";
import Header from "./Component/Header";
import Search from "./HeaderTop/Search";
import ProductDetail from "./Content/ProductDetail";
import Acount from "./Content/Acount";
import Category from "./Content/Category";
import CheckOut from "./Content/CheckOut";
import CheckOutCart from "./Content/CheckOutCart";
import Cart from "./Content/CartInfo";
import Toast from "react-native-toast-message";
import { NavigationContainer } from "@react-navigation/native";
import { ScrollView, StyleSheet, Text, View } from "react-native";
import { createStackNavigator } from "@react-navigation/stack";
import { useNavigation } from "@react-navigation/native";
import { TouchableOpacity } from "react-native";
import LoginScreen from "./Component/LoginScreen";
import RegisterScreen from "./Component/RegisterScreen";
import { AuthProvider } from "./Content/AuthContext";
import AsyncStorage from "@react-native-async-storage/async-storage";

const Stack = createStackNavigator();
const HomeScreen = () => {
  const [myData, setMyData] = useState("Dữ liệu của tôi");
  const navigation = useNavigation();

  const handleNavigationStateChange = (state) => {
    const currentRouteName = state.routes[state.index].name;
    const handleClearData = () => {
      // Xóa dữ liệu bằng cách cập nhật giá trị thành null
      setMyData(null);
    };
    useEffect(() => {
      const checkLoginStatus = async () => {
        try {
          // Kiểm tra trạng thái đăng nhập
          const userDataString = await AsyncStorage.getItem("userData");

          console.log("userDataString:", userDataString);

          if (userDataString) {
            // Nếu có dữ liệu người dùng, set lại trạng thái đăng nhập ở đây
            const userData = JSON.parse(userDataString);
            login(userData);
          }
        } catch (error) {
          console.error("Lỗi khi kiểm tra trạng thái đăng nhập:", error);
        }
      };

      // Gọi hàm kiểm tra trạng thái đăng nhập khi component được mount
      checkLoginStatus();
    }, []); // [] đảm bảo useEffect chỉ chạy một lần khi component được mount

    // Ẩn Footer khi trang hiện tại là ProductDetail
    if (currentRouteName === "ProductDetail") {
      navigation.setOptions({
        tabBarVisible: false,
      });
    } else {
      navigation.setOptions({
        tabBarVisible: true,
      });
    }
  };
  return (
    <View style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <View style={styles.header}>
          <Header />
        </View>
        {/* <View style={styles.search}>
          <Search />
        </View> */}
        <View style={styles.content}>
          <Content />
        </View>
      </ScrollView>
      <View style={styles.footer}>
        <Footer />
      </View>
    </View>
  );
};
export default function App() {
  return (
    <AuthProvider>
      <View style={styles.container}>
        <NavigationContainer>
          <Stack.Navigator
            initialRouteName="Home"
            screenOptions={{ headerShown: false }}
          >
            <Stack.Screen name="Home" component={HomeScreen} />
            <Stack.Screen name="Category" component={Category} />
            <Stack.Screen name="CheckOut" component={CheckOut} />
            <Stack.Screen name="CheckOutCart" component={CheckOutCart} />
            <Stack.Screen name="Cart" component={Cart} />
            <Stack.Screen name="ProductDetail" component={ProductDetail} />
            <Stack.Screen name="Acount" component={Acount} />
            <Stack.Screen name="Login" component={LoginScreen} />
            <Stack.Screen name="Register" component={RegisterScreen} />
          </Stack.Navigator>
        </NavigationContainer>
        <Toast ref={(ref) => Toast.setRef(ref)} />
        <StatusBar style="auto" />
      </View>
    </AuthProvider>
  );
}

const styles = StyleSheet.create({
  container: {
    marginTop: 10,
    flex: 1,
    backgroundColor: "#f2f2f2",
    flexDirection: "column",
  },
  scrollView: {
    marginTop: 30,
    flex: 3,
    flexDirection: "column",
  },
  header: {
    flex: 0.3,
    justifyContent: "center",
    alignItems: "center",
  },
  search: {
    flex: 0.2,
    flexDirection: "row",
    alignItems: "center",
  },
  content: {
    flex: 2,
    marginVertical: 3,
    marginHorizontal: 10,
  },
  footer: {
    flex: 0.075,
  },
});
