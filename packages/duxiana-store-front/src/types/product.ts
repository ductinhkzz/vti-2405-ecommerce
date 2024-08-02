import { IProduct, IProductVariant, IRegion } from '@/redux/types';

export type PricedProduct = Omit<Partial<IProduct>, 'variants'> & {
  variants: PricedVariant[];
};

export type PricedVariant = Partial<IProductVariant> & ProductVariantPricing;

export type RegionInfo = Pick<IRegion, 'currency_code' | 'tax_code' | 'tax_rate'>;

export type CalculatedVariant = IProductVariant & {
  calculated_price: number;
  calculated_price_type: 'sale' | 'default';
  original_price: number;
};

export interface IMoneyAmount {
  currency_code: string;
  // currency?: Currency;
  amount: number;
  min_quantity: number | null;
  max_quantity: number | null;
  price_list_id: string | null;
  // price_list: PriceList | null;
  // variants: ProductVariant[];
  // variant: ProductVariant;
  variant_id: string;
  region_id: string;
  // region?: Region;
}

export type ProductVariantPricing = {
  /**
   * The list of prices.
   */
  prices: IMoneyAmount[];
  /**
   * The original price of the variant.
   */
  original_price: number | null;
  /**
   * The lowest price among the retrieved prices.
   */
  calculated_price: number | null;
  /**
   * Whether the `original_price` field includes taxes.
   *
   * @featureFlag tax_inclusive_pricing
   */
  original_price_includes_tax?: boolean | null;
  /**
   * Whether the `calculated_price` field includes taxes.
   *
   * @featureFlag tax_inclusive_pricing
   */
  calculated_price_includes_tax?: boolean | null;
  /**
   * Either `default` if the `calculated_price` is the original price, or the type of the price list applied, if any.
   */
  calculated_price_type?: string | null;
} & TaxedPricing;
/**
 * Pricing fields related to taxes.
 */
export type TaxedPricing = {
  /**
   * The price after applying the tax amount on the original price.
   */
  original_price_incl_tax: number | null;
  /**
   * The price after applying the tax amount on the calculated price.
   */
  calculated_price_incl_tax: number | null;
  /**
   * The tax amount applied to the original price.
   */
  original_tax: number | null;
  /**
   * The tax amount applied to the calculated price.
   */
  calculated_tax: number | null;
  /**
   * The list of tax rates.
   */
  // tax_rates: TaxServiceRate[] | null;
};
