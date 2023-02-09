import axios from "axios";
import { Auth } from "aws-amplify";

const configureAxios = () => {
  axios.interceptors.request.use(
    (config) => {
      return Auth.currentSession().then((session) => {
        config.headers["Authorization"] = session.getIdToken().getJwtToken();
        return config;
      });
    },
    (error) => {
      return Promise.reject(error);
    }
  );
};

export default configureAxios;
