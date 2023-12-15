import React from "react";
import { View, Text, StyleSheet, FlatList, Image } from "react-native";

const data = [
  {
    id: 1,
    name: "Nike",
    imageUrl:
      "https://cdn.iconscout.com/icon/free/png-256/free-nike-1-202653.png",
  },
  {
    id: 2,
    name: "Adidas",
    imageUrl:
      "https://e7.pngegg.com/pngimages/475/281/png-clipart-adidas-logo-adidas-logo-adidas-text-photography-thumbnail.png",
  },
  {
    id: 3,
    name: "Puma",
    imageUrl:
      "https://cdn.icon-icons.com/icons2/2845/PNG/512/puma_logo_icon_181343.png",
  },
  {
    id: 4,
    name: "ReeBook",
    imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Reebok_2019_logo.svg/2560px-Reebok_2019_logo.svg.png",
  },
  {
    id: 5,
    name: "New Balance",
    imageUrl:
      "https://seeklogo.com/images/N/New_Balance-logo-F34722CB97-seeklogo.com.png",
  },
  {
    id: 6,
    name: "Converse",
    imageUrl:
      "https://cdn.iconscout.com/icon/free/png-256/free-converse-202549.png",
  },
  {
    id: 7,
    name: "Converse",
    imageUrl:
      "https://cdn.iconscout.com/icon/free/png-256/free-converse-202549.png",
  },
  // Add more categories as needed
];

const CategoriesComponent = () => {
  const renderCategoryItem = ({ item }) => (
    <View>
      <View style={styles.categoryItem}>
        <Image
          source={{ uri: item.imageUrl }}
          style={styles.categoryImage}
          resizeMode="contain" // Đảm bảo hình ảnh hiển thị đúng cách trong giới hạn
        />
      </View>
      <Text style={styles.categoryText}>{item.name}</Text>
    </View>
  );

  return (
    <FlatList
      data={data}
      renderItem={renderCategoryItem}
      keyExtractor={(item) => item.id.toString()}
      horizontal
    />
  );
};

const styles = StyleSheet.create({
  categoryItem: {
    width: 70,
    height: 70,
    margin: 8,
    borderRadius: 8,
    alignItems: "center",
  },
  categoryImage: {
    width: 50, // Độ rộng mong muốn của hình ảnh trong giới hạn của categoryItem
    height: 50, // Độ cao mong muốn của hình ảnh trong giới hạn của categoryItem
  },
  categoryText: {
    textAlign: "center",
  },
});

export default CategoriesComponent;
