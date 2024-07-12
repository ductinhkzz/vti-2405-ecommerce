import { twMerge } from 'tailwind-merge';
import { Container } from '../Container';
import { Button } from '../Button';

type TextBlockProps = {
  subTitle?: string;
  title: string;
  description?: string;
  highlightText?: string;
  position?: 'left' | 'center';
  action?: {
    text: 'Explore our furniture collection';
    url?: string;
  };
};

const TextBlock = ({ title, subTitle, description, highlightText, position = 'center', action }: TextBlockProps) => {
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
          <p className='uppercase text-xs mb-2 tracking-widest'>{subTitle}</p>
          <h1 className='font-medium text-2xl mb-4'>{title}</h1>
          <p className={twMerge('text-sm font-light mb-1', position === 'center' && 'text-center')}>{description}</p>
          <p className={twMerge('text-sm font-light text-gray-500', position === 'center' && 'text-center')}>
            {highlightText}
          </p>
          {action && (
            <p className='mt-8'>
              <Button color='secondary' size='sm'>{action.text}</Button>
            </p>
          )}
        </div>
      </div>
    </Container>
  );
};

export { TextBlock };
