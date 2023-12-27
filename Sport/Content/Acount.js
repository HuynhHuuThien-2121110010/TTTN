import React, { useState } from "react";
import FooterContent from "../Content/FooterContent";
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
      <View style={styles.content}>
        <FooterContent />
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
  },
  content: {
    flex: 1,
  },
});

export default MyComponent;
