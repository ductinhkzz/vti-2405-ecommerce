import { ILineItem, IRegion } from '@/redux/types';

export type ItemListProps = {
  items?: ILineItem[];
  region?: IRegion;
};

export type LineItemPriceProps = Required<Pick<ItemListProps, 'region'>> & {
  item: ILineItem;
  style?: 'default' | 'tight';
};

export type ItemProps = Pick<LineItemPriceProps, 'item' | 'region'> & {
  type?: 'full' | 'preview';
};

export type ItemsTemplateProps = ItemListProps & {
  type?: 'full' | 'preview';
};
