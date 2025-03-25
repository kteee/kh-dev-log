import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import NumberPage from './pages/NumberPage';
import { NumberProvider } from './context/NumberContext';

function App() {
  return (
    <NumberProvider>
      <BrowserRouter>
        <Routes>
          <Route path="/number" element={<NumberPage />} />
          <Route path="*" elemen={<h1>404 NOT FOUND</h1>} />
        </Routes>
      </BrowserRouter>
    </NumberProvider>
  );
}

export default App;
