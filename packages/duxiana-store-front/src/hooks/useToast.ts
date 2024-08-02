import { toast } from 'react-toastify';

export const useToast = () => {
  return (message: string, type: 'info' | 'success' | 'warning' | 'error' = 'info') => toast[type](message);
};
