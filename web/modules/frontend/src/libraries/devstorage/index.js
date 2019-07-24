const prefix = key => `devetek:${key}:local`;

const devStoreSave = (key = "", val = "") => {
  try {
    return localStorage.setItem(prefix(key), val);
  } catch (e) {
    // TODO: Replace with logger
    console.log(e);
    return null;
  }
};

const devStoreGet = (key = "") => {
  try {
    return localStorage.getItem(prefix(key));
  } catch (e) {
    // TODO: Replace with logger
    console.log(e);
    return null;
  }
};

const devStoreDel = (key = "") => {
  try {
    localStorage.removeItem(prefix(key));

    return true;
  } catch (e) {
    // TODO: Replace with logger
    console.log(e);
    return false;
  }
};

export { devStoreSave, devStoreGet, devStoreDel };
