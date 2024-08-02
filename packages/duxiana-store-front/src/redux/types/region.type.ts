import { IBase } from './common';

export interface ICountry {
  id: number;
  display_name: string;
  iso_2: string;
  iso_3: string;
  name: string;
  num_code: string;
  region_id: string;
}

export interface IRegion extends IBase {
  name: string;
  currency_code: string;
  tax_rate: number;
  tax_code: string | null;
  gift_cards_taxable: boolean;
  automatic_taxes: boolean;
  tax_provider_id: string | null;
  countries: ICountry[];
}
