import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import Menu from "../HeaderTop/Menu";
import Logo from "../HeaderTop/Logo";
import Cart from "../HeaderTop/Cart";
import { StyleSheet, Text, View, TextInput } from "react-native";

const MyComponent = () => {
  return (
    <View style={styles.container}>
      <View style={styles.goback}>
        <Menu />
      </View>
      <View style={styles.cart}>
        <Text>Giỏ hàng</Text>
      </View>
    </View>
  );
};
const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
  },
  goback: {
    flex: 0.2,
  },
  cart: {
    flex: 2,
    textAlign: "center",
    justifyContent: "center",
  },
});
export default MyComponent;
// import React from 'react';
// import { View, StyleSheet } from 'react-native';

// const MyComponent = () => {
//   return (
//     <View style={styles.container}>
//       <View style={styles.column1}></View>
//       <View style={styles.column2}></View>
//       <View style={styles.column3}></View>
//     </View>
//   );
// };

// const styles = StyleSheet.create({
//   container: {
//     flexDirection: 'row',
//     flex: 1,
//   },
//   column1: {
//     flex: 1,
//     backgroundColor: 'red',
//   },
//   column2: {
//     flex: 2,
//     backgroundColor: 'green',
//   },
//   column3: {
//     flex: 1.5, // Tăng độ rộng lên 1.5 lần so với độ rộng ban đầu (1)
//     backgroundColor: 'blue',
//   },
// });

// export default MyComponent;
