import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, Text, View, SafeAreaView } from "react-native";
const MyCart = () => {
  return (
    <View style={styles.containertop}>
      <Text>Liên hệ (miễn phí cuộc gọi)</Text>
      <View style={styles.container}>
        <View style={styles.containerright}>
          <Text>Mua ngay</Text>
        </View>
        <View style={styles.containerleft}>
          <Text>Góp ý:</Text>
          <Text style={styles.phone}>:0342591007</Text>
        </View>
      </View>
      <View style={styles.container}>
        <View style={styles.containerright}>
          <Text>a</Text>
        </View>
        <View style={styles.containerleft}>
          <Text>a</Text>
        </View>
      </View>
    </View>
  );
};
const styles = StyleSheet.create({
  containertop: {
    marginTop: 10,
  },
  container: {
    marginTop: 10,
    flex: 1,
    backgroundColor: "red",
    flexDirection: "row",
  },
  containerright: {
    flex: 1,
  },
  containerleft: {
    flex: 1,
  },
  containerleft: {
    color: "blue",
  },
});
export default MyCart;
