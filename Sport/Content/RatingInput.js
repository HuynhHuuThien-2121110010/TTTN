// RatingInput.js
import React, { useState } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  TextInput,
  StyleSheet,
} from "react-native";
import Rating from "../Content/Rating"; // Tùy chỉnh component Rating của bạn

const RatingInput = ({ onSubmit }) => {
  const [rating, setRating] = useState(0);
  const [review, setReview] = useState("");

  const submitRating = () => {
    // Kiểm tra xem người dùng đã chọn số sao chưa
    if (rating === 0) {
      alert("Vui lòng chọn số sao");
      return;
    }

    // Gửi đánh giá lên component cha
    onSubmit({ rating, review });
  };

  return (
    <View style={styles.container}>
      <Rating rating={rating} onPress={(value) => setRating(value)} />
      <Text>Đánh giá của bạn:</Text>
      <TextInput
        multiline
        numberOfLines={4}
        value={review}
        onChangeText={(text) => setReview(text)}
        placeholder="Nhập đánh giá của bạn..."
        style={styles.input}
      />
      <TouchableOpacity onPress={submitRating} style={styles.submitButton}>
        <Text>Gửi đánh giá</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    padding: 10,
  },
  input: {
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 5,
    padding: 10,
    marginVertical: 10,
  },
  submitButton: {
    backgroundColor: "blue",
    padding: 10,
    borderRadius: 5,
    alignItems: "center",
  },
});

export default RatingInput;
