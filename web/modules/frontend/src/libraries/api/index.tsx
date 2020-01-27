import config from 'config';
import error from './utils/error';
import request from './utils/request';
import response from './utils/response';

const api = ({ method = 'GET', url = '', headers = {}, body = {} }: Api): Promise<any> => {
  return fetch(`${config.BUTTERFLY_HOST}${url}`, request({ method, headers, body }))
    .then(response)
    .then((r: { json: () => any }) => r.json())
    .then((data: any) => data)
    .catch(error);
};

export default api;
