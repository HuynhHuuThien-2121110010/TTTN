import axios from "axios";
const axiosAPI = axios.create({
  baseURL: "http://172.16.0.89:1337/api/",
  timeout: 1000,
  headers: { "X-Custom-Header": "foobar" },
});
export default axiosAPI;
