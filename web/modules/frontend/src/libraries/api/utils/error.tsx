const error = (error: Error): string => {
  console.log(error.message);

  return error.message;
};

export default error;
