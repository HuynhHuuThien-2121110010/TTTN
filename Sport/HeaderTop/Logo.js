import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, SafeAreaView, View, Image } from "react-native";
const MyCart = () => {
  const [number, onChangeNumber] = React.useState("");
  return (
    <View style={styles.container}>
      <Image
        source={require("../public/image/logo.png")}
        style={styles.image}
      />
    </View>
  );
};
const styles = StyleSheet.create({
  container: {
    flex: 1.5,
    justifyContent: "center",
    alignItems: "center",
  },
  image: {
    width: 80,
    height: 60,
  },
});
export default MyCart;
