import React from "react";
import Icon from "react-native-vector-icons/FontAwesome";
import {
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  Image,
  Linking,
} from "react-native";
import { SocialIcon } from "react-native-elements";
import { app, Configuration } from "react-native-app-link";
const MyCart = () => {
  const facebookAppId = "your-facebook-app-id";
  const facebookPageUrl = "https://www.facebook.com/your-facebook-page";
  const zaloPageUrl = "https://chat.zalo.me/";
  const youtubePageUrl =
    "https://www.youtube.com/channel/UC1TryYP5uwpYWJ0KLQx4L4Q";
  const tikTokAppId = "your-tiktok-app-id"; // ID ứng dụng TikTok (nếu có)
  const tikTokUsername =
    "https://www.tiktok.com/@thienhuynh275?_t=8iDegytnBf0&_r=1";
  const handleFacebookPress = async () => {
    const config = {
      appName: "Facebook", // Tên ứng dụng
      appStoreId: "id284882215", // ID cửa hàng ứng dụng trên App Store
      appStoreLocale: "vn", // Ngôn ngữ và khu vực cửa hàng ứng dụng (vd: us, vn)
      playStoreId: "com.facebook.katana", // ID gian hàng ứng dụng trên Google Play
    };

    try {
      await app(config, { appName: "Facebook", appStoreId: "id284882215" });
    } catch (error) {
      // Nếu có lỗi, mở trang web của Facebook
      console.error("Error opening Facebook app:", error);
      Linking.openURL(facebookPageUrl).catch((err) =>
        console.error("Error opening Facebook page:", err)
      );
    }
  };
  const handleTikTokPress = async () => {
    const config = {
      appName: "TikTok", // Tên ứng dụng
      appStoreId: "1234567890", // ID cửa hàng ứng dụng trên App Store (thay đổi thành ID của TikTok)
      appStoreLocale: "us", // Ngôn ngữ và khu vực cửa hàng ứng dụng (vd: us, vn)
      playStoreId: "com.zhiliaoapp.musically", // ID gian hàng ứng dụng trên Google Play (ID của TikTok)
    };

    try {
      await app(config, { appName: "TikTok", appStoreId: "1234567890" });
    } catch (error) {
      // Nếu có lỗi, mở trang web TikTok (hoặc thực hiện hành động khác)
      console.error("Error opening TikTok app:", error);
      Linking.openURL(`https://www.tiktok.com/@${tikTokUsername}`).catch(
        (err) => console.error("Error opening TikTok profile:", err)
      );
    }
  };
  return (
    <View style={styles.containertop}>
      <Text>Theo dõi</Text>
      <View style={styles.container}>
        <View style={styles.containerright}>
          <TouchableOpacity onPress={handleFacebookPress}>
            <Image
              source={require("../public/image/fb.jpg")}
              style={{ margin: 10, width: 30, height: 30 }} // Điều chỉnh kích thước icon theo nhu cầu của bạn
            />
          </TouchableOpacity>
        </View>
        <View style={styles.containerright}>
          <TouchableOpacity onPress={handleTikTokPress}>
            <Image
              source={require("../public/image/fb.jpg")}
              style={{ margin: 10, width: 30, height: 30 }}
            />
          </TouchableOpacity>
        </View>
        <View style={styles.containerright}>
          <Text>a</Text>
        </View>
        <View style={styles.containerleft}>
          <TouchableOpacity onPress={handleTikTokPress}>
            <Image
              source={require("../public/image/tiktok.jpg")}
              style={{ margin: 10, width: 30, height: 30 }}
            />
          </TouchableOpacity>
        </View>
      </View>
      <View style={styles.container}>
        <View style={styles.containerright}>
          <Text>Liên hệ (miễn phí cuộc gọi)</Text>
        </View>
        <View style={styles.containerleft}>
          <Text>Góp ý:</Text>
          <Text style={styles.phone}>:0342591007</Text>
        </View>
      </View>
      <Text>Thông tin thêm</Text>
      <View style={styles.container}>
        <View style={styles.containerright}>
          <Text>a</Text>
        </View>
        <View style={styles.containerleft}>
          <Text>a</Text>
        </View>
      </View>
    </View>
  );
};
const styles = StyleSheet.create({
  containertop: {
    marginTop: 10,
  },
  container: {
    marginTop: 10,
    flex: 1,
    flexDirection: "row",
  },
  containerright: {
    flex: 1,
  },
  containerleft: {
    flex: 1,
  },
  containerleft: {
    color: "blue",
  },
});
export default MyCart;
