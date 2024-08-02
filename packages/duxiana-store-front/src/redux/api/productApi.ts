import { objectToParams } from '@/utils';
import { GetProductsRequest, GetProductsResponse, IProduct, IProductCategory, IProductCollection } from '../types';
import { api } from './baseApi';

export const productApi = api.injectEndpoints({
  endpoints: (builder) => ({
    getProductCollections: builder.query<IProductCollection[], { handle?: string[] }>({
      query(args) {
        const params = objectToParams({ ...args });
        return {
          url: 'store/collections?' + params,
          method: 'GET',
        };
      },
      transformResponse: (response: { collections: IProductCollection[] }) => {
        return response.collections;
      },
    }),
    getProductCollection: builder.query<IProductCollection, { id: string }>({
      query({ id }) {
        return {
          url: `store/collections/${id}`,
          method: 'GET',
        };
      },
      transformResponse: (response: { collection: IProductCollection }) => {
        return response.collection;
      },
    }),
    getProductCategories: builder.query<IProductCategory[], void>({
      query() {
        return {
          url: 'store/product-categories',
          method: 'GET',
        };
      },
      transformResponse: (response: { product_categories: IProductCategory[] }) => {
        return response.product_categories;
      },
    }),
    getProducts: builder.query<GetProductsResponse, GetProductsRequest>({
      query(args) {
        const params = objectToParams({ ...args });

        return {
          url: 'store/products/?' + params,
          method: 'GET',
        };
      },
    }),
    getProduct: builder.query<IProduct, { id: string; region_id?: string }>({
      query({ id, ...arg }) {
        return {
          url: `store/products/${id}`,
          method: 'GET',
          params: { ...arg },
        };
      },
      transformResponse: (response: { product: IProduct }) => {
        return response.product;
      },
    }),
  }),
});

export const {
  useGetProductCollectionsQuery,
  useGetProductCategoriesQuery,
  useGetProductCollectionQuery,
  useGetProductsQuery,
  useGetProductQuery,
} = productApi;
