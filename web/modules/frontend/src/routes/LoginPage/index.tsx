import Loadable from '@loadable/component';

const LoadableComponent = Loadable(() => import('./main'));

export default LoadableComponent;
