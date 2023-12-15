import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, SafeAreaView, View, TextInput } from "react-native";
const MyCart = () => {
  const [number, onChangeNumber] = React.useState("");
  return (
        <TextInput
          style={styles.input}
          onChangeText={onChangeNumber}
          value={number}
          placeholder="   Tìm kiếm..."
          keyboardType="numeric"
        />
  );
};
const styles = StyleSheet.create({
  input: {
    flex: 1,
    borderRadius: 10,
    marginHorizontal:20,
    height: 39,
    // alignItems: "flex-start",
    // justifyContent: "center",
    backgroundColor: "#eef0ef",
  },
});
export default MyCart;
