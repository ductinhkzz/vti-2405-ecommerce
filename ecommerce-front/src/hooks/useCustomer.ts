import { AuthStateType } from '@/redux/reducers/authReducer';
import { useRedux } from './useRedux';

const useCustomer = () => {
  const { appSelector } = useRedux();
  const { customer } = appSelector<AuthStateType>((state) => state.auth);

  return {
    ...customer,
    full_name: `${customer?.first_name} ${customer?.last_name}`,
  };
};

export { useCustomer };
