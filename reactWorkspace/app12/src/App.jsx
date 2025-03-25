import './App.css';
import { createContext } from 'react';
import ChristmasTree from './components/ChristmasTree';
import RootContext from './context/RootContext';

const KhContext = createContext();
const ThemeContext = createContext();
const UserInfoContext = createContext();

function App() {
  //const [num, setNum] = useState(10);

  return (
    <>
      <RootContext>
        <ChristmasTree />
      </RootContext>
    </>
  );
}

export default App;
export { KhContext, ThemeContext, UserInfoContext };
