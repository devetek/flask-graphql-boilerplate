import Loadable from "react-loadable";
import FullLoader from "./../../components/FullLoader";

const LoadableComponent = Loadable({
  loader: () => import("./main"),
  loading: FullLoader
});

export default LoadableComponent;
