import { Container } from '../Container';

type ImageListProps = {
  list: string[];
};

const ImageList = ({ list }: ImageListProps) => {
  return (
    <Container>
      <div className='container sm:w-xl w-full flex justify-center'>
        <div className={`grid grid-cols-${list.length}`}>
          {list.map((item, i) => (
            <div key={item} className={`col-start-${i + 1} col-end-${i + 2}`}>
              <img src={item} alt='' />
            </div>
          ))}
        </div>
      </div>
    </Container>
  );
};

export { ImageList };
