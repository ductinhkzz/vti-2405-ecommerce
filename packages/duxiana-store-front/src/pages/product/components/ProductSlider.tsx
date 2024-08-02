import { Slider } from '@/components';
import { IProduct } from '@/redux/types';

const ProductSlider = ({ images = [] }: { images?: IProduct['images'] }) => {
  return (
    <Slider actionVerticalCenter autoWidth>
      {images.map((img) => (
        <div key={img.id} className='min-w-80 max-w-2xl w-full keen-slider__slide sm:p-2'>
          <img src={img.url} alt='' className='h-full w-full' />
        </div>
      ))}
    </Slider>
  );
};

export { ProductSlider };
