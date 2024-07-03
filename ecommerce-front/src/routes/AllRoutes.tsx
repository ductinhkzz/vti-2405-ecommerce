import { BrowserRouter, Route, Routes } from 'react-router-dom';
import React from 'react';

import { AccountLayout, MainLayout } from '@/layouts';
import LoadComponent from './LoadComponent';
import WithLogin from './WithLogin';

const Home = React.lazy(() => import('@/pages/home'));
const Login = React.lazy(() => import('@/pages/auth/login'));
const Product = React.lazy(() => import('@/pages/product'));
//Account
const Overview = React.lazy(() => import('@/pages/account/overview'));
const Profile = React.lazy(() => import('@/pages/account/profile'));
const Addresses = React.lazy(() => import('@/pages/account/addresses'));
const Orders = React.lazy(() => import('@/pages/account/orders'));
const Logout = React.lazy(() => import('@/pages/account/logout'));

const AllRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<WithLogin Component={MainLayout} />}>
          <Route path='/' element={<LoadComponent component={Home} />} />
          <Route path='/login' element={<LoadComponent component={Login} />} />
          <Route path='/product' element={<LoadComponent component={Product} />} />
          <Route element={<AccountLayout />}>
            <Route path='account/overview' element={<LoadComponent component={Overview} />} />
            <Route path='account/profile' element={<LoadComponent component={Profile} />} />
            <Route path='account/addresses' element={<LoadComponent component={Addresses} />} />
            <Route path='account/orders' element={<LoadComponent component={Orders} />} />
            <Route path='account/logout' element={<LoadComponent component={Logout} />} />
          </Route>
        </Route>
      </Routes>
    </BrowserRouter>
  );
};

export { AllRoutes };
