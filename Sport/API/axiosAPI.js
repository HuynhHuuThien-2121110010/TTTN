import axios from "axios";
const axiosAPI = axios.create({
  baseURL: "http://10.17.10.130:1337/api/",
  timeout: 1000,
  headers: { "X-Custom-Header": "foobar" },
});
export default axiosAPI;
