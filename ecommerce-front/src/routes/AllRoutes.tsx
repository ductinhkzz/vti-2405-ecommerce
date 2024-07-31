import { BrowserRouter, Route, Routes } from 'react-router-dom';
import React from 'react';

import { AccountLayout, MainLayout } from '@/layouts';
import LoadComponent from './LoadComponent';
import WithLogin from './WithLogin';
import RequiredLogin from './RequiredLogin';

const Home = React.lazy(() => import('@/pages/home'));
const Login = React.lazy(() => import('@/pages/auth/login'));
const Product = React.lazy(() => import('@/pages/product'));
const Collection = React.lazy(() => import('@/pages/product/collection'));
const Cart = React.lazy(() => import('@/pages/cart'));
const Checkout = React.lazy(() => import('@/pages/checkout'));
const OrderCompleted = React.lazy(() => import('@/pages/order/completed'));
const ContactUs = React.lazy(() => import('@/pages/contact-us'));
const AboutUs = React.lazy(() => import('@/pages/about-us'));
//Account
const Overview = React.lazy(() => import('@/pages/account/overview'));
const Profile = React.lazy(() => import('@/pages/account/profile'));
const Addresses = React.lazy(() => import('@/pages/account/addresses'));
const Orders = React.lazy(() => import('@/pages/account/orders'));
const Logout = React.lazy(() => import('@/pages/account/logout'));

//Error
const PageNotFound = React.lazy(() => import('@/pages/404'));

const AllRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route element={<WithLogin Component={MainLayout} />}>
          <Route path='/' element={<LoadComponent component={Home} />} />
          <Route path='/login' element={<LoadComponent component={Login} />} />
          <Route path='/product/:id' element={<LoadComponent component={Product} />} />
          <Route path='/collection/:handle' element={<LoadComponent component={Collection} />} />
          <Route path='/contact-us' element={<LoadComponent component={ContactUs} />} />
          <Route path='/about-us' element={<LoadComponent component={AboutUs} />} />
          <Route path='/cart' element={<LoadComponent component={Cart} />} />
          <Route path='/checkout' element={<LoadComponent component={Checkout} />} />
          <Route path='/order/completed/:id' element={<LoadComponent component={OrderCompleted} />} />
          <Route element={<RequiredLogin Component={AccountLayout} />}>
            <Route path='account/overview' element={<LoadComponent component={Overview} />} />
            <Route path='account/profile' element={<LoadComponent component={Profile} />} />
            <Route path='account/addresses/:type?/:id?' element={<LoadComponent component={Addresses} />} />
            <Route path='account/orders' element={<LoadComponent component={Orders} />} />
            <Route path='account/logout' element={<LoadComponent component={Logout} />} />
          </Route>
          <Route path='*' element={<LoadComponent component={PageNotFound} />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
};

export { AllRoutes };
