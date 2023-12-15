import React from "react";
import { useNavigation } from "@react-navigation/native";
import { View, Text, Image, StyleSheet, Button, ScrollView } from "react-native";

const ProductDetail = ({ route }) => {
  const { product } = route.params;
  const navigation = useNavigation();

  return (
    <ScrollView contentContainerStyle={styles.container}>
      <Image source={{ uri: product.image }} style={styles.image} />
      <Text>{product.title}</Text>
      <Text>{`$${product.price}`}</Text>
      {/* Thêm các thông tin khác về sản phẩm */}
      <Button title="Quay lại" onPress={() => navigation.goBack()} />
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: "center",
    marginTop: 15,
    marginBottom: 15,
  },
  containerheader: {
    flex: 1,
    flexDirection: "row",
    marginTop: 5,
  },
  category: {
    flex: 1,
  },
  productItem: {
    margin: 10,
    borderColor: "black",
    borderWidth: 1,
    alignItems: "center",
  },
  showMoreButton: {
    flex: 1,
    alignItems: "flex-end",
    alignContent: "center",
  },
  showMoreButtonText: {
    marginTop: 7,
  },
  image: {
    width: "100%",
    height: 300,
    resizeMode: "contain",
  },
});
export default ProductDetail;
