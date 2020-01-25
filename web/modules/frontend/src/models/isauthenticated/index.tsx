import api from 'libraries/api';
import { get } from 'libraries/localStorage';
import { IisAuthenticatedResponse } from './interface';

const isAuthenticated = async (): Promise<IisAuthenticatedResponse> => {
  return await api({
    method: 'POST',
    url: '/oauth/isauthenticated',
    headers: {
      Authorization: `Bearer ${get('accessToken')}`,
    },
  });
};

export { isAuthenticated };
