import { useEffect } from 'react';
import { Navigate } from 'react-router-dom';

import { useCustomerLogoutMutation } from '@/redux/api';
import { useRedux, useToast } from '@/hooks';
import { setCustomer } from '@/redux/reducers';

const Logout = () => {
  const [logout, { isLoading, isError, isSuccess }] = useCustomerLogoutMutation();
  const { dispatch } = useRedux();
  const toast = useToast();

  useEffect(() => {
    logout().then(() => {
      dispatch(setCustomer(undefined));
    });
  }, []);

  useEffect(() => {
    if (isSuccess) {
      toast('Logout succesfully !', 'success');
    }
  }, [isSuccess]);

  if (isLoading) {
    return <div className='flex w-full h-full items-center justify-center'>Logging out ...</div>;
  }

  if (isError) {
    return <div className='flex w-full h-full items-center justify-center'>Logout failed !</div>;
  }

  return <Navigate to='/' replace />;
};

export default Logout;
