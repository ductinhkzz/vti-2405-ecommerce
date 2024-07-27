import { IBase } from './common';

export interface IShippingOption extends IBase {
  name: string;
  region_id: string;
  profile_id: string;
  amount: number;
  provider_id: string;
  is_return: boolean;
}
