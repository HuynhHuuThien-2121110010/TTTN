import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, TouchableOpacity, View, SafeAreaView } from "react-native";
import { useNavigation } from "@react-navigation/native";
const MyMenu = () => {
  const navigation = useNavigation();
  const handleBack = () => {
    navigation.goBack(); // Sử dụng phương thức goBack để quay lại màn hình trước đó
  };
  return (
    <View style={styles.menu}>
      <TouchableOpacity onPress={handleBack} style={styles.iconContainer}>
        <Icon name="chevron-left" size={25} color="#000000" />
      </TouchableOpacity>
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
