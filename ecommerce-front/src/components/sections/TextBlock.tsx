import { twMerge } from 'tailwind-merge';

import { Container } from '../Container';
import { ButtonVariant } from '../Button';
import { BlockActions } from './BlockActions';

export type TextBlockProps = {
  sub_title?: string;
  title: string;
  description?: string;
  highlightText?: string;
  position?: 'left' | 'center';
  actions?: Array<{ url: string; text: string; variant?: ButtonVariant }>;
};

const TextBlock = ({
  title,
  sub_title,
  description,
  highlightText,
  position = 'center',
  actions = [],
}: TextBlockProps) => {
  return (
    <Container>
      <div
        className={twMerge(
          'container sm:w-xl w-full',
          position === 'center' && 'flex justify-center',
          position === 'left' && 'grid grid-cols-12',
        )}>
        <div
          className={twMerge(
            'flex flex-col justify-center items-center max-w-lg px-8',
            position === 'left' && 'col-start-2 col-end-8 items-start',
          )}>
          {sub_title && <p className='uppercase text-xs mb-2 tracking-widest'>{sub_title}</p>}
          <h1 className='font-medium text-2xl mb-4'>{title}</h1>
          <p className={twMerge('text-sm font-light mb-1', position === 'center' && 'text-center')}>{description}</p>
          <p className={twMerge('text-sm font-light text-gray-500', position === 'center' && 'text-center')}>
            {highlightText}
          </p>
          <BlockActions actions={actions} />
        </div>
      </div>
    </Container>
  );
};

export { TextBlock };
