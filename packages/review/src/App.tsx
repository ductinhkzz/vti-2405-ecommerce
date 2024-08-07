import { BrowserRouter, Route, Routes } from 'react-router-dom';

import { MainLayout } from './layout';
import Typescript from './pages/Typescript';
import ReactPage from './pages/ReactPage';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<MainLayout />}>
          <Route path='typescript' element={<Typescript />} />
          <Route path='react' element={<ReactPage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
