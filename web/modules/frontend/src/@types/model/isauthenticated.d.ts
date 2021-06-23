interface IisAuthenticatedResponse {
  success: string;
  message: string;
  data?: IisAuthenticatedResponseData | null;
}

/**
 * Endpoint data structure
 */
interface IisAuthenticatedResponseData {
  access_token: string;
  refresh_token: string;
}
