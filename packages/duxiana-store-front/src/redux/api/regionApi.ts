import { IRegion } from '../types';
import { api } from './baseApi';

export const regionApi = api.injectEndpoints({
  endpoints: (builder) => ({
    getRegions: builder.query<IRegion[], void>({
      query() {
        return {
          url: 'store/regions',
          method: 'GET',
        };
      },
      transformResponse: (response: { regions: IRegion[] }) => {
        return response.regions;
      },
    }),
  }),
});

export const { useGetRegionsQuery } = regionApi;
