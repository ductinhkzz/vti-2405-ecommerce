import { ButtonProps, Button } from './Button';

interface ButtonLoadingProps extends ButtonProps {
  isLoading?: boolean;
}

const ButtonLoading = ({ isLoading, children, ...props }: ButtonLoadingProps) => {
  return (
    <Button {...props} disabled={isLoading || props.disabled}>
      {!isLoading ? children : 'Loading...'}
    </Button>
  );
};

export { ButtonLoading };
