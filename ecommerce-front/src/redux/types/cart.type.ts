import { IAddress } from './address.type';
import { ICustomer } from './auth.type';
import { IBase } from './common';
import { IProductVariant } from './product.type';
import { IRegion } from './region.type';

export declare enum CartType {
  DEFAULT = 'default',
  SWAP = 'swap',
  DRAFT_ORDER = 'draft_order',
  PAYMENT_LINK = 'payment_link',
  CLAIM = 'claim',
}

export interface ILineItem extends IBase {
  cart_id: string;
  cart: ICart;
  order_id: string | null;
  // order: Order;
  swap_id: string;
  // swap: Swap;
  claim_order_id: string;
  // claim_order: ClaimOrder;
  // tax_lines: LineItemTaxLine[];
  // adjustments: LineItemAdjustment[];
  original_item_id?: string | null;
  order_edit_id?: string | null;
  // order_edit?: OrderEdit | null;
  title: string;
  description: string | null;
  thumbnail: string | null;
  is_return: boolean;
  is_giftcard: boolean;
  should_merge: boolean;
  allow_discounts: boolean;
  has_shipping: boolean | null;
  unit_price: number;
  variant_id: string | null;
  variant: IProductVariant;
  product_id: string | null;
  quantity: number;
  fulfilled_quantity: number | null;
  returned_quantity: number | null;
  shipped_quantity: number | null;
  metadata: Record<string, unknown>;
  includes_tax: boolean;
  refundable?: number | null;
  subtotal?: number | null;
  tax_total?: number | null;
  total?: number | null;
  original_total?: number | null;
  original_tax_total?: number | null;
  discount_total?: number | null;
  raw_discount_total?: number | null;
  gift_card_total?: number | null;
}

export interface IDiscount extends IBase {
  code: string;
  is_dynamic: boolean;
  rule_id: string;
  // rule: DiscountRule;
  is_disabled: boolean;
  parent_discount_id: string;
  parent_discount: IDiscount;
  starts_at: Date;
  ends_at: Date | null;
  valid_duration: string | null;
  regions: IRegion[];
  usage_limit: number | null;
  usage_count: number;
  metadata: Record<string, unknown>;
}

export interface IPaymentSession extends IBase {
  cart_id: string | null;
  cart: ICart;
  provider_id: string;
  is_selected: boolean | null;
  is_initiated: boolean;
  status: string;
  data: Record<string, unknown>;
  idempotency_key: string;
  amount: number;
  payment_authorized_at: Date;
}

export interface IPayment extends IBase {
  swap_id: string;
  // swap: Swap;
  cart_id: string;
  cart: ICart;
  order_id: string;
  // order: Order;
  amount: number;
  currency_code: string;
  // currency: Currency;
  amount_refunded: number;
  provider_id: string;
  data: Record<string, unknown>;
  captured_at: Date | string;
  canceled_at: Date | string;
  metadata: Record<string, unknown>;
  idempotency_key: string;
}

export interface IShippingMethod {
  id: string;
  shipping_option_id: string;
  order_id: string;
  // order: Order;
  claim_order_id: string | null;
  // claim_order: ClaimOrder;
  cart_id: string;
  cart: ICart;
  swap_id: string;
  // swap: Swap;
  return_id: string;
  // return_order: Return;
  // shipping_option: ShippingOption;
  // tax_lines: ShippingMethodTaxLine[];
  price: number;
  data: Record<string, unknown>;
  includes_tax: boolean;
  subtotal?: number;
  total?: number;
  tax_total?: number;
}

export interface ICart extends IBase {
  email: string;
  billing_address_id: string;
  billing_address: IAddress;
  shipping_address_id: string;
  shipping_address: IAddress | null;
  items: ILineItem[];
  region_id: string;
  region: IRegion;
  discounts: IDiscount[];
  // gift_cards: GiftCard[];
  customer_id: string;
  customer: ICustomer;
  payment_session: IPaymentSession | null;
  payment_sessions: IPaymentSession[];
  payment_id: string;
  payment: IPayment;
  shipping_methods: IShippingMethod[];
  type: CartType;
  completed_at: Date;
  payment_authorized_at: Date;
  idempotency_key: string;
  context: Record<string, unknown>;
  metadata: Record<string, unknown>;
  sales_channel_id: string | null;
  // sales_channel: SalesChannel;
  shipping_total?: number;
  discount_total?: number;
  raw_discount_total?: number;
  item_tax_total?: number | null;
  shipping_tax_total?: number | null;
  tax_total?: number | null;
  refunded_total?: number;
  total?: number;
  subtotal?: number;
  refundable_amount?: number;
  gift_card_total?: number;
  gift_card_tax_total?: number;
}
