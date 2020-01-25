const prefix = (key: string): string => `devetek:${key}:local`;

const save = (key: string, val: string): boolean => {
  try {
    localStorage.setItem(prefix(key), val);

    return true;
  } catch (e) {
    // TODO: Replace with logger
    console.log(e);
  }

  return false;
};

const get = (key: string): string | null => {
  try {
    return localStorage.getItem(prefix(key));
  } catch (e) {
    // TODO: Replace with logger
    console.log(e);
  }

  return null;
};

const del = (key: string): boolean => {
  try {
    localStorage.removeItem(prefix(key));

    return true;
  } catch (e) {
    // TODO: Replace with logger
    console.log(e);
  }

  return false;
};

export { save, get, del };
