import api from 'libraries/api';
import { IdoLoginRequest, IdoLoginResponse } from './interface';

const doLogin = async ({ member_username, member_password }: IdoLoginRequest): Promise<IdoLoginResponse> => {
  return await api({
    method: 'POST',
    url: '/oauth/authorization',
    body: {
      member_username,
      member_password,
    },
  });
};

export { doLogin };
