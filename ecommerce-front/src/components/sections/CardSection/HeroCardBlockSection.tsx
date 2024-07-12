import { ICard } from '@/types';
import { twMerge } from 'tailwind-merge';

import { Container } from '@/components';
import { HeroCard } from './HeroCard';

type HeroCardBlockSectionProps = {
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
          `grid-cols-${totalCard}`,
          !full && 'container sm:w-xl w-full px-24',
          totalCard > 2 && 'gap-4',
        )}>
        {cards.map((card, index) => (
          <HeroCard key={card.id} card={card} className={`col-start-${index + 1} col-end-${index + 2}`} />
        ))}
      </div>
    </Container>
  );
};

export { HeroCardBlockSection };
