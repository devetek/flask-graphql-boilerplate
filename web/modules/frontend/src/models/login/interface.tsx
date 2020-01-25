export interface IdoLoginRequest {
  member_username: string;
  member_password: string;
}

export interface IdoLoginResponse {
  success: string;
  message: string;
  data?: IdoLoginResponseData | null;
}

/**
 * Endpoint data structure
 */
interface IdoLoginResponseData {
  access_token: string;
  refresh_token: string;
}