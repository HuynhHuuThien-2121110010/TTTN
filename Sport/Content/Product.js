import React, { useState, useEffect } from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { useNavigation } from "@react-navigation/native";
import {
  StyleSheet,
  Image,
  View,
  Text,
  FlatList,
  TouchableOpacity,
} from "react-native";

const Product = () => {
  const [products, setProducts] = useState([]);
  const navigation = useNavigation();
  const [visibleSpringItemCount, setVisibleSpringItemCount] = useState(5);

  useEffect(() => {
    // Gọi API để lấy dữ liệu sản phẩm
    fetch("https://fakestoreapi.com/products")
      .then((response) => response.json())
      .then((data) => setProducts(data))
      .catch((error) => console.error("Error fetching data:", error));
  }, []);

  const handleProductPress = (product) => {
    // Chuyển đến trang chi tiết sản phẩm và truyền thông tin sản phẩm
    // Bạn cần import navigation từ thư viện bạn sử dụng (React Navigation chẳng hạn)
    // và đảm bảo rằng nó đã được cấu hình đúng trong ứng dụng của bạn.
    navigation.navigate("ProductDetail", { product });
  };

  const handleShowMoreSpring = () => {
    setVisibleSpringItemCount(visibleSpringItemCount + 4);
  };
  const renderProductItem = ({ item }) => {
    const maxLength = 20;
    const truncatedTitle =
      item.title.length > maxLength
        ? item.title.substring(0, maxLength - 3) + "..."
        : item.title;
    return (
      <TouchableOpacity onPress={() => handleProductPress(item)}>
        <View style={styles.productItem}>
          <Image source={{ uri: item.image }} style={styles.image} />
          <Text
            numberOfLines={2}
            ellipsizeMode="tail"
            style={styles.productName}
          >
            {truncatedTitle}
          </Text>
          <Text style={styles.productPrice}>{`$${item.price}`}</Text>
          <TouchableOpacity style={styles.addToCartButton}>
            <Text style={styles.addToCartButtonText}>Add to Cart</Text>
          </TouchableOpacity>
        </View>
      </TouchableOpacity>
    );
  };

  return (
    <View style={styles.container}>
      <View style={styles.containerheader}>
        <Text style={{ fontSize: 20, fontWeight: "bold", color: "red" }}>
          Sẩn phẩm
        </Text>
        <TouchableOpacity
          onPress={handleShowMoreSpring}
          style={styles.showMoreButton}
        >
          <Text style={styles.showMoreButtonText}>Xem thêm</Text>
        </TouchableOpacity>
      </View>
      <View>
        {visibleSpringItemCount < products.length && (
          <TouchableOpacity
            onPress={handleShowMoreSpring}
            style={styles.showMoreButton}
          ></TouchableOpacity>
        )}
        <FlatList
          data={products.slice(0, visibleSpringItemCount)}
          renderItem={renderProductItem}
          keyExtractor={(item) => item.id.toString()}
          horizontal
        />
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "column",
    marginTop: 5,
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
    borderWidth: 0.5,
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
    flex: 1,
    padding: 2,
    width: 100,
    height: 100,
    resizeMode: "contain",
  },
  //   flsale1: {
  //     flex: 1,
  //     width: 100,
  //     height: 50,
  //   },
  //   flsale2: {
  //     flex: 1,
  //     alignItems: "center",
  //     alignContent: "center",
  //   },
});

export default Product;
