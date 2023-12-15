import React from "react";
import Slider from "../Content/Slider";
import Category from "../Content/Brand";
import Product from "../Content/Product";
import ProductNew from "../Content/ProductNew";
import ProductSelling from "../Content/ProductSelling";
import ProductSale from "../Content/ProductSale";
import FooterContent from "../Content/FooterContent";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, ScrollView, View, Text, StatusBar } from "react-native";

const MyComponent = () => {
  return (
    <View style={styles.container}>
      <ScrollView>
        <View style={styles.header}>
          <Slider></Slider>
        </View>
        <View style={styles.content}>
          <Category></Category>
          <Product></Product>
          <ProductNew></ProductNew>
          <ProductSelling></ProductSelling>
          <ProductSale></ProductSale>
          <FooterContent></FooterContent>
        </View>
        <View style={styles.footer}></View>
      </ScrollView>
    </View>
  );
};
const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "column",
  },
  containerfooter: {
    marginTop: 70,
    backgroundColor: "red",
  },
  header: {
    flex: 0.3,
    marginBottom: 3,
    flexDirection: "column",
    alignItems: "center",
  },
  content: {
    flex: 1.2,
    marginBottom: 1,
  },
  footer: {
    flex: 0.5,
    backgroundColor: "blue",
  },
  // scrollView: {
  //   width: 300,
  //   marginHorizontal: 20,
  // },
  // text: {
  //   fontSize: 50,
  // },
  // bestsale: {
  //   marginRight: 5,
  // },
  // text: {
  //   fontSize: 16,
  //   marginRight: 10,
  // },
  // horizontal: {
  //   width: 250,
  //   height: 30,
  //   flexDirection: "row",
  // },
  // fillter: {
  //   marginLeft: 10,
  //   marginRight: 5,
  // },
});
export default MyComponent;
