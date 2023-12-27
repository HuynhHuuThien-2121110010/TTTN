import React, { useState } from "react";
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Modal,
  FlatList,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";

const MyComponent = () => {
  return (
    <View style={styles.container}>
      <Text>qa</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    justifyContent: "space-between",
    paddingTop: 5,
    paddingRight: 15,
    paddingLeft: 15,
  },
  column: {
    alignItems: "center",
    justifyContent: "center",
  },
  modalContainer: {
    flex: 1,
    backgroundColor: "rgba(0, 0, 0, 0.5)",
    justifyContent: "flex-start",
    position: "absolute",
    right: 0,
    left: 0,
    top: 0,
    bottom: 0,
  },
  columnsContainer: {
    flexDirection: "row",
    justifyContent: "space-around",
    flex: 1,
  },
  categoryList: {
    backgroundColor: "white",
    borderRadius: 8,
    padding: 10,
    flex: 1,
  },
  additionalContentContainer: {
    backgroundColor: "white",
    borderRadius: 8,
    padding: 10,
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  categoryItem: {
    padding: 10,
    borderBottomWidth: 1,
    borderBottomColor: "#ccc",
  },
  textA: {
    fontSize: 18,
    fontWeight: "bold",
  },
});

export default MyComponent;
