import axios from "axios";
const axiosAPI = axios.create({
  baseURL: "http://172.20.10.2:1337/api/",
  timeout: 1000,
  headers: { "X-Custom-Header": "foobar" },
});
export default axiosAPI;
