interface IdoLoginRequest {
  member_username: string;
  member_password: string;
}

interface IdoLoginResponse {
  success: string;
  message: string;
  data?: IdoLoginResponseData | null;
}

interface IdoLoginResponseData {
  access_token: string;
  refresh_token: string;
}