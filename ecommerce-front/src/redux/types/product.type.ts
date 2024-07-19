import { IBase } from './common';
import { IImage } from './image.type';

export interface IProductCollection extends IBase {
  title: string;
  handle: string;
  metadata: Record<string, string>;
}

export interface IProductCategory extends IBase {
  name: string;
  handle: string;
  metadata: Record<string, string>;
}

export interface IProduct extends IBase {
  title: string;
  subtitle: string;
  images: IImage[];
  handle: string;
  metadata: Record<string, string>;
  options: IProductOption[];
  thumbnail: string;
  variants?: IProductVariant[];
}

export interface IProductOption extends IBase {
  title: string;
  values: IProductOptionValue[];
}

export interface IProductOptionValue extends IBase {
  value: string;
  option_id: string;
  variant_id: string;
}

export interface IProductVariant extends IBase {
  title: string;
  inventory_quantity: number;
  length: number | null;
  width: number | null;
  height: number | null;
  weight: number | null;
  options: IProductVariantOption[];
  prices: IPrice[];
}

export interface IProductVariantOption extends IBase {
  value: string;
  variant_id: string;
  option_id: string;
}

export interface IPrice extends IBase {
  amount: number;
  currency_code: string;
  variant_id: string;
  max_quantity: number | null;
  min_quantity: number | null;
}

export type GetProductsRequest = {
  limit?: number;
  offset?: number;
  collection_id?: string[];
}

export type GetProductsResponse = {
  count: number;
  limit: number;
  offset: number;
  products: IProduct[];
};
