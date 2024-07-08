import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';

import { Button, Input } from '@/components';
import { LoginSchemaType, loginSchema } from '@/helpers';
import { useLoginMutation } from '@/redux/api';
import { useCustomer, useToast } from '@/hooks';

const Login = () => {
  const navigate = useNavigate();
  const toast = useToast();
  const customer = useCustomer();
  const [login, { isLoading, isSuccess, isError }] = useLoginMutation();
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<LoginSchemaType>({
    resolver: yupResolver(loginSchema),
  });

  const onSubmit = handleSubmit((data) => {
    login(data);
  });

  useEffect(() => {
    if (isSuccess) {
      toast('Login successfully !', 'success');
      navigate('/');
    }
  }, [isSuccess]);

  useEffect(() => {
    if (isError) {
      toast('Email or password is incorrect !', 'error');
    }
  }, [isError]);

  useEffect(() => {
    if (customer) {
      navigate('/');
    }
  }, [customer]);

  return (
    <div className='flex min-h-full flex-col justify-center px-6 py-12 lg:px-8'>
      <div className='sm:mx-auto sm:w-full sm:max-w-sm'>
        <h2 className='mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900'>
          Sign in to your account
        </h2>
      </div>

      <div className='mt-10 sm:mx-auto sm:w-full sm:max-w-sm'>
        <form onSubmit={onSubmit}>
          <Input
            id='email'
            className='mt-2'
            type='email'
            autoComplete='email'
            required
            label='Email address'
            {...register('email')}
          />
          <Input
            id='password'
            className='mt-2'
            type='password'
            autoComplete='current-password'
            required
            label='Password'
            {...register('password')}
          />
          {errors.password && <p className='text-red-500 text-xs'>{errors.password.message}</p>}
          <div className='mt-8'>
            <Button type='submit' color='secondary' className='w-full' variant='contained' disabled={isLoading}>
              Sign in
            </Button>
          </div>
        </form>

        <p className='mt-10 text-center text-sm text-gray-500'>
          Not a member?{' '}
          <a href='#' className='font-semibold leading-6'>
            Join with us
          </a>
        </p>
      </div>
    </div>
  );
};

export default Login;
