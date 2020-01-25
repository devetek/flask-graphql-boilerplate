const bodyRequest = (contentType: string, body: any): BodyInit | null => {
  if (contentType === 'application/json' && body) {
    return JSON.stringify(body);
  }

  return null;
};

const request = (request: any): RequestInit => {
  const headers = request?.headers ?? null;
  const body = request?.body ?? null;
  const contentType = headers?.['Content-Type'] ?? 'application/json';

  return {
    method: request?.method ?? 'GET',
    credentials: 'include',
    headers: {
      'Content-Type': 'application/json',
      'X-App-Id': 1,
      ...headers,
    },
    body: bodyRequest(contentType, body),
  };
};

export default request;
