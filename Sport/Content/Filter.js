import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, Text, View, SafeAreaView } from "react-native";
const MyCart = () => {
  return (
    <View>
      <Text style={styles.menu}>
        <Icon name="sort-amount-desc" size={20} color="#000000" />
      </Text>
    </View>
  );
};
const styles = StyleSheet.create({
  menu: {
    marginRight: 20,
    padding: 8,
    borderRadius: 15,
    backgroundColor: "#eef0ef",
  },
});
export default MyCart;
