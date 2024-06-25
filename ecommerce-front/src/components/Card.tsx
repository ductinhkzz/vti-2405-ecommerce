import { Button } from './Button';

interface CardProps {
  title: string;
  description: string;
  image: string;
}

const Card = ({ title, description, image }: CardProps) => {
  return (
    <div className='hover:bg-gray-300 transition-all delay-75'>
      <div>
        <img src={image} alt={title} className='min-h-64' />
      </div>
      <div className='p-4 flex flex-col gap-2 justify-start items-start'>
        <h3 className='uppercase font-medium tracking-widest text-sm'>{title}</h3>
        <p className='text-sm font-thin tracking-wide'>{description}</p>
        <Button color='secondary' variant='text'>
          Buy now
        </Button>
      </div>
    </div>
  );
};

export { Card };
