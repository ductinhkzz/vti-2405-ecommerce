import { IOrder } from '../types/order.type';
import { api } from './baseApi';

export const paymentApi = api.injectEndpoints({
  endpoints: (builder) => ({
    getOrder: builder.query<IOrder, { order_id: string }>({
      query({ order_id }) {
        return {
          url: `store/orders/${order_id}`,
          method: 'GET',
        };
      },
      transformResponse: (response: { order: IOrder }) => {
        return response.order;
      },
    }),
  }),
});

export const { useGetOrderQuery } = paymentApi;
