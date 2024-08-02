import ItemListFull from './ItemListFull';
import ItemListPreview from './ItemListPreview';
import { ItemsTemplateProps } from './types';

const ItemsTemplate = ({ type, ...rest }: ItemsTemplateProps) => {
  switch (type) {
    case 'full':
      return <ItemListFull {...rest} />;
    case 'preview':
      return <ItemListPreview {...rest} />;
    default:
      console.error(`${type} in component ItemsTemplate is not implement.`);
      return null;
  }
};

export { ItemsTemplate };
