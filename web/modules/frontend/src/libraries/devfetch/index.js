import isEmpty from "lodash/isEmpty";
import config from "./../../config";
import checkStatus from "./check-status";

const devFetch = (method = "GET", headersParams = {}, bodyParams = {}) => {
  if (!isEmpty(bodyParams)) {
    bodyParams = { body: JSON.stringify(bodyParams) };
  }

  return fetch(`${config.BUTTERFLY_HOST}v2/oauth/authorization`, {
    method,
    credentials: "include",
    headers: {
      "Content-Type": "application/json",
      "X-Devetek-App-Id": 1,
      ...headersParams
    },
    ...bodyParams
  })
    .then(checkStatus)
    .then(r => r.json())
    .then(data => {
      return data;
    })
    .catch(error => {
      // TODO: Add new logger
      console.log(error);
      return null;
    });
};

export default devFetch;
