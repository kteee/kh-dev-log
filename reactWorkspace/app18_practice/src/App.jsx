import './App.css';
import Counter from './components/Counter';
import Theme from './components/Theme';
import UserInfo from './components/UserInfo';
import { Provider } from 'react-redux';
import store from './redux/store';

function App() {
  return (
    <Provider store={store}>
      <Counter />
      <Theme />
      <UserInfo />
    </Provider>
  );
}

export default App;
