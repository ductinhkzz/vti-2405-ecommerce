import { isEmpty } from 'lodash-es';

import { IProduct, IProductVariant } from '@/redux/types';
import { CalculatedVariant, RegionInfo } from '@/types';

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

const noDivisionCurrencies = [
  'krw',
  'jpy',
  'vnd',
  'clp',
  'pyg',
  'xaf',
  'xof',
  'bif',
  'djf',
  'gnf',
  'kmf',
  'mga',
  'rwf',
  'xpf',
  'htg',
  'vuv',
  'xag',
  'xdr',
  'xau',
];

const convertToDecimal = (amount: number, region: RegionInfo) => {
  const divisor = noDivisionCurrencies.includes(region?.currency_code?.toLowerCase()) ? 1 : 100;

  return Math.floor(amount) / divisor;
};

const getTaxRate = (region?: RegionInfo) => {
  return region && !isEmpty(region) ? region?.tax_rate / 100 : 0;
};

type ComputeAmountParams = {
  amount: number;
  region: RegionInfo;
  includeTaxes?: boolean;
};

/**
 * Takes an amount, a region, and returns the amount as a decimal including or excluding taxes
 */
export const computeAmount = ({ amount, region, includeTaxes = true }: ComputeAmountParams) => {
  const toDecimal = convertToDecimal(amount, region);

  const taxRate = includeTaxes ? getTaxRate(region) : 0;

  const amountWithTaxes = toDecimal * (1 + taxRate);

  return amountWithTaxes;
};

type ConvertToLocaleParams = {
  amount: number;
  currency_code: string;
  minimumFractionDigits?: number;
  maximumFractionDigits?: number;
  locale?: string;
};

const convertToLocale = ({
  amount,
  currency_code,
  minimumFractionDigits,
  maximumFractionDigits,
  locale = 'en-US',
}: ConvertToLocaleParams) => {
  return currency_code && !isEmpty(currency_code)
    ? new Intl.NumberFormat(locale, {
        style: 'currency',
        currency: currency_code,
        minimumFractionDigits,
        maximumFractionDigits,
      }).format(amount)
    : amount.toString();
};

type FormatAmountParams = {
  amount: number;
  region: RegionInfo;
  includeTaxes?: boolean;
  minimumFractionDigits?: number;
  maximumFractionDigits?: number;
  locale?: string;
};

export const formatAmount = ({ amount, region, includeTaxes = true, ...rest }: FormatAmountParams) => {
  const taxAwareAmount = computeAmount({
    amount,
    region,
    includeTaxes,
  });

  return convertToLocale({
    amount: taxAwareAmount,
    currency_code: region.currency_code,
    ...rest,
  });
};

export function getProductPrice({
  product,
  variantId,
  region,
}: {
  product: IProduct;
  variantId?: string;
  region: RegionInfo;
}) {
  if (!product?.id) {
    throw new Error('No product provided');
  }

  const getPercentageDiff = (original: number, calculated: number) => {
    const diff = original - calculated;
    const decrease = (diff / original) * 100;

    return decrease.toFixed();
  };

  const cheapestPrice = () => {
    if (!product.variants || !region) {
      return null;
    }

    const variants = product.variants as unknown as CalculatedVariant[];

    const cheapestVariant = variants.reduce((prev, curr) => {
      return prev.calculated_price < curr.calculated_price ? prev : curr;
    }, variants?.[0]);

    return {
      calculated_price_number: cheapestVariant.calculated_price,
      calculated_price: formatAmount({
        amount: cheapestVariant.calculated_price,
        region,
        includeTaxes: false,
      }),
      original_price_number: cheapestVariant.original_price,
      original_price: formatAmount({
        amount: cheapestVariant.original_price,
        region,
        includeTaxes: false,
      }),
      price_type: cheapestVariant.calculated_price_type,
      percentage_diff: getPercentageDiff(cheapestVariant.original_price, cheapestVariant.calculated_price),
    };
  };

  const variantPrice = () => {
    if (!product || !variantId || !region) {
      return null;
    }

    const variant = product.variants.find(
      (v) => v.id === variantId || v.sku === variantId,
    ) as unknown as CalculatedVariant;

    if (!variant) {
      return null;
    }

    return {
      calculated_price_number: variant.calculated_price,
      calculated_price: formatAmount({
        amount: variant.calculated_price,
        region,
        includeTaxes: false,
      }),
      original_price_number: variant.original_price,
      original_price: formatAmount({
        amount: variant.original_price,
        region,
        includeTaxes: false,
      }),
      price_type: variant.calculated_price_type,
      percentage_diff: getPercentageDiff(variant.original_price, variant.calculated_price),
    };
  };

  return {
    product,
    cheapestPrice: cheapestPrice(),
    variantPrice: variantPrice(),
  };
}
