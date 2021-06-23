import Loadable from '@loadable/component';
import FullLoader from 'components/FullLoader';
import React from 'react';

const LoadableComponent = Loadable(() => import('./main'), {
  fallback: <FullLoader />, // what to show during loading
  ssr: true,
});

export default LoadableComponent;
