import React from 'react';

const usePageTitle = (title: string) => {
  React.useEffect(() => {
    document.title = title;
  }, [title]);
};

export { usePageTitle };
