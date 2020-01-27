import api from 'libraries/api';

const FetchdoLogin = async ({ member_username, member_password }: IdoLoginRequest): Promise<IdoLoginResponse> => {
  return await api({
    method: 'POST',
    url: '/auth/authorization',
    body: {
      member_username,
      member_password,
    },
  });
};

export { FetchdoLogin };

