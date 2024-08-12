import { BrowserRouter, Route, Routes } from 'react-router-dom';

import { MainLayout } from './layout';
import Typescript from './pages/Typescript';
import ReactPage from './pages/ReactPage';
import ReduxPage from './pages/ReduxPage';
import ReactRouter from './pages/ReactRouter';
import Form from './pages/Form';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<MainLayout />}>
          <Route path='typescript' element={<Typescript />} />
          <Route path='react' element={<ReactPage />} />
          <Route path='redux' element={<ReduxPage />} />
          <Route path='router' element={<ReactRouter />} />
          <Route path='form' element={<Form />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
