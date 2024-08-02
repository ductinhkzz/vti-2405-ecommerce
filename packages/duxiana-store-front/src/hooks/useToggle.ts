import { useState } from 'react';

export const useToggle = (initialState = false) => {
  const [state, setState] = useState(initialState);

  const onOpen = () => setState(true);
  const onClose = () => setState(false);
  const toggle = () => setState((pre) => !pre);

  return [state, onOpen, onClose, toggle] as const;
};
