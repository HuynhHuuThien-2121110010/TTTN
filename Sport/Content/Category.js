import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Modal,
  FlatList,
  TextInput,
  Image,
  TouchableWithoutFeedback,
} from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import axiosAPI from "../API/axiosAPI";
import ApiUrl from "../API/ApiUrl";
import ListHeader from "./ListHeader";

const MyComponent = () => {
  const [productData, setProductData] = useState([]);
  const navigation = useNavigation();
  const [searchInput, setSearchInput] = useState("");
  const [categoriesData, setCategoriesData] = useState([]);
  const [selectedCategory, setSelectedCategory] = useState(null);
  const [selectedSort, setSelectedSort] = useState("price_asc");
  const [modalVisible, setModalVisible] = useState(false);

  //--------Lấy Category----------------
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("categories");
        setCategoriesData(result.data.data);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu:", error);
      }
    };

    fetchData();
  }, []);
  //-------Lấy Product-------------
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("products?populate=*");
        setProductData(result.data.data);
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu:", error);
      }
    };

    fetchData();
  }, []);
  //-------------Giới hạn chữ-------------------
  const limitString = (str, maxLength) => {
    if (str.length <= maxLength) {
      return str;
    } else {
      return str.substring(0, maxLength) + "...";
    }
  };
  //------------Tiền------------------
  const formatPrice = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
  };
  //--------Quay về--------------
  const goBack = () => {
    navigation.goBack();
  };
  //------------------Chi tiết sản phẩm-------------
  const handleProductPress = (product) => {
    // Chuyển đến trang chi tiết sản phẩm và truyền thông tin sản phẩm
    // Bạn cần import navigation từ thư viện bạn sử dụng (React Navigation chẳng hạn)
    // và đảm bảo rằng nó đã được cấu hình đúng trong ứng dụng của bạn.
    navigation.navigate("ProductDetail", {
      productImage: product.attributes.image.data,
      product,
    });
  };
  //---------------Lọc--------------
  const handleSearch = (text) => {
    setSearchInput(text);
  };
  //-----------Tìm Kiếm-----------
  const renderCategoriesDropdown = () => {
    return (
      <Modal
        animationType="slide"
        transparent={true}
        visible={modalVisible}
        onRequestClose={() => {
          setModalVisible(!modalVisible);
        }}
      >
        <TouchableWithoutFeedback
          onPress={() => setModalVisible(!modalVisible)}
        >
          <View style={styles.centeredView}>
            <View style={styles.modalView}>
              <TouchableOpacity
                onPress={() => {
                  setSelectedCategory(null);
                  setModalVisible(!modalVisible);
                }}
                style={styles.modalItem}
              >
                <Text style={{ marginLeft: 15 }}>Tất cả danh mục</Text>
              </TouchableOpacity>
              <FlatList
                data={categoriesData}
                keyExtractor={(item) => item.id.toString()}
                renderItem={({ item }) => (
                  <TouchableOpacity
                    onPress={() => {
                      setSelectedCategory(item.id);
                      setModalVisible(!modalVisible);
                    }}
                    style={styles.modalItem}
                  >
                    <Text style={{ marginLeft: 15 }}>
                      {item.attributes.categoryName}
                    </Text>
                  </TouchableOpacity>
                )}
              />
            </View>
          </View>
        </TouchableWithoutFeedback>
      </Modal>
    );
  };
  return (
    <View style={styles.container}>
      <View style={styles.searchContainer}>
        <TextInput
          style={styles.searchInput}
          placeholder="Tìm kiếm..."
          value={searchInput}
          onChangeText={handleSearch}
        />
      </View>
      <TouchableOpacity style={styles.backButton} onPress={goBack}>
        <Icon name="arrow-left" size={24} color="black" />
      </TouchableOpacity>
      <View style={styles.filterRow}>
        <TouchableOpacity
          style={styles.pickerButton}
          onPress={() => setModalVisible(true)}
        >
          <Text>
            {selectedCategory
              ? categoriesData.find((cat) => cat.id === selectedCategory)
                  ?.attributes.categoryName
              : "Tất cả danh mục"}
          </Text>
        </TouchableOpacity>
        <TouchableOpacity
          style={styles.pickerButton}
          onPress={() => setModalVisible(true)}
        >
          <Text>
            {selectedSort === "price_asc" ? "Giá tăng dần" : "Giá giảm dần"}
          </Text>
        </TouchableOpacity>
      </View>

      {renderCategoriesDropdown()}

      <ListHeader
        selectedCategory={selectedCategory}
        categoriesData={categoriesData}
      />
      <FlatList
        data={productData.filter(
          (item) =>
            (selectedCategory === null ||
              item.attributes.category.data.id === selectedCategory) &&
            (searchInput === "" ||
              item.attributes.productName
                .toLowerCase()
                .includes(searchInput.toLowerCase()))
        )}
        keyExtractor={(item) => item.id.toString()}
        renderItem={({ item }) => (
          <View style={styles.productContainer}>
            <TouchableOpacity onPress={() => handleProductPress(item)}>
              <Image
                source={{
                  uri:
                    ApiUrl.imageURL +
                    item.attributes.image.data[0].attributes.url,
                }}
                style={styles.productImage}
              />
              <Text style={styles.productName}>
                {limitString(item.attributes.productName, 20)}
              </Text>
              <Text style={styles.productPrice}>{`đ ${formatPrice(
                item.attributes.price
              )}`}</Text>
            </TouchableOpacity>
          </View>
        )}
        numColumns={2}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  modalView: {
    marginTop: 75,
    marginLeft: 30,
    width: 150,
    backgroundColor: "white",
    borderRadius: 20,
    alignItems: "center",
    shadowColor: "#000",
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
  },
  modalItem: {
    marginVertical: 10,
  },
  picker: {
    flex: 1,
    marginRight: 10,
  },
  searchContainer: {
    flexDirection: "row",
    paddingHorizontal: 10,
    marginTop: 50, // Thêm thuộc tính marginTop để thụt xuống
  },
  searchInput: {
    flex: 1,
    height: 40,
    borderColor: "gray",
    borderWidth: 1,
    paddingHorizontal: 10,
  },
  productContainer: {
    width: "48%", // Sử dụng chiều rộng tương đối để chứa 2 sản phẩm trong một dòng
    margin: 10,
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 8,
    alignItems: "center",
    backgroundColor: "#2f486e",
  },
  filterRow: {
    flexDirection: "row",
    justifyContent: "space-between",
    paddingHorizontal: 10,
    marginTop: 10,
  },
  pickerButton: {
    flex: 1,
    marginTop: 40,
    marginRight: 10,
    padding: 10,
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 8,
    alignItems: "center",
    backgroundColor: "#ffffff", // Màu nền cho pickerButton
  },
  productImage: {
    margin: 5,
    width: 150,
    height: 150,
    resizeMode: "cover",
  },
  productName: {
    marginTop: 5,
    fontSize: 16,
  },
  productPrice: {
    marginTop: 5,
    fontSize: 14,
    color: "gray",
  },
  backButton: {
    position: "absolute",
    top: 15,
    left: 13,
    zIndex: 1,
  },
});

export default MyComponent;
