import React from "react";
import { View, Text, StyleSheet, Image } from "react-native";
import Carousel from "react-native-snap-carousel";

const data = [
  {
    id: 1,
    imageUrl:
      "https://file.hstatic.net/1000178110/article/blog_385x250_b8feb0748c354f188a2d2daee66581f4_a31cc501140f4779abd4c1b2bcb2365c.jpg",
    title: "Khuyến mãi 1",
  },
  {
    id: 2,
    imageUrl:
      "https://xedapgiakho.com/wp-content/uploads/2023/07/he-ron-rang_1536x940-min-600x367.jpg",
    title: "Khuyến mãi 2",
  },
  {
    id: 3,
    imageUrl:
      "https://bizweb.dktcdn.net/100/180/515/files/e8e07f4194e16cbf35f0.jpg?v=1582355517408",
    title: "Khuyến mãi 3",
  },
  {
    id: 4,
    imageUrl:
      "https://cdn.tgdd.vn/Files/2022/05/02/1429622/cuong-nhiet-bong-da-nhan-qua-cuc-to.jpg",
    title: "Khuyến mãi 4",
  },
  // Thêm dữ liệu khác nếu cần
];

const MyCarousel = () => {
  const renderCarouselItem = ({ item }) => (
    <View style={styles.carouselItem}>
      <Image
        source={{ uri: item.imageUrl }}
        style={styles.carouselImage}
        resizeMode="contain"
      />
    </View>
  );

  return (
    <Carousel
      data={data}
      renderItem={renderCarouselItem}
      sliderWidth={500}
      itemWidth={300}
      loop={true}
      autoplay={true}
      autoplayInterval={3000}
      inactiveSlideOpacity={0.5}
      inactiveSlideScale={0.9}
    />
  );
};

const styles = StyleSheet.create({
  carouselItem: {
    justifyContent: "center",
    alignItems: "center",
    borderRadius: 8,
    backgroundColor: "white",
    overflow: "hidden",
  },
  carouselImage: {
    width: 300,
    height: 200,
  },
  carouselText: {
    padding: 10,
    textAlign: "center",
  },
});

export default MyCarousel;
