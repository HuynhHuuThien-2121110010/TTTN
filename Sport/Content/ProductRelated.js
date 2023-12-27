import React from "react";
import { View, Text, Image, FlatList, TouchableOpacity } from "react-native";

const RelatedProducts = ({ relatedProducts }) => {
  const renderItem = ({ item }) => (
    <TouchableOpacity style={styles.relatedProductContainer}>
      <Image source={{ uri: item.image }} style={styles.relatedProductImage} />
      <Text style={styles.relatedProductTitle}>{item.title}</Text>
      <Text style={styles.relatedProductPrice}>{`đ${item.price}`}</Text>
    </TouchableOpacity>
  );

  return (
    <View style={styles.container}>
      <Text style={styles.sectionTitle}>Sản phẩm liên quan</Text>
      <FlatList
        data={relatedProducts}
        renderItem={renderItem}
        keyExtractor={(item) => item.id.toString()}
        horizontal
        showsHorizontalScrollIndicator={false}
      />
    </View>
  );
};

const styles = {
  container: {
    marginVertical: 10,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 10,
  },
  relatedProductContainer: {
    marginRight: 15,
  },
  relatedProductImage: {
    width: 100,
    height: 100,
    resizeMode: "contain",
    borderRadius: 5,
  },
  relatedProductTitle: {
    marginTop: 5,
    fontSize: 14,
  },
  relatedProductPrice: {
    marginTop: 3,
    fontSize: 16,
    fontWeight: "bold",
  },
};

export default RelatedProducts;
