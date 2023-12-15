import React from "react";
import { StatusBar } from "expo-status-bar";
import Content from "./Component/Content";
import Footer from "./Component/Footer";
import Header from "./Component/Header";
import Search from "./HeaderTop/Search";
import ProductDetail from "./Content/ProductDetail";
import { NavigationContainer } from "@react-navigation/native";
import { ScrollView, StyleSheet, Text, View } from "react-native";
import { createStackNavigator } from "@react-navigation/stack";
import { useNavigation } from "@react-navigation/native";
import { TouchableOpacity } from "react-native";

const Stack = createStackNavigator();
const HomeScreen = () => {
  return (
    <ScrollView style={styles.scrollView}>
      <View style={styles.header}>
        <Header />
      </View>
      <View style={styles.search}>
        <Search />
      </View>
      <View style={styles.content}>
        <Content />
      </View>
    </ScrollView>
  );
};
export default function App() {
  return (
    <View style={styles.container}>
      <NavigationContainer>
        <Stack.Navigator initialRouteName="Home" screenOptions={{ headerShown: false }}>
          <Stack.Screen name="Home" component={HomeScreen} />
          <Stack.Screen name="ProductDetail" component={ProductDetail} />
        </Stack.Navigator>
      </NavigationContainer>
      <View style={styles.footer}>
        <Footer />
      </View>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    marginTop: 10,
    flex: 1,
    backgroundColor:"#f2f2f2",
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
