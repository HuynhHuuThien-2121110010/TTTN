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
  const [showCategories, setShowCategories] = useState(false);
  const categories = [
    { id: 1, name: "Category 1" },
    { id: 2, name: "Category 2" },
    { id: 3, name: "Category 3" },
    // Thêm danh mục khác nếu cần
  ];

  const additionalContent = "Additional Content A";

  const toggleCategories = () => {
    setShowCategories(!showCategories);
  };

  const renderCategoryItem = ({ item }) => (
    <TouchableOpacity style={styles.categoryItem} onPress={toggleCategories}>
      <Text>{item.name}</Text>
    </TouchableOpacity>
  );

  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.column} onPress={toggleCategories}>
        <Icon name="home" size={20} color="red" />
        <Text>Home</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.column} onPress={toggleCategories}>
        <Icon name="bars" size={20} color="#808a94" />
        <Text>Danh Mục</Text>
      </TouchableOpacity>
      <Modal
        visible={showCategories}
        animationType="slide"
        transparent={true}
        onRequestClose={toggleCategories}
      >
        <View style={styles.modalContainer}>
          <View style={styles.columnsContainer}>
            <FlatList
              data={categories}
              renderItem={renderCategoryItem}
              keyExtractor={(item) => item.id.toString()}
              style={styles.categoryList}
            />
            <View style={styles.additionalContentContainer}>
              <Text style={styles.textA}>{additionalContent}</Text>
            </View>
          </View>
        </View>
      </Modal>
      <TouchableOpacity style={styles.column}>
        <Icon name="map-marker" size={20} color="#808a94" />
        <Text>Địa chỉ</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.column}>
        <Icon name="user-circle-o" size={20} color="#808a94" />
        <Text>Tài khoản</Text>
      </TouchableOpacity>
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
