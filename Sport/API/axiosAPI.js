import axios from "axios";
const axiosAPI = axios.create({
  baseURL: "http://192.168.156.251:1337/api/",
  timeout: 1000,
  headers: { "X-Custom-Header": "foobar" },
});
export default axiosAPI;
