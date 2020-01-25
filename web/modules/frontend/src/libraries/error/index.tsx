const errorHandler = (error: Error | string): string => {
  // TODO: Action to adding some additional function to send error info to error service API
  if (error instanceof Error) {
    console.log(error.message);

    return error.message;
  } else {
    console.log(error);
    
    return error;
  }

};

export default errorHandler;
