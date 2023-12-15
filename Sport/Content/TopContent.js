import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import { StyleSheet, Text, View, SafeAreaView, ScrollView } from "react-native";
const MyCart = () => {
  return (
    <View>
      <Text>
        <SafeAreaView>
          <ScrollView style={styles.scrollView} horizontal={true}>
            <Text style={styles.text}>Sản phẩm bán chạy</Text>
            <Text style={styles.text}>Khuyến Mãi</Text>
            <Text style={styles.text}>Sản phẩm mới</Text>
            <Text style={styles.text}>Sản phẩm mới</Text>
            {/* Thêm các văn bản khác vào đây */}
          </ScrollView>
        </SafeAreaView>
      </Text>
      {/* <Icon style={styles.arow} name="chevron-left" size={20} color="#000000" /> */}
    </View>
  );
};
const styles = StyleSheet.create({
  scrollView: {
    width: 310,
    marginLeft: 20,
    marginRight: 20,
    marginTop: 10,
    marginBottom: 10,
    marginHorizontal: 20,
  },
  text: {
    fontSize: 16,
    marginRight: 10,
  },
  horizontal: {
    width: 250,
    height: 30,
    flexDirection: "row",
  },
});
export default MyCart;
