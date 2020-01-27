import api from 'libraries/api';
import { get } from 'libraries/localStorage';

const FetchisAuthenticated = async (): Promise<IisAuthenticatedResponse> => {
  return await api({
    method: 'POST',
    url: '/auth/isauthenticated',
    headers: {
      Authorization: `Bearer ${get('accessToken')}`,
    },
  });
};

export { FetchisAuthenticated };

