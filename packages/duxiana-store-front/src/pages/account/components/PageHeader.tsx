type PageHeaderProps = {
  title: string;
  description: string;
};

const PageHeader = ({ title, description }: PageHeaderProps) => {
  return (
    <div className='mb-8 flex flex-col gap-y-4'>
      <h1 className='text-2xl font-semibold'>{title}</h1>
      <p>{description}</p>
    </div>
  );
};

export { PageHeader };
