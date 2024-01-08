import React, { useState, useEffect } from "react";
import axiosAPI from "../API/axiosAPI";
import { View, Text, StyleSheet, Image } from "react-native";
import Carousel from "react-native-snap-carousel";
import ApiUrl from "../API/ApiUrl";

const MyCarousel = () => {
  const [sliders, setSliders] = useState([]);
  useEffect(() => {
    const fetchData = async () => {
      try {
        const result = await axiosAPI.get("sliders?populate=*");
        setSliders(result.data.data); // Update this line
      } catch (error) {
        console.error("Lỗi khi lấy dữ liệu:", error);
      }
    };
    fetchData();
  }, []);
  const renderCarouselItem = ({ item }) => (
    <View style={styles.carouselItem}>
      <Image
        source={{
          uri: ApiUrl.imageURL + item.attributes.image.data.attributes.url,
        }}
        style={styles.carouselImage}
        resizeMode="cover"
      />
    </View>
  );

  return (
    <Carousel
      data={sliders}
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
