import { useCookies } from 'react-cookie';

import { LoadingOverlay } from '@/components';
import { useRedux } from '@/hooks';
import { useGetCartQuery, useGetCustomerQuery, useGetRegionsQuery } from '@/redux/api';

type WithLoginProps = {
  Component: () => JSX.Element;
};

const WithLogin = ({ Component }: WithLoginProps) => {
  const [cookies] = useCookies(['_duxiana_cart_id']);

  const { appSelector } = useRedux();
  const { countryOptions } = appSelector((state) => state.global);
  const { isLoading, isSuccess } = useGetCustomerQuery();
  const cartId = cookies._duxiana_cart_id;
  useGetCartQuery(cartId, { skip: !cartId });
  useGetRegionsQuery(undefined, {
    skip: countryOptions.length !== 0,
  });

  if (isLoading && !isSuccess) {
    return <LoadingOverlay />;
  }

  return <Component />;
};

export default WithLogin;
