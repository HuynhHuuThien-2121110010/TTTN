import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, Text, View, SafeAreaView } from "react-native";
const MyCart = () => {
  return (
    <View style={styles.cart}>
      <View style={styles.iconContainer}>
        <Icon name="shopping-cart" size={25} color="#000000" />
      </View>
    </View>
  );
};
const styles = StyleSheet.create({
  cart: {
    flex: 0.5,
    height: 30,
    // marginTop: 5,
    // marginRight: "auto",
    // padding: 8,
    // width: "10%",
    marginTop: 15,
    // borderRadius: 15,
    // alignItems: "flex-end",
    // marginBottom: 10,
  },
  iconContainer: {
    position: "absolute",
    top: "50%",
    left: "50%",
    transform: [{ translateX: -10 }, { translateY: -10 }],
  },
});
export default MyCart;
