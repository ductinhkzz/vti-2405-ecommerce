import { BrowserRouter, Route, Routes } from 'react-router-dom';
import React from 'react';

import { MainLayout } from '@/layouts';
import LoadComponent from './LoadComponent';
import WithLogin from './WithLogin';

const Home = React.lazy(() => import('@/pages/home'));
const Login = React.lazy(() => import('@/pages/auth/login'));
const Account = React.lazy(() => import('@/pages/auth/account'));
const Product = React.lazy(() => import('@/pages/product'));

const AllRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<WithLogin Component={MainLayout} />}>
          <Route path='/' element={<LoadComponent component={Home} />} />
          <Route path='/login' element={<LoadComponent component={Login} />} />
          <Route path='/account' element={<LoadComponent component={Account} />} />
          <Route path='/product' element={<LoadComponent component={Product} />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
};

export { AllRoutes };
