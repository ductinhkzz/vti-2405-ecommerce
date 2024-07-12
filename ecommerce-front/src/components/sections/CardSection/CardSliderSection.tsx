import type { ICard } from '@/types';
import { Card } from './Card';
import { Slider } from '../../Slider';

type CardBlockSectionProps = {
  cards: ICard[];
};

const CardSliderSection = ({ cards }: CardBlockSectionProps) => {
  return (
    <Slider>
      {cards.map((card) => (
        <div key={card.id} className='keen-slider__slide sm:p-2'>
          <Card {...card} />
        </div>
      ))}
    </Slider>
  );
};

export { CardSliderSection };
