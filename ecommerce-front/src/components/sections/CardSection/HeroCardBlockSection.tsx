import { ICard } from '@/types';
import clsx from 'clsx';
import { twMerge } from 'tailwind-merge';
import { HeroCard } from './HeroCard';

type HeroCardBlockSectionProps = {
  cards: ICard[];
};

const HeroCardBlockSection = ({ cards }: HeroCardBlockSectionProps) => {
  const totalCard = cards.length;

  return (
    <div className={twMerge('w-full grid grid-rows-1 mb-16', clsx(totalCard === 1 ? 'grid-cols-1' : 'grid-cols-2'))}>
      {cards.map((card) => (
        <HeroCard key={card.id} card={card} />
      ))}
    </div>
  );
};

export { HeroCardBlockSection };
