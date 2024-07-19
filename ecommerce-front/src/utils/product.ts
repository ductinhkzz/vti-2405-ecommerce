import { IProductVariant } from '@/redux/types';

export const getMinPriceProduct = (variants: IProductVariant[] = []) => {
  const prices = variants.map((variant) => variant.prices ?? []).flat();

  if (prices.length === 0) {
    return null;
  }

  return prices.reduce((pre, curr) => {
    if (pre.amount < curr.amount) {
      return curr;
    }

    return pre;
  }, prices[0]);
};
