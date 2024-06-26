import { BrowserRouter, Route, Routes } from 'react-router-dom';
import React from 'react';

import { MainLayout } from '@/layouts';
import LoadComponent from './LoadComponent';

const Home = React.lazy(() => import('@/pages/home'));
const Product = React.lazy(() => import('@/pages/product'));

const AllRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<MainLayout />}>
          <Route path='/' element={<LoadComponent component={Home} />} />
          <Route path='/product' element={<LoadComponent component={Product} />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
};

export { AllRoutes };
