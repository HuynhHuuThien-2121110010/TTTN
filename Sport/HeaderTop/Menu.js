import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, Text, View, SafeAreaView } from "react-native";
const MyMenu = () => {
  return (
    <View style={styles.menu}>
      <View style={styles.iconContainer}>
        <Icon name="chevron-left" size={25} color="#000000" />
      </View>
    </View>
  );
};
const styles = StyleSheet.create({
  menu: {
    flex: 0.5,
    height: 30,
    marginTop: 15,
    borderRadius: 70,
  },
  iconContainer: {
    position: "absolute",
    top: "50%",
    left: "50%",
    transform: [{ translateX: -10 }, { translateY: -10 }],
  },
});
export default MyMenu;
