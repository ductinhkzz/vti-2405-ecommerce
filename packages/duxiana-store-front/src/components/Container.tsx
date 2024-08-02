import React from 'react';
import { twMerge } from 'tailwind-merge';

type ContainerProps = {
  className?: string;
  children?: React.ReactNode;
};

const Container = ({ children, className }: ContainerProps) => {
  return <div className={twMerge('flex justify-center items-center my-16 md:my-24', className)}>{children}</div>;
};

export { Container };
