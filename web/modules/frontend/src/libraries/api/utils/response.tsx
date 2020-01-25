const response = (response: any): any => {
  if (response.ok) {
    return response;
  } else {
    const error: Error = new Error(response.statusText);
    
    return Promise.reject(error);
  }
};

export default response;
