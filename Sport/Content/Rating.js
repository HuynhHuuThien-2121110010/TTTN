// Trong component Rating.js
import React from "react";
import { View, TouchableOpacity } from "react-native";
import Icon from "react-native-vector-icons/FontAwesome";

const Rating = ({ rating, onPress }) => {
  const filledStars = Math.floor(rating);
  const halfStar = rating % 1 !== 0;
  const emptyStars = 5 - filledStars - (halfStar ? 1 : 0);

  return (
    <View style={{ flexDirection: "row", alignItems: "center" }}>
      {[...Array(filledStars)].map((_, index) => (
        <TouchableOpacity key={index} onPress={() => onPress(index + 1)}>
          <Icon name="star" size={20} color="gold" />
        </TouchableOpacity>
      ))}
      {halfStar && (
        <TouchableOpacity onPress={() => onPress(filledStars + 1)}>
          <Icon name="star-half" size={20} color="gold" />
        </TouchableOpacity>
      )}
      {[...Array(emptyStars)].map((_, index) => (
        <TouchableOpacity
          key={index}
          onPress={() => onPress(filledStars + index + 1)}
        >
          <Icon name="star-o" size={20} color="gold" />
        </TouchableOpacity>
      ))}
    </View>
  );
};

export default Rating;
