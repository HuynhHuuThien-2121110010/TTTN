import axios from "axios";
const axiosAPI = axios.create({
  baseURL: "http://192.168.0.6:1337/api/",
  timeout: 1000,
  headers: { "X-Custom-Header": "foobar" },
});
export default axiosAPI;
