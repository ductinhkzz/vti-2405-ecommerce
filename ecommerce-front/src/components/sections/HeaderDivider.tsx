import { Button } from '../Button';
import { Container } from '../Container';

type HeaderDividerProps = {
  header: {
    title: string;
    subTitle?: string;
  };
  content: {
    text: string;
    actions?: Array<{ url?: string; text: string }>;
  };
};

const HeaderDivider = ({ header, content }: HeaderDividerProps) => {
  const actions = content.actions ?? [];
  return (
    <Container>
      <div className='container w-xl flex 2xl:px-24 sm:px-8 px-4 md:flex-row flex-col gap-y-8 items-center'>
        <div className='flex-auto lg:basis-2/5 basis-4/12'>
          {header.subTitle && <p className='mb-2 uppercase text-xs tracking-widest'>{header.subTitle}</p>}
          <h2 className='text-3xl'>{header.title}</h2>
        </div>
        <div className='flex flex-col flex-auto lg:basis-3/5 basis-8/12 gap-8 2xl:ps-12 2xl:pe-24 items-center'>
          <p className='sm:text-sm text-xs font-light'>{content.text}</p>
          {actions.length > 0 && (
            <p className='flex gap-4 sm:flex-row flex-col'>
              {actions.map((action, index) => {
                if (index === 0) {
                  return (
                    <Button color='secondary' key={action.text} size='sm'>
                      {action.text}
                    </Button>
                  );
                }
                return (
                  <Button color='secondary' variant='text' key={action.text} size='sm'>
                    {action.text}
                  </Button>
                );
              })}
            </p>
          )}
        </div>
      </div>
    </Container>
  );
};

export { HeaderDivider };
