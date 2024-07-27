import { ICart } from '../types';
import { api } from './baseApi';

export const cartApi = api.injectEndpoints({
  endpoints: (builder) => ({
    getCart: builder.query<ICart, string>({
      query(id) {
        return {
          url: `store/carts/${id}`,
          method: 'GET',
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      providesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    createCart: builder.mutation<ICart, { region_id: string }>({
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
    addLineItemsToCard: builder.mutation<ICart, { cart_id: string; variant_id: string; quantity: number }>({
      query({ cart_id, ...arg }) {
        return {
          url: `/store/carts/${cart_id}/line-items`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
    }),
    updateLineItem: builder.mutation<ICart, { cart_id: string; line_id: string; quantity: number }>({
      query({ cart_id, line_id, ...arg }) {
        return {
          url: `/store/carts/${cart_id}/line-items/${line_id}`,
          method: 'POST',
          body: { ...arg },
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      invalidatesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
    createCartPaymentSession: builder.mutation<ICart, { cart_id: string }>({
      query({ cart_id }) {
        return {
          url: `/store/carts/${cart_id}/payment-sessions`,
          method: 'POST',
        };
      },
      transformResponse: (response: { cart: ICart }) => {
        return response.cart;
      },
      invalidatesTags: (arg) => [{ type: 'Cart', id: arg?.id }],
    }),
  }),
});

export const {
  useGetCartQuery,
  useCreateCartMutation,
  useAddLineItemsToCardMutation,
  useUpdateLineItemMutation,
  useCreateCartPaymentSessionMutation,
} = cartApi;
