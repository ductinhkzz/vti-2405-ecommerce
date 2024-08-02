import { Navigate } from 'react-router-dom';

import { useCustomer } from '@/hooks';

type RequiredLoginProps = {
  Component: () => JSX.Element;
};

const RequiredLogin = ({ Component }: RequiredLoginProps) => {
  const customer = useCustomer();

  if (!customer?.id) {
    return <Navigate to='login' />;
  }

  return <Component />;
};

export default RequiredLogin;
