import { ExclamationTriangleIcon } from '@heroicons/react/24/outline';
import { Modal, ModalProps } from './Modal';

const WarningModal = ({ children, ...props }: ModalProps) => {
  return (
    <Modal {...props}>
      <div className='px-6 flex flex-col justify-center items-center'>
        <ExclamationTriangleIcon className='w-12 h-12 text-yellow-400' />
        {children}
      </div>
    </Modal>
  );
};

export { WarningModal };
