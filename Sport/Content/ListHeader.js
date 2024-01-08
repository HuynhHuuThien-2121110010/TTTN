// ListHeader.js
import React from "react";
import { View, Text, StyleSheet } from "react-native";

const ListHeader = ({ selectedCategory, categoriesData }) => {
  const getCategoryNameById = (categoryId) => {
    if (!categoryId) {
      return "Danh Mục";
    }

    const category = categoriesData.find((cat) => cat.id === categoryId);
    return category ? category.attributes.categoryName : "";
  };

  const categoryName = getCategoryNameById(selectedCategory);

  return (
    <View style={styles.headerContainer}>
      <View style={styles.line} />
      <Text style={styles.headerText}>{categoryName}</Text>
      <View style={styles.line} />
    </View>
  );
};

const styles = StyleSheet.create({
  headerContainer: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 10,
    marginTop: 10,
  },
  line: {
    flex: 1,
    height: 1,
    backgroundColor: "black",
    marginHorizontal: 10,
  },
  headerText: {
    fontSize: 18,
    color: "black",
  },
});

export default ListHeader;
