import { Dialog, DialogPanel, DialogTitle } from '@headlessui/react';
import { ReactNode } from 'react';

export interface ModalProps {
  isOpen: boolean;
  onClose: () => void;
  children?: ReactNode;
  title: string;
}

const Modal = ({ onClose, isOpen, children, title }: ModalProps) => {
  return (
    <Dialog open={isOpen} as='div' className='relative z-30 focus:outline-none' onClose={onClose}>
      <div className='fixed inset-0 z-10 w-screen overflow-y-auto backdrop-brightness-50'>
        <div className='flex min-h-full items-center justify-center p-4'>
          <DialogPanel className='relative max-w-lg transform overflow-hidden rounded-lg bg-white text-left shadow-xl transition-all sm:w-full'>
            <DialogTitle as='h3' className='text-base/7 font-medium px-6 py-4'>
              {title}
            </DialogTitle>
            {children}
          </DialogPanel>
        </div>
      </div>
    </Dialog>
  );
};

export { Modal };
