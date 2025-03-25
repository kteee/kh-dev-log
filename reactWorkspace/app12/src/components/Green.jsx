import Container from './Container';
import { useNumContext } from '../context/NumContext';

const Green = () => {
  // const [num, setNum] = useState(10);

  // function increaseNum() {
  //   setNum(num + 1);
  // }

  console.log('그린 랜더~~');

  // const value = useNumContext();
  // const num = value[0];
  // const setNum = value[1];

  const [num, setNum] = useNumContext();

  return (
    <Container w="100" h="100" color="green">
      <span
        onClick={() => {
          setNum(num + 1);
        }}
      >
        넘버 : {num}
      </span>
    </Container>
  );
};

export default Green;
