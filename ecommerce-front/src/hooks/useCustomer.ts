import { AuthStateType } from '@/redux/reducers/authReducer';
import { useRedux } from './useRedux';
import { ICustomer } from '@/redux/types';

const useCustomer = () => {
  const { appSelector } = useRedux();
  const { customer } = appSelector<AuthStateType>((state) => state.auth);

  if (!customer) {
    return null;
  }

  return {
    ...customer,
    full_name: `${customer?.first_name} ${customer?.last_name}`,
  } as ICustomer & { full_name: string };
};

export { useCustomer };
