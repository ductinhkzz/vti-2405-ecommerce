import { createApi, fetchBaseQuery, retry } from '@reduxjs/toolkit/query/react';

const baseUrl = import.meta.env.APP_API_URL || 'http://localhost:9000';

const baseQuery = fetchBaseQuery({
  baseUrl,
  credentials: 'include',
});

const baseQueryWithRetry = retry(baseQuery, { maxRetries: 1 });

export const api = createApi({
  reducerPath: 'rootApi',
  baseQuery: baseQueryWithRetry,
  tagTypes: ['Auth'],
  endpoints: () => ({}),
});
