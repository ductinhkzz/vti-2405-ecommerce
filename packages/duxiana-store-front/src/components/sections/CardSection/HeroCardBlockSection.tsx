import { ICard } from '@/types';
import { twMerge } from 'tailwind-merge';

import { Container } from '@/components';
import { HeroCard } from './HeroCard';

export type HeroCardBlockSectionProps = {
  cards: ICard[];
  full?: boolean;
};

const HeroCardBlockSection = ({ cards, full = true }: HeroCardBlockSectionProps) => {
  const totalCard = cards.length;

  return (
    <Container className='mt-8 md:mt-12'>
      <div
        className={twMerge(
          'w-full grid grid-rows-1',
          totalCard === 1 && 'grid-cols-1',
          totalCard === 2 && 'grid-cols-2',
          totalCard === 3 && 'grid-cols-3',
          totalCard === 4 && 'grid-cols-4',
          !full && 'container sm:w-xl w-full px-24',
          totalCard > 2 && 'gap-4',
        )}>
        {cards.map((card, index) => (
          <HeroCard key={card.title} card={card} className={`col-start-${index + 1} col-end-${index + 2}`} />
        ))}
      </div>
    </Container>
  );
};

export { HeroCardBlockSection };
