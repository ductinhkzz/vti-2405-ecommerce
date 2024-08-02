import type { ICard } from '@/types';
import { Card } from './Card';
import { Slider } from '../../Slider';

export type CardSliderSectionProps = {
  cards: ICard[];
  perView?: number;
  hideAction?: boolean;
};

const CardSliderSection = ({ cards, ...rest }: CardSliderSectionProps) => {
  return (
    <Slider {...rest}>
      {cards.map((card, i) => (
        <div key={`${card.title}-${i}`} className='keen-slider__slide sm:p-2'>
          <Card {...card} />
        </div>
      ))}
    </Slider>
  );
};

export { CardSliderSection };
