import { IShippingOption } from '../types';
import { api } from './baseApi';

export const shippingOptionApi = api.injectEndpoints({
  endpoints: (builder) => ({
    getShippingOptions: builder.query<IShippingOption[], { cart_id: string }>({
      query({ cart_id }) {
        return {
          url: `/store/shipping-options/${cart_id}`,
          method: 'GET',
        };
      },
      transformResponse: (response: { shipping_options: IShippingOption[] }) => {
        return response.shipping_options;
      },
    }),
  }),
});

export const { useGetShippingOptionsQuery } = shippingOptionApi;
