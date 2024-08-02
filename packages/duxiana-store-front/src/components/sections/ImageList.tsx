import { Container } from '../Container';

export type ImageListProps = {
  medias?: Array<{
    url: string;
    isVideo?: boolean;
    position?: 'left' | 'right' | 'full';
  }>;
};

const ImageList = ({ medias = [] }: ImageListProps) => {
  return (
    <Container>
      <div className='container sm:w-xl w-full flex justify-center'>
        <div className={`grid grid-cols-${medias.length}`}>
          {medias.map((item, i) => (
            <div key={item.url} className={`col-start-${i + 1} col-end-${i + 2}`}>
              <img src={item.url} alt='' />
            </div>
          ))}
        </div>
      </div>
    </Container>
  );
};

export { ImageList };
