import { IAddress } from './address.type';
import { ICustomer } from './auth.type';
import { IDiscount, ILineItem, IPayment, IShippingMethod } from './cart.type';
import { IBase } from './common';
import { IRegion } from './region.type';

export interface IOrder extends IBase {
  email: string;
  display_id: number;
  fulfillment_status: string;
  payment_status: string;
  shipping_address: IAddress;
  items: ILineItem[];
  region_id: string;
  region: IRegion;
  discounts: IDiscount[];
  customer_id: string;
  customer: ICustomer;
  payments: IPayment[];
  shipping_methods: IShippingMethod[];
  shipping_total?: number;
  discount_total?: number;
  shipping_tax_total?: number | null;
  tax_total?: number | null;
  refunded_total?: number;
  total?: number;
  subtotal?: number;
  refundable_amount?: number;
  gift_card_total?: number;
  gift_card_tax_total?: number;
}
