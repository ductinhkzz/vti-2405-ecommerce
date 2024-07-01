import { ConfigureStoreOptions, configureStore } from '@reduxjs/toolkit';

import { api } from './api';
import counterReducer from './reducers/counterReducer';
import authReducer from './reducers/authReducer';

export const createStore = (options?: ConfigureStoreOptions['preloadedState'] | undefined) =>
  configureStore({
    reducer: {
      counter: counterReducer,
      auth: authReducer,
      [api.reducerPath]: api.reducer,
    },
    middleware: (getDefaultMiddleware) => getDefaultMiddleware().concat(api.middleware),
    ...options,
  });

export const store = createStore();

export type RootState = ReturnType<typeof store.getState>;

export type AppDispatch = typeof store.dispatch;
