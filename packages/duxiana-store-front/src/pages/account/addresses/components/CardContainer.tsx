import React from 'react';

type CardContainerProps = {
  children?: React.ReactNode;
};

const CardContainer = ({ children }: CardContainerProps) => {
  return (
    <div className='border rounded-rounded p-5 min-h-[220px] h-full w-full flex flex-col justify-between transition-colors'>
      <div className='flex flex-col h-full'>{children}</div>
    </div>
  );
};

export default CardContainer;
