type CardBlockHeaderProps = {
  title: string;
};

const CardBlockHeader = ({ title }: CardBlockHeaderProps) => {
  return (
    <div className='flex justify-center mt-16 mb-8 md:mt-24 md:mb-12'>
      <div className=''>
        <h2 className='text-center text-xl font-medium tracking-wider'>{title}</h2>
      </div>
    </div>
  );
};

export { CardBlockHeader };
