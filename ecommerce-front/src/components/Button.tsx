import clsx from 'clsx';
import React from 'react';

type ButtonVariant = 'outlined' | 'text';

type ButtonColor = 'primary' | 'secondary';

interface ButtonProps {
  variant?: ButtonVariant;
  color?: ButtonColor;
  children?: React.ReactNode;
}

const BaseButtonClass = 'transition-all delay-75 border';

const ButtonVariantClass: Record<ButtonVariant, string> = {
  outlined: 'border-solid bg-transparent px-4 py-2 text-sm hover:text-gray-900',
  text: 'bg-transparent px-4 py-2 text-sm hover:border hover:border-solid',
};

const ButtonColorClass: Record<ButtonColor, Record<ButtonVariant, string>> = {
  primary: {
    outlined: 'border-white text-white hover:bg-white hover:text-gray-900',
    text: 'border-transparent text-white hover:border-white',
  },
  secondary: {
    outlined: 'border-gray-900 text-gray-900 hover:bg-gray-900 hover:text-white',
    text: 'border-transparent text-gray-900 hover:border-gray-900',
  },
};

const Button = ({ variant = 'outlined', color = 'primary', children }: ButtonProps) => {
  return (
    <button className={clsx(BaseButtonClass, ButtonVariantClass[variant], ButtonColorClass[color][variant])}>
      {children}
    </button>
  );
};

export { Button };
