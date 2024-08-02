import { Suspense } from 'react';

import { LoadingOverlay } from '@/components';

type LoadComponentProps = {
  component: React.LazyExoticComponent<() => JSX.Element>;
};

const LoadComponent = ({ component: Component }: LoadComponentProps) => (
  <Suspense fallback={<LoadingOverlay />}>
    <Component />
  </Suspense>
);

export default LoadComponent;
