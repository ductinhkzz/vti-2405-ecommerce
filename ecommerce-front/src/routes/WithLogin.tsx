import { LoadingOverlay } from '@/components';
import { useGetCustomerQuery } from '@/redux/api';

type WithLoginProps = {
  Component: () => JSX.Element;
};

const WithLogin = ({ Component }: WithLoginProps) => {
  const { isLoading, isSuccess } = useGetCustomerQuery();

  if (isLoading && !isSuccess) {
    return <LoadingOverlay />;
  }

  return <Component />;
};

export default WithLogin;
