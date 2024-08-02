import { useNavigate, useParams } from 'react-router-dom';

type TabType = 'create' | 'edit' | 'delete';

const useCRUD = ({ path }: { path: string }) => {
  const navigate = useNavigate();
  const { type, id } = useParams<'type' | 'id'>();

  const onOpen = <T extends TabType = 'create'>(type: T, id?: T extends 'edit' | 'delete' ? string : never) => {
    if (type === 'create') {
      navigate(`${path}/${type}`);
      return;
    }
    navigate(`${path}/${type}/${id}`);
  };

  const onClose = () => {
    navigate(path);
  };

  return {
    type,
    id,
    onOpen,
    onClose,
  };
};

export { useCRUD };
