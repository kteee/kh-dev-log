import './App.css';
import Counter from './components/Counter';
import { Provider } from 'react-redux';
import store from './redux/store';
import Theme from './components/Theme';
import Member from './components/Member';

function App() {
  return (
    <>
      <Provider store={store}>
        <Counter />
        <Theme />
        <Member />
      </Provider>
    </>
  );
}

export default App;
