import { ICart } from '../types';
import { api } from './baseApi';

export const paymentApi = api.injectEndpoints({
  endpoints: (builder) => ({
    createPaymentSession: builder.mutation<ICart, { region_id: string }>({
      query(arg) {
        return {
          url: `store/carts`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
    }),
  }),
});

export const { useCreatePaymentSessionMutation } = paymentApi;
