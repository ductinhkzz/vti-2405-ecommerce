PGDMP     	    3                |            medusa-HYIt    15.2    15.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    84204    medusa-HYIt    DATABASE     �   CREATE DATABASE "medusa-HYIt" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "medusa-HYIt";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    5            *           1247    86380    PAYMENT_COLLECTION_STATUS_ENUM    TYPE     �   CREATE TYPE public."PAYMENT_COLLECTION_STATUS_ENUM" AS ENUM (
    'not_paid',
    'awaiting',
    'authorized',
    'partially_authorized',
    'canceled'
);
 3   DROP TYPE public."PAYMENT_COLLECTION_STATUS_ENUM";
       public          postgres    false    5            '           1247    86377    PAYMENT_COLLECTION_TYPE_ENUM    TYPE     P   CREATE TYPE public."PAYMENT_COLLECTION_TYPE_ENUM" AS ENUM (
    'order_edit'
);
 1   DROP TYPE public."PAYMENT_COLLECTION_TYPE_ENUM";
       public          postgres    false    5            �           1247    85812    cart_type_enum    TYPE     }   CREATE TYPE public.cart_type_enum AS ENUM (
    'default',
    'swap',
    'draft_order',
    'payment_link',
    'claim'
);
 !   DROP TYPE public.cart_type_enum;
       public          postgres    false    5                       1247    85269    claim_item_reason_enum    TYPE     �   CREATE TYPE public.claim_item_reason_enum AS ENUM (
    'missing_item',
    'wrong_item',
    'production_failure',
    'other'
);
 )   DROP TYPE public.claim_item_reason_enum;
       public          postgres    false    5            �           1247    85298 #   claim_order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.claim_order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 6   DROP TYPE public.claim_order_fulfillment_status_enum;
       public          postgres    false    5            �           1247    85290    claim_order_payment_status_enum    TYPE     m   CREATE TYPE public.claim_order_payment_status_enum AS ENUM (
    'na',
    'not_refunded',
    'refunded'
);
 2   DROP TYPE public.claim_order_payment_status_enum;
       public          postgres    false    5            �           1247    85318    claim_order_type_enum    TYPE     R   CREATE TYPE public.claim_order_type_enum AS ENUM (
    'refund',
    'replace'
);
 (   DROP TYPE public.claim_order_type_enum;
       public          postgres    false    5            �           1247    86030     discount_condition_operator_enum    TYPE     X   CREATE TYPE public.discount_condition_operator_enum AS ENUM (
    'in',
    'not_in'
);
 3   DROP TYPE public.discount_condition_operator_enum;
       public          postgres    false    5            �           1247    86019    discount_condition_type_enum    TYPE     �   CREATE TYPE public.discount_condition_type_enum AS ENUM (
    'products',
    'product_types',
    'product_collections',
    'product_tags',
    'customer_groups'
);
 /   DROP TYPE public.discount_condition_type_enum;
       public          postgres    false    5                       1247    84398    discount_rule_allocation_enum    TYPE     V   CREATE TYPE public.discount_rule_allocation_enum AS ENUM (
    'total',
    'item'
);
 0   DROP TYPE public.discount_rule_allocation_enum;
       public          postgres    false    5                       1247    84390    discount_rule_type_enum    TYPE     k   CREATE TYPE public.discount_rule_type_enum AS ENUM (
    'fixed',
    'percentage',
    'free_shipping'
);
 *   DROP TYPE public.discount_rule_type_enum;
       public          postgres    false    5            �           1247    85564    draft_order_status_enum    TYPE     T   CREATE TYPE public.draft_order_status_enum AS ENUM (
    'open',
    'completed'
);
 *   DROP TYPE public.draft_order_status_enum;
       public          postgres    false    5            �           1247    85768    invite_role_enum    TYPE     \   CREATE TYPE public.invite_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 #   DROP TYPE public.invite_role_enum;
       public          postgres    false    5            =           1247    84630    order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 0   DROP TYPE public.order_fulfillment_status_enum;
       public          postgres    false    5                       1247    86314    order_item_change_type_enum    TYPE     q   CREATE TYPE public.order_item_change_type_enum AS ENUM (
    'item_add',
    'item_remove',
    'item_update'
);
 .   DROP TYPE public.order_item_change_type_enum;
       public          postgres    false    5            @           1247    84650    order_payment_status_enum    TYPE     �   CREATE TYPE public.order_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'partially_refunded',
    'refunded',
    'canceled',
    'requires_action'
);
 ,   DROP TYPE public.order_payment_status_enum;
       public          postgres    false    5            :           1247    84619    order_status_enum    TYPE     �   CREATE TYPE public.order_status_enum AS ENUM (
    'pending',
    'completed',
    'archived',
    'canceled',
    'requires_action'
);
 $   DROP TYPE public.order_status_enum;
       public          postgres    false    5                       1247    84424    payment_session_status_enum    TYPE     �   CREATE TYPE public.payment_session_status_enum AS ENUM (
    'authorized',
    'pending',
    'requires_more',
    'error',
    'canceled'
);
 .   DROP TYPE public.payment_session_status_enum;
       public          postgres    false    5                       1247    86164    price_list_status_enum    TYPE     Q   CREATE TYPE public.price_list_status_enum AS ENUM (
    'active',
    'draft'
);
 )   DROP TYPE public.price_list_status_enum;
       public          postgres    false    5                       1247    86158    price_list_type_enum    TYPE     P   CREATE TYPE public.price_list_type_enum AS ENUM (
    'sale',
    'override'
);
 '   DROP TYPE public.price_list_type_enum;
       public          postgres    false    5            �           1247    85747    product_status_enum    TYPE     q   CREATE TYPE public.product_status_enum AS ENUM (
    'draft',
    'proposed',
    'published',
    'rejected'
);
 &   DROP TYPE public.product_status_enum;
       public          postgres    false    5            �           1247    85346    refund_reason_enum    TYPE     v   CREATE TYPE public.refund_reason_enum AS ENUM (
    'discount',
    'return',
    'swap',
    'claim',
    'other'
);
 %   DROP TYPE public.refund_reason_enum;
       public          postgres    false    5            �           1247    85672    return_status_enum    TYPE     z   CREATE TYPE public.return_status_enum AS ENUM (
    'requested',
    'received',
    'requires_action',
    'canceled'
);
 %   DROP TYPE public.return_status_enum;
       public          postgres    false    5            �           1247    84347    shipping_option_price_type_enum    TYPE     b   CREATE TYPE public.shipping_option_price_type_enum AS ENUM (
    'flat_rate',
    'calculated'
);
 2   DROP TYPE public.shipping_option_price_type_enum;
       public          postgres    false    5            �           1247    84334 %   shipping_option_requirement_type_enum    TYPE     m   CREATE TYPE public.shipping_option_requirement_type_enum AS ENUM (
    'min_subtotal',
    'max_subtotal'
);
 8   DROP TYPE public.shipping_option_requirement_type_enum;
       public          postgres    false    5                       1247    84363    shipping_profile_type_enum    TYPE     h   CREATE TYPE public.shipping_profile_type_enum AS ENUM (
    'default',
    'gift_card',
    'custom'
);
 -   DROP TYPE public.shipping_profile_type_enum;
       public          postgres    false    5                       1247    86293    swap_fulfillment_status_enum    TYPE     �   CREATE TYPE public.swap_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'fulfilled',
    'shipped',
    'partially_shipped',
    'canceled',
    'requires_action'
);
 /   DROP TYPE public.swap_fulfillment_status_enum;
       public          postgres    false    5            �           1247    85696    swap_payment_status_enum    TYPE     �   CREATE TYPE public.swap_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'confirmed',
    'canceled',
    'difference_refunded',
    'partially_refunded',
    'refunded',
    'requires_action'
);
 +   DROP TYPE public.swap_payment_status_enum;
       public          postgres    false    5            �           1247    85788    user_role_enum    TYPE     Z   CREATE TYPE public.user_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 !   DROP TYPE public.user_role_enum;
       public          postgres    false    5            �            1259    84694    address    TABLE     g  CREATE TABLE public.address (
    id character varying NOT NULL,
    customer_id character varying,
    company character varying,
    first_name character varying,
    last_name character varying,
    address_1 character varying,
    address_2 character varying,
    city character varying,
    country_code character varying,
    province character varying,
    postal_code character varying,
    phone character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.address;
       public         heap    postgres    false    5            6           1259    86462    analytics_config    TABLE     w  CREATE TABLE public.analytics_config (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    user_id character varying NOT NULL,
    opt_out boolean DEFAULT false NOT NULL,
    anonymize boolean DEFAULT false NOT NULL
);
 $   DROP TABLE public.analytics_config;
       public         heap    postgres    false    5            .           1259    86228 	   batch_job    TABLE     |  CREATE TABLE public.batch_job (
    id character varying NOT NULL,
    type text NOT NULL,
    created_by character varying,
    context jsonb,
    result jsonb,
    dry_run boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    pre_processed_at timestamp with time zone,
    confirmed_at timestamp with time zone,
    processing_at timestamp with time zone,
    completed_at timestamp with time zone,
    failed_at timestamp with time zone,
    canceled_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public.batch_job;
       public         heap    postgres    false    5            @           1259    86723    block_section    TABLE     q  CREATE TABLE public.block_section (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    title character varying,
    sub_title character varying,
    description character varying,
    media jsonb NOT NULL,
    colection_id character varying NOT NULL
);
 !   DROP TABLE public.block_section;
       public         heap    postgres    false    5            �            1259    84481    cart    TABLE     �  CREATE TABLE public.cart (
    id character varying NOT NULL,
    email character varying,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    customer_id character varying,
    payment_id character varying,
    type public.cart_type_enum DEFAULT 'default'::public.cart_type_enum NOT NULL,
    completed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    context jsonb,
    payment_authorized_at timestamp with time zone,
    sales_channel_id character varying
);
    DROP TABLE public.cart;
       public         heap    postgres    false    1229    1229    5                       1259    84794    cart_discounts    TABLE     {   CREATE TABLE public.cart_discounts (
    cart_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 "   DROP TABLE public.cart_discounts;
       public         heap    postgres    false    5                       1259    84803    cart_gift_cards    TABLE     }   CREATE TABLE public.cart_gift_cards (
    cart_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 #   DROP TABLE public.cart_gift_cards;
       public         heap    postgres    false    5            
           1259    85249    claim_image    TABLE     V  CREATE TABLE public.claim_image (
    id character varying NOT NULL,
    claim_item_id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_image;
       public         heap    postgres    false    5                       1259    85277 
   claim_item    TABLE     �  CREATE TABLE public.claim_item (
    id character varying NOT NULL,
    claim_order_id character varying NOT NULL,
    item_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    reason public.claim_item_reason_enum NOT NULL,
    note character varying,
    quantity integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_item;
       public         heap    postgres    false    1151    5                       1259    85334    claim_item_tags    TABLE     w   CREATE TABLE public.claim_item_tags (
    item_id character varying NOT NULL,
    tag_id character varying NOT NULL
);
 #   DROP TABLE public.claim_item_tags;
       public         heap    postgres    false    5                       1259    85323    claim_order    TABLE       CREATE TABLE public.claim_order (
    id character varying NOT NULL,
    payment_status public.claim_order_payment_status_enum DEFAULT 'na'::public.claim_order_payment_status_enum NOT NULL,
    fulfillment_status public.claim_order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.claim_order_fulfillment_status_enum NOT NULL,
    type public.claim_order_type_enum NOT NULL,
    order_id character varying NOT NULL,
    shipping_address_id character varying,
    refund_amount integer,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean
);
    DROP TABLE public.claim_order;
       public         heap    postgres    false    1157    1160    1163    1157    1160    5                       1259    85258 	   claim_tag    TABLE     (  CREATE TABLE public.claim_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_tag;
       public         heap    postgres    false    5            �            1259    84255    country    TABLE       CREATE TABLE public.country (
    id integer NOT NULL,
    iso_2 character varying NOT NULL,
    iso_3 character varying NOT NULL,
    num_code integer NOT NULL,
    name character varying NOT NULL,
    display_name character varying NOT NULL,
    region_id character varying
);
    DROP TABLE public.country;
       public         heap    postgres    false    5            �            1259    84254    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    223    5            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    222            �            1259    84247    currency    TABLE     �   CREATE TABLE public.currency (
    code character varying NOT NULL,
    symbol character varying NOT NULL,
    symbol_native character varying NOT NULL,
    name character varying NOT NULL,
    includes_tax boolean DEFAULT false NOT NULL
);
    DROP TABLE public.currency;
       public         heap    postgres    false    5                       1259    85798    custom_shipping_option    TABLE     }  CREATE TABLE public.custom_shipping_option (
    id character varying NOT NULL,
    price integer NOT NULL,
    shipping_option_id character varying NOT NULL,
    cart_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 *   DROP TABLE public.custom_shipping_option;
       public         heap    postgres    false    5            �            1259    84681    customer    TABLE       CREATE TABLE public.customer (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    billing_address_id character varying,
    password_hash character varying,
    phone character varying,
    has_account boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.customer;
       public         heap    postgres    false    5            #           1259    85989    customer_group    TABLE     ,  CREATE TABLE public.customer_group (
    id character varying NOT NULL,
    name character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 "   DROP TABLE public.customer_group;
       public         heap    postgres    false    5            $           1259    85999    customer_group_customers    TABLE     �   CREATE TABLE public.customer_group_customers (
    customer_group_id character varying NOT NULL,
    customer_id character varying NOT NULL
);
 ,   DROP TABLE public.customer_group_customers;
       public         heap    postgres    false    5            �            1259    84412    discount    TABLE     �  CREATE TABLE public.discount (
    id character varying NOT NULL,
    code character varying NOT NULL,
    is_dynamic boolean NOT NULL,
    rule_id character varying,
    is_disabled boolean NOT NULL,
    parent_discount_id character varying,
    starts_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    usage_limit integer,
    usage_count integer DEFAULT 0 NOT NULL,
    valid_duration character varying
);
    DROP TABLE public.discount;
       public         heap    postgres    false    5            %           1259    86035    discount_condition    TABLE     �  CREATE TABLE public.discount_condition (
    id character varying NOT NULL,
    type public.discount_condition_type_enum NOT NULL,
    operator public.discount_condition_operator_enum NOT NULL,
    discount_rule_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.discount_condition;
       public         heap    postgres    false    1259    1262    5            &           1259    86047 !   discount_condition_customer_group    TABLE     -  CREATE TABLE public.discount_condition_customer_group (
    customer_group_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 5   DROP TABLE public.discount_condition_customer_group;
       public         heap    postgres    false    5            *           1259    86083    discount_condition_product    TABLE       CREATE TABLE public.discount_condition_product (
    product_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 .   DROP TABLE public.discount_condition_product;
       public         heap    postgres    false    5            '           1259    86056 %   discount_condition_product_collection    TABLE     5  CREATE TABLE public.discount_condition_product_collection (
    product_collection_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 9   DROP TABLE public.discount_condition_product_collection;
       public         heap    postgres    false    5            (           1259    86065    discount_condition_product_tag    TABLE     '  CREATE TABLE public.discount_condition_product_tag (
    product_tag_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 2   DROP TABLE public.discount_condition_product_tag;
       public         heap    postgres    false    5            )           1259    86074    discount_condition_product_type    TABLE     )  CREATE TABLE public.discount_condition_product_type (
    product_type_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 3   DROP TABLE public.discount_condition_product_type;
       public         heap    postgres    false    5                       1259    84785    discount_regions    TABLE        CREATE TABLE public.discount_regions (
    discount_id character varying NOT NULL,
    region_id character varying NOT NULL
);
 $   DROP TABLE public.discount_regions;
       public         heap    postgres    false    5            �            1259    84403    discount_rule    TABLE     �  CREATE TABLE public.discount_rule (
    id character varying NOT NULL,
    description character varying,
    type public.discount_rule_type_enum NOT NULL,
    value integer NOT NULL,
    allocation public.discount_rule_allocation_enum,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 !   DROP TABLE public.discount_rule;
       public         heap    postgres    false    5    1037    1040                       1259    84776    discount_rule_products    TABLE     �   CREATE TABLE public.discount_rule_products (
    discount_rule_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 *   DROP TABLE public.discount_rule_products;
       public         heap    postgres    false    5                       1259    85570    draft_order    TABLE     =  CREATE TABLE public.draft_order (
    id character varying NOT NULL,
    status public.draft_order_status_enum DEFAULT 'open'::public.draft_order_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    order_id character varying,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification_order boolean
);
    DROP TABLE public.draft_order;
       public         heap    postgres    false    1193    1193    5                       1259    85569    draft_order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.draft_order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.draft_order_display_id_seq;
       public          postgres    false    5    278            �           0    0    draft_order_display_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.draft_order_display_id_seq OWNED BY public.draft_order.display_id;
          public          postgres    false    277            �            1259    84229    fulfillment    TABLE     o  CREATE TABLE public.fulfillment (
    id character varying NOT NULL,
    swap_id character varying,
    order_id character varying,
    tracking_numbers jsonb DEFAULT '[]'::jsonb NOT NULL,
    data jsonb NOT NULL,
    shipped_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    provider_id character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.fulfillment;
       public         heap    postgres    false    5            �            1259    84222    fulfillment_item    TABLE     �   CREATE TABLE public.fulfillment_item (
    fulfillment_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL
);
 $   DROP TABLE public.fulfillment_item;
       public         heap    postgres    false    5            �            1259    84214    fulfillment_provider    TABLE     �   CREATE TABLE public.fulfillment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 (   DROP TABLE public.fulfillment_provider;
       public         heap    postgres    false    5            �            1259    84460 	   gift_card    TABLE       CREATE TABLE public.gift_card (
    id character varying NOT NULL,
    code character varying NOT NULL,
    value integer NOT NULL,
    balance integer NOT NULL,
    region_id character varying NOT NULL,
    order_id character varying,
    is_disabled boolean DEFAULT false NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    tax_rate real
);
    DROP TABLE public.gift_card;
       public         heap    postgres    false    5            �            1259    84590    gift_card_transaction    TABLE     /  CREATE TABLE public.gift_card_transaction (
    id character varying NOT NULL,
    gift_card_id character varying NOT NULL,
    order_id character varying NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    is_taxable boolean,
    tax_rate real
);
 )   DROP TABLE public.gift_card_transaction;
       public         heap    postgres    false    5            �            1259    84703    idempotency_key    TABLE     �  CREATE TABLE public.idempotency_key (
    id character varying NOT NULL,
    idempotency_key character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    locked_at timestamp with time zone,
    request_method character varying,
    request_params jsonb,
    request_path character varying,
    response_code integer,
    response_body jsonb,
    recovery_point character varying DEFAULT 'started'::character varying NOT NULL
);
 #   DROP TABLE public.idempotency_key;
       public         heap    postgres    false    5            �            1259    84281    image    TABLE     "  CREATE TABLE public.image (
    id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.image;
       public         heap    postgres    false    5                       1259    85775    invite    TABLE     	  CREATE TABLE public.invite (
    id character varying NOT NULL,
    user_email character varying NOT NULL,
    role public.invite_role_enum DEFAULT 'member'::public.invite_role_enum,
    accepted boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    token character varying NOT NULL,
    expires_at timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.invite;
       public         heap    postgres    false    1217    5    1217            �            1259    84570 	   line_item    TABLE     <  CREATE TABLE public.line_item (
    id character varying NOT NULL,
    cart_id character varying,
    order_id character varying,
    swap_id character varying,
    title character varying NOT NULL,
    description character varying,
    thumbnail character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    should_merge boolean DEFAULT true NOT NULL,
    allow_discounts boolean DEFAULT true NOT NULL,
    has_shipping boolean,
    unit_price integer NOT NULL,
    variant_id character varying,
    quantity integer NOT NULL,
    fulfilled_quantity integer,
    returned_quantity integer,
    shipped_quantity integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    claim_order_id character varying,
    is_return boolean DEFAULT false NOT NULL,
    original_item_id character varying,
    order_edit_id character varying,
    includes_tax boolean DEFAULT false NOT NULL,
    CONSTRAINT "CHK_0cd85e15610d11b553d5e8fda6" CHECK ((shipped_quantity <= fulfilled_quantity)),
    CONSTRAINT "CHK_64eef00a5064887634f1680866" CHECK ((quantity > 0)),
    CONSTRAINT "CHK_91f40396d847f6ecfd9f752bf8" CHECK ((returned_quantity <= quantity)),
    CONSTRAINT "CHK_c61716c68f5ad5de2834c827d3" CHECK ((fulfilled_quantity <= quantity))
);
    DROP TABLE public.line_item;
       public         heap    postgres    false    5            -           1259    86204    line_item_adjustment    TABLE     �   CREATE TABLE public.line_item_adjustment (
    id character varying NOT NULL,
    item_id character varying NOT NULL,
    description character varying NOT NULL,
    discount_id character varying,
    amount numeric NOT NULL,
    metadata jsonb
);
 (   DROP TABLE public.line_item_adjustment;
       public         heap    postgres    false    5                       1259    85883    line_item_tax_line    TABLE     c  CREATE TABLE public.line_item_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    item_id character varying NOT NULL
);
 &   DROP TABLE public.line_item_tax_line;
       public         heap    postgres    false    5            �            1259    84206 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    5            �            1259    84205    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    5    216            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    84290    money_amount    TABLE     �  CREATE TABLE public.money_amount (
    id character varying NOT NULL,
    currency_code character varying NOT NULL,
    amount integer NOT NULL,
    region_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    min_quantity integer,
    max_quantity integer,
    price_list_id character varying
);
     DROP TABLE public.money_amount;
       public         heap    postgres    false    5                       1259    85756    note    TABLE     �  CREATE TABLE public.note (
    id character varying NOT NULL,
    value character varying NOT NULL,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    author_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.note;
       public         heap    postgres    false    5                       1259    85479    notification    TABLE     �  CREATE TABLE public.notification (
    id character varying NOT NULL,
    event_name character varying,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    customer_id character varying,
    "to" character varying NOT NULL,
    data jsonb NOT NULL,
    parent_id character varying,
    provider_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
     DROP TABLE public.notification;
       public         heap    postgres    false    5                       1259    85471    notification_provider    TABLE     �   CREATE TABLE public.notification_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 )   DROP TABLE public.notification_provider;
       public         heap    postgres    false    5            �            1259    84713    oauth    TABLE     �   CREATE TABLE public.oauth (
    id character varying NOT NULL,
    display_name character varying NOT NULL,
    application_name character varying NOT NULL,
    install_url character varying,
    uninstall_url character varying,
    data jsonb
);
    DROP TABLE public.oauth;
       public         heap    postgres    false    5            >           1259    86678    onboarding_state    TABLE     4  CREATE TABLE public.onboarding_state (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    current_step character varying,
    is_complete boolean NOT NULL,
    product_id character varying
);
 $   DROP TABLE public.onboarding_state;
       public         heap    postgres    false    5            �            1259    84666    order    TABLE     Y  CREATE TABLE public."order" (
    id character varying NOT NULL,
    status public.order_status_enum DEFAULT 'pending'::public.order_status_enum NOT NULL,
    fulfillment_status public.order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.order_fulfillment_status_enum NOT NULL,
    payment_status public.order_payment_status_enum DEFAULT 'not_paid'::public.order_payment_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    customer_id character varying NOT NULL,
    email character varying NOT NULL,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    draft_order_id character varying,
    no_notification boolean,
    external_id character varying,
    sales_channel_id character varying
);
    DROP TABLE public."order";
       public         heap    postgres    false    1082    1085    1088    1082    1085    1088    5                       1259    84812    order_discounts    TABLE     }   CREATE TABLE public.order_discounts (
    order_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 #   DROP TABLE public.order_discounts;
       public         heap    postgres    false    5            �            1259    84665    order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_display_id_seq;
       public          postgres    false    248    5            �           0    0    order_display_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.order_display_id_seq OWNED BY public."order".display_id;
          public          postgres    false    247            2           1259    86336 
   order_edit    TABLE     �  CREATE TABLE public.order_edit (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    order_id character varying NOT NULL,
    internal_note character varying,
    created_by character varying NOT NULL,
    requested_by character varying,
    requested_at timestamp with time zone,
    confirmed_by character varying,
    confirmed_at timestamp with time zone,
    declined_by character varying,
    declined_reason character varying,
    declined_at timestamp with time zone,
    canceled_by character varying,
    canceled_at timestamp with time zone,
    payment_collection_id character varying
);
    DROP TABLE public.order_edit;
       public         heap    postgres    false    5                       1259    84821    order_gift_cards    TABLE        CREATE TABLE public.order_gift_cards (
    order_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 $   DROP TABLE public.order_gift_cards;
       public         heap    postgres    false    5            1           1259    86321    order_item_change    TABLE     �  CREATE TABLE public.order_item_change (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public.order_item_change_type_enum NOT NULL,
    order_edit_id character varying NOT NULL,
    original_line_item_id character varying,
    line_item_id character varying
);
 %   DROP TABLE public.order_item_change;
       public         heap    postgres    false    1310    5            �            1259    84446    payment    TABLE     p  CREATE TABLE public.payment (
    id character varying NOT NULL,
    swap_id character varying,
    cart_id character varying,
    order_id character varying,
    amount integer NOT NULL,
    currency_code character varying NOT NULL,
    amount_refunded integer DEFAULT 0 NOT NULL,
    provider_id character varying NOT NULL,
    data jsonb NOT NULL,
    captured_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying
);
    DROP TABLE public.payment;
       public         heap    postgres    false    5            3           1259    86391    payment_collection    TABLE     V  CREATE TABLE public.payment_collection (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public."PAYMENT_COLLECTION_TYPE_ENUM" NOT NULL,
    status public."PAYMENT_COLLECTION_STATUS_ENUM" NOT NULL,
    description text,
    amount integer NOT NULL,
    authorized_amount integer,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    metadata jsonb,
    created_by character varying NOT NULL
);
 &   DROP TABLE public.payment_collection;
       public         heap    postgres    false    1322    1319    5            5           1259    86426    payment_collection_payments    TABLE     �   CREATE TABLE public.payment_collection_payments (
    payment_collection_id character varying NOT NULL,
    payment_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_payments;
       public         heap    postgres    false    5            4           1259    86407    payment_collection_sessions    TABLE     �   CREATE TABLE public.payment_collection_sessions (
    payment_collection_id character varying NOT NULL,
    payment_session_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_sessions;
       public         heap    postgres    false    5            �            1259    84264    payment_provider    TABLE     |   CREATE TABLE public.payment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 $   DROP TABLE public.payment_provider;
       public         heap    postgres    false    5            �            1259    84435    payment_session    TABLE        CREATE TABLE public.payment_session (
    id character varying NOT NULL,
    cart_id character varying,
    provider_id character varying NOT NULL,
    is_selected boolean,
    status public.payment_session_status_enum NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    idempotency_key character varying,
    payment_authorized_at timestamp with time zone,
    amount integer,
    is_initiated boolean DEFAULT false NOT NULL
);
 #   DROP TABLE public.payment_session;
       public         heap    postgres    false    1049    5            +           1259    86169 
   price_list    TABLE     |  CREATE TABLE public.price_list (
    id character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    type public.price_list_type_enum DEFAULT 'sale'::public.price_list_type_enum NOT NULL,
    status public.price_list_status_enum DEFAULT 'draft'::public.price_list_status_enum NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    includes_tax boolean DEFAULT false NOT NULL
);
    DROP TABLE public.price_list;
       public         heap    postgres    false    1283    1286    1286    1283    5            ,           1259    86180    price_list_customer_groups    TABLE     �   CREATE TABLE public.price_list_customer_groups (
    price_list_id character varying NOT NULL,
    customer_group_id character varying NOT NULL
);
 .   DROP TABLE public.price_list_customer_groups;
       public         heap    postgres    false    5            �            1259    84378    product    TABLE     �  CREATE TABLE public.product (
    id character varying NOT NULL,
    title character varying NOT NULL,
    subtitle character varying,
    description character varying,
    handle character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    thumbnail character varying,
    weight integer,
    length integer,
    height integer,
    width integer,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    collection_id character varying,
    type_id character varying,
    discountable boolean DEFAULT true NOT NULL,
    status public.product_status_enum DEFAULT 'draft'::public.product_status_enum NOT NULL,
    external_id character varying
);
    DROP TABLE public.product;
       public         heap    postgres    false    1211    5    1211            ;           1259    86517    product_category    TABLE     -  CREATE TABLE public.product_category (
    id character varying NOT NULL,
    name text NOT NULL,
    handle text NOT NULL,
    parent_category_id character varying,
    mpath text,
    is_active boolean DEFAULT false,
    is_internal boolean DEFAULT false,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    metadata jsonb,
    CONSTRAINT product_category_rank_check CHECK ((rank >= 0))
);
 $   DROP TABLE public.product_category;
       public         heap    postgres    false    5            <           1259    86533    product_category_product    TABLE     �   CREATE TABLE public.product_category_product (
    product_category_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 ,   DROP TABLE public.product_category_product;
       public         heap    postgres    false    5                       1259    85506    product_collection    TABLE     O  CREATE TABLE public.product_collection (
    id character varying NOT NULL,
    title character varying NOT NULL,
    handle character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.product_collection;
       public         heap    postgres    false    5                       1259    84767    product_images    TABLE     {   CREATE TABLE public.product_images (
    product_id character varying NOT NULL,
    image_id character varying NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false    5            �            1259    84324    product_option    TABLE     O  CREATE TABLE public.product_option (
    id character varying NOT NULL,
    title character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    product_id character varying
);
 "   DROP TABLE public.product_option;
       public         heap    postgres    false    5            �            1259    84314    product_option_value    TABLE     �  CREATE TABLE public.product_option_value (
    id character varying NOT NULL,
    value character varying NOT NULL,
    option_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 (   DROP TABLE public.product_option_value;
       public         heap    postgres    false    5            0           1259    86253    product_sales_channel    TABLE     �   CREATE TABLE public.product_sales_channel (
    product_id character varying NOT NULL,
    sales_channel_id character varying NOT NULL
);
 )   DROP TABLE public.product_sales_channel;
       public         heap    postgres    false    5            =           1259    86670    product_shipping_profile    TABLE     m   CREATE TABLE public.product_shipping_profile (
    profile_id text NOT NULL,
    product_id text NOT NULL
);
 ,   DROP TABLE public.product_shipping_profile;
       public         heap    postgres    false    5                       1259    85516    product_tag    TABLE     *  CREATE TABLE public.product_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.product_tag;
       public         heap    postgres    false    5                       1259    85534    product_tags    TABLE        CREATE TABLE public.product_tags (
    product_id character varying NOT NULL,
    product_tag_id character varying NOT NULL
);
     DROP TABLE public.product_tags;
       public         heap    postgres    false    5                        1259    85903    product_tax_rate    TABLE       CREATE TABLE public.product_tax_rate (
    product_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 $   DROP TABLE public.product_tax_rate;
       public         heap    postgres    false    5                       1259    85525    product_type    TABLE     +  CREATE TABLE public.product_type (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
     DROP TABLE public.product_type;
       public         heap    postgres    false    5            !           1259    85912    product_type_tax_rate    TABLE       CREATE TABLE public.product_type_tax_rate (
    product_type_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 )   DROP TABLE public.product_type_tax_rate;
       public         heap    postgres    false    5            �            1259    84299    product_variant    TABLE     R  CREATE TABLE public.product_variant (
    id character varying NOT NULL,
    title character varying NOT NULL,
    product_id character varying NOT NULL,
    sku character varying,
    barcode character varying,
    ean character varying,
    upc character varying,
    inventory_quantity integer NOT NULL,
    allow_backorder boolean DEFAULT false NOT NULL,
    manage_inventory boolean DEFAULT true NOT NULL,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    weight integer,
    length integer,
    height integer,
    width integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    variant_rank integer DEFAULT 0
);
 #   DROP TABLE public.product_variant;
       public         heap    postgres    false    5            :           1259    86503    product_variant_inventory_item    TABLE     x  CREATE TABLE public.product_variant_inventory_item (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    inventory_item_id text NOT NULL,
    variant_id text NOT NULL,
    required_quantity integer DEFAULT 1 NOT NULL,
    deleted_at timestamp with time zone
);
 2   DROP TABLE public.product_variant_inventory_item;
       public         heap    postgres    false    5            ?           1259    86688    product_variant_money_amount    TABLE     B  CREATE TABLE public.product_variant_money_amount (
    id character varying NOT NULL,
    money_amount_id text NOT NULL,
    variant_id text NOT NULL,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
 0   DROP TABLE public.product_variant_money_amount;
       public         heap    postgres    false    5            8           1259    86481    publishable_api_key    TABLE     b  CREATE TABLE public.publishable_api_key (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by character varying,
    revoked_by character varying,
    revoked_at timestamp with time zone,
    title character varying NOT NULL
);
 '   DROP TABLE public.publishable_api_key;
       public         heap    postgres    false    5            7           1259    86474 !   publishable_api_key_sales_channel    TABLE     ]  CREATE TABLE public.publishable_api_key_sales_channel (
    sales_channel_id character varying NOT NULL,
    publishable_key_id character varying NOT NULL,
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
 5   DROP TABLE public.publishable_api_key_sales_channel;
       public         heap    postgres    false    5            �            1259    84609    refund    TABLE     �  CREATE TABLE public.refund (
    id character varying NOT NULL,
    order_id character varying,
    amount integer NOT NULL,
    note character varying,
    reason public.refund_reason_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    payment_id character varying
);
    DROP TABLE public.refund;
       public         heap    postgres    false    1172    5            �            1259    84272    region    TABLE     O  CREATE TABLE public.region (
    id character varying NOT NULL,
    name character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real NOT NULL,
    tax_code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    gift_cards_taxable boolean DEFAULT true NOT NULL,
    automatic_taxes boolean DEFAULT true NOT NULL,
    tax_provider_id character varying,
    includes_tax boolean DEFAULT false NOT NULL
);
    DROP TABLE public.region;
       public         heap    postgres    false    5                       1259    84758    region_fulfillment_providers    TABLE     �   CREATE TABLE public.region_fulfillment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 0   DROP TABLE public.region_fulfillment_providers;
       public         heap    postgres    false    5                        1259    84749    region_payment_providers    TABLE     �   CREATE TABLE public.region_payment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 ,   DROP TABLE public.region_payment_providers;
       public         heap    postgres    false    5            �            1259    84517    return    TABLE     g  CREATE TABLE public.return (
    id character varying NOT NULL,
    status public.return_status_enum DEFAULT 'requested'::public.return_status_enum NOT NULL,
    swap_id character varying,
    order_id character varying,
    shipping_data jsonb,
    refund_amount integer NOT NULL,
    received_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.return;
       public         heap    postgres    false    1205    5    1205            �            1259    84239    return_item    TABLE     U  CREATE TABLE public.return_item (
    return_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL,
    is_requested boolean DEFAULT true NOT NULL,
    requested_quantity integer,
    received_quantity integer,
    metadata jsonb,
    reason_id character varying,
    note character varying
);
    DROP TABLE public.return_item;
       public         heap    postgres    false    5                       1259    85642    return_reason    TABLE     �  CREATE TABLE public.return_reason (
    id character varying NOT NULL,
    value character varying NOT NULL,
    label character varying NOT NULL,
    description character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    parent_return_reason_id character varying
);
 !   DROP TABLE public.return_reason;
       public         heap    postgres    false    5            /           1259    86243    sales_channel    TABLE     ~  CREATE TABLE public.sales_channel (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    name character varying NOT NULL,
    description character varying,
    is_disabled boolean DEFAULT false NOT NULL,
    metadata jsonb
);
 !   DROP TABLE public.sales_channel;
       public         heap    postgres    false    5            9           1259    86492    sales_channel_location    TABLE     >  CREATE TABLE public.sales_channel_location (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    sales_channel_id text NOT NULL,
    location_id text NOT NULL,
    deleted_at timestamp with time zone
);
 *   DROP TABLE public.sales_channel_location;
       public         heap    postgres    false    5            �            1259    84493    shipping_method    TABLE     �  CREATE TABLE public.shipping_method (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    order_id character varying,
    cart_id character varying,
    swap_id character varying,
    return_id character varying,
    price integer NOT NULL,
    data jsonb NOT NULL,
    claim_order_id character varying,
    includes_tax boolean DEFAULT false NOT NULL,
    CONSTRAINT "CHK_64c6812fe7815be30d688df513" CHECK ((price >= 0)),
    CONSTRAINT "CHK_a7020b08665bbd64d84a6641cf" CHECK (((claim_order_id IS NOT NULL) OR (order_id IS NOT NULL) OR (cart_id IS NOT NULL) OR (swap_id IS NOT NULL) OR (return_id IS NOT NULL)))
);
 #   DROP TABLE public.shipping_method;
       public         heap    postgres    false    5                       1259    85893    shipping_method_tax_line    TABLE     t  CREATE TABLE public.shipping_method_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    shipping_method_id character varying NOT NULL
);
 ,   DROP TABLE public.shipping_method_tax_line;
       public         heap    postgres    false    5            �            1259    84351    shipping_option    TABLE     �  CREATE TABLE public.shipping_option (
    id character varying NOT NULL,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    profile_id character varying NOT NULL,
    provider_id character varying NOT NULL,
    price_type public.shipping_option_price_type_enum NOT NULL,
    amount integer,
    is_return boolean DEFAULT false NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    admin_only boolean DEFAULT false NOT NULL,
    includes_tax boolean DEFAULT false NOT NULL,
    CONSTRAINT "CHK_7a367f5901ae0a5b0df75aee38" CHECK ((amount >= 0))
);
 #   DROP TABLE public.shipping_option;
       public         heap    postgres    false    5    1022            �            1259    84339    shipping_option_requirement    TABLE       CREATE TABLE public.shipping_option_requirement (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    type public.shipping_option_requirement_type_enum NOT NULL,
    amount integer NOT NULL,
    deleted_at timestamp with time zone
);
 /   DROP TABLE public.shipping_option_requirement;
       public         heap    postgres    false    1016    5            �            1259    84369    shipping_profile    TABLE     c  CREATE TABLE public.shipping_profile (
    id character varying NOT NULL,
    name character varying NOT NULL,
    type public.shipping_profile_type_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 $   DROP TABLE public.shipping_profile;
       public         heap    postgres    false    1028    5            "           1259    85921    shipping_tax_rate    TABLE       CREATE TABLE public.shipping_tax_rate (
    shipping_option_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 %   DROP TABLE public.shipping_tax_rate;
       public         heap    postgres    false    5            �            1259    84721 
   staged_job    TABLE     �   CREATE TABLE public.staged_job (
    id character varying NOT NULL,
    event_name character varying NOT NULL,
    data jsonb NOT NULL,
    options jsonb DEFAULT '{}'::jsonb NOT NULL
);
    DROP TABLE public.staged_job;
       public         heap    postgres    false    5            �            1259    84728    store    TABLE     Y  CREATE TABLE public.store (
    id character varying NOT NULL,
    name character varying DEFAULT 'Medusa Store'::character varying NOT NULL,
    default_currency_code character varying DEFAULT 'usd'::character varying NOT NULL,
    swap_link_template character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    payment_link_template character varying,
    invite_link_template character varying,
    default_sales_channel_id character varying,
    default_location_id character varying
);
    DROP TABLE public.store;
       public         heap    postgres    false    5            	           1259    84830    store_currencies    TABLE     �   CREATE TABLE public.store_currencies (
    store_id character varying NOT NULL,
    currency_code character varying NOT NULL
);
 $   DROP TABLE public.store_currencies;
       public         heap    postgres    false    5            �            1259    84559    swap    TABLE     �  CREATE TABLE public.swap (
    id character varying NOT NULL,
    fulfillment_status public.swap_fulfillment_status_enum NOT NULL,
    payment_status public.swap_payment_status_enum NOT NULL,
    order_id character varying NOT NULL,
    difference_due integer,
    shipping_address_id character varying,
    cart_id character varying,
    confirmed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean,
    canceled_at timestamp with time zone,
    allow_backorder boolean DEFAULT false NOT NULL
);
    DROP TABLE public.swap;
       public         heap    postgres    false    1307    1208    5                       1259    85875    tax_provider    TABLE     x   CREATE TABLE public.tax_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
     DROP TABLE public.tax_provider;
       public         heap    postgres    false    5                       1259    85866    tax_rate    TABLE     R  CREATE TABLE public.tax_rate (
    id character varying NOT NULL,
    rate real,
    code character varying,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
    DROP TABLE public.tax_rate;
       public         heap    postgres    false    5                       1259    85628    tracking_link    TABLE     �  CREATE TABLE public.tracking_link (
    id character varying NOT NULL,
    url character varying,
    tracking_number character varying NOT NULL,
    fulfillment_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying
);
 !   DROP TABLE public.tracking_link;
       public         heap    postgres    false    5            �            1259    84739    user    TABLE     �  CREATE TABLE public."user" (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    password_hash character varying,
    api_token character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    role public.user_role_enum DEFAULT 'member'::public.user_role_enum
);
    DROP TABLE public."user";
       public         heap    postgres    false    1223    5    1223            �           2604    84258 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    85574    draft_order display_id    DEFAULT     �   ALTER TABLE ONLY public.draft_order ALTER COLUMN display_id SET DEFAULT nextval('public.draft_order_display_id_seq'::regclass);
 E   ALTER TABLE public.draft_order ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    278    277    278            �           2604    84209    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    84672    order display_id    DEFAULT     v   ALTER TABLE ONLY public."order" ALTER COLUMN display_id SET DEFAULT nextval('public.order_display_id_seq'::regclass);
 A   ALTER TABLE public."order" ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    247    248    248            E          0    84694    address 
   TABLE DATA           �   COPY public.address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    250   �7      �          0    86462    analytics_config 
   TABLE DATA           o   COPY public.analytics_config (id, created_at, updated_at, deleted_at, user_id, opt_out, anonymize) FROM stdin;
    public          postgres    false    310   =      y          0    86228 	   batch_job 
   TABLE DATA           �   COPY public.batch_job (id, type, created_by, context, result, dry_run, created_at, pre_processed_at, confirmed_at, processing_at, completed_at, failed_at, canceled_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    302   �=      �          0    86723    block_section 
   TABLE DATA           w   COPY public.block_section (id, created_at, updated_at, title, sub_title, description, media, colection_id) FROM stdin;
    public          postgres    false    320   �=      ;          0    84481    cart 
   TABLE DATA           �   COPY public.cart (id, email, billing_address_id, shipping_address_id, region_id, customer_id, payment_id, type, completed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, context, payment_authorized_at, sales_channel_id) FROM stdin;
    public          postgres    false    240   �=      P          0    84794    cart_discounts 
   TABLE DATA           >   COPY public.cart_discounts (cart_id, discount_id) FROM stdin;
    public          postgres    false    261    C      Q          0    84803    cart_gift_cards 
   TABLE DATA           @   COPY public.cart_gift_cards (cart_id, gift_card_id) FROM stdin;
    public          postgres    false    262   C      U          0    85249    claim_image 
   TABLE DATA           k   COPY public.claim_image (id, claim_item_id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    266   :C      W          0    85277 
   claim_item 
   TABLE DATA           �   COPY public.claim_item (id, claim_order_id, item_id, variant_id, reason, note, quantity, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    268   WC      Y          0    85334    claim_item_tags 
   TABLE DATA           :   COPY public.claim_item_tags (item_id, tag_id) FROM stdin;
    public          postgres    false    270   tC      X          0    85323    claim_order 
   TABLE DATA           �   COPY public.claim_order (id, payment_status, fulfillment_status, type, order_id, shipping_address_id, refund_amount, canceled_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification) FROM stdin;
    public          postgres    false    269   �C      V          0    85258 	   claim_tag 
   TABLE DATA           \   COPY public.claim_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    267   �C      *          0    84255    country 
   TABLE DATA           \   COPY public.country (id, iso_2, iso_3, num_code, name, display_name, region_id) FROM stdin;
    public          postgres    false    223   �C      (          0    84247    currency 
   TABLE DATA           S   COPY public.currency (code, symbol, symbol_native, name, includes_tax) FROM stdin;
    public          postgres    false    221   ~Z      f          0    85798    custom_shipping_option 
   TABLE DATA           �   COPY public.custom_shipping_option (id, price, shipping_option_id, cart_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    283   |b      D          0    84681    customer 
   TABLE DATA           �   COPY public.customer (id, email, first_name, last_name, billing_address_id, password_hash, phone, has_account, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    249   �b      n          0    85989    customer_group 
   TABLE DATA           `   COPY public.customer_group (id, name, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    291   �c      o          0    85999    customer_group_customers 
   TABLE DATA           R   COPY public.customer_group_customers (customer_group_id, customer_id) FROM stdin;
    public          postgres    false    292   d      7          0    84412    discount 
   TABLE DATA           �   COPY public.discount (id, code, is_dynamic, rule_id, is_disabled, parent_discount_id, starts_at, ends_at, created_at, updated_at, deleted_at, metadata, usage_limit, usage_count, valid_duration) FROM stdin;
    public          postgres    false    236   #d      p          0    86035    discount_condition 
   TABLE DATA           �   COPY public.discount_condition (id, type, operator, discount_rule_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    293   @d      q          0    86047 !   discount_condition_customer_group 
   TABLE DATA           ~   COPY public.discount_condition_customer_group (customer_group_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    294   ]d      u          0    86083    discount_condition_product 
   TABLE DATA           p   COPY public.discount_condition_product (product_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    298   zd      r          0    86056 %   discount_condition_product_collection 
   TABLE DATA           �   COPY public.discount_condition_product_collection (product_collection_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    295   �d      s          0    86065    discount_condition_product_tag 
   TABLE DATA           x   COPY public.discount_condition_product_tag (product_tag_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    296   �d      t          0    86074    discount_condition_product_type 
   TABLE DATA           z   COPY public.discount_condition_product_type (product_type_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    297   �d      O          0    84785    discount_regions 
   TABLE DATA           B   COPY public.discount_regions (discount_id, region_id) FROM stdin;
    public          postgres    false    260   �d      6          0    84403    discount_rule 
   TABLE DATA              COPY public.discount_rule (id, description, type, value, allocation, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    235   e      N          0    84776    discount_rule_products 
   TABLE DATA           N   COPY public.discount_rule_products (discount_rule_id, product_id) FROM stdin;
    public          postgres    false    259   (e      a          0    85570    draft_order 
   TABLE DATA           �   COPY public.draft_order (id, status, display_id, cart_id, order_id, canceled_at, created_at, updated_at, completed_at, metadata, idempotency_key, no_notification_order) FROM stdin;
    public          postgres    false    278   Ee      &          0    84229    fulfillment 
   TABLE DATA           �   COPY public.fulfillment (id, swap_id, order_id, tracking_numbers, data, shipped_at, canceled_at, created_at, updated_at, metadata, idempotency_key, provider_id, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    219   be      %          0    84222    fulfillment_item 
   TABLE DATA           M   COPY public.fulfillment_item (fulfillment_id, item_id, quantity) FROM stdin;
    public          postgres    false    218   �e      $          0    84214    fulfillment_provider 
   TABLE DATA           @   COPY public.fulfillment_provider (id, is_installed) FROM stdin;
    public          postgres    false    217   Qf      :          0    84460 	   gift_card 
   TABLE DATA           �   COPY public.gift_card (id, code, value, balance, region_id, order_id, is_disabled, ends_at, created_at, updated_at, deleted_at, metadata, tax_rate) FROM stdin;
    public          postgres    false    239   wf      @          0    84590    gift_card_transaction 
   TABLE DATA           u   COPY public.gift_card_transaction (id, gift_card_id, order_id, amount, created_at, is_taxable, tax_rate) FROM stdin;
    public          postgres    false    245   �f      F          0    84703    idempotency_key 
   TABLE DATA           �   COPY public.idempotency_key (id, idempotency_key, created_at, locked_at, request_method, request_params, request_path, response_code, response_body, recovery_point) FROM stdin;
    public          postgres    false    251   �f      -          0    84281    image 
   TABLE DATA           V   COPY public.image (id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    226   B      e          0    85775    invite 
   TABLE DATA           �   COPY public.invite (id, user_email, role, accepted, created_at, updated_at, deleted_at, metadata, token, expires_at) FROM stdin;
    public          postgres    false    282   �E      ?          0    84570 	   line_item 
   TABLE DATA           c  COPY public.line_item (id, cart_id, order_id, swap_id, title, description, thumbnail, is_giftcard, should_merge, allow_discounts, has_shipping, unit_price, variant_id, quantity, fulfilled_quantity, returned_quantity, shipped_quantity, created_at, updated_at, metadata, claim_order_id, is_return, original_item_id, order_edit_id, includes_tax) FROM stdin;
    public          postgres    false    244   �E      x          0    86204    line_item_adjustment 
   TABLE DATA           g   COPY public.line_item_adjustment (id, item_id, description, discount_id, amount, metadata) FROM stdin;
    public          postgres    false    301   �I      i          0    85883    line_item_tax_line 
   TABLE DATA           m   COPY public.line_item_tax_line (id, rate, name, code, created_at, updated_at, metadata, item_id) FROM stdin;
    public          postgres    false    286   �I      #          0    84206 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    216   aK      .          0    84290    money_amount 
   TABLE DATA           �   COPY public.money_amount (id, currency_code, amount, region_id, created_at, updated_at, deleted_at, min_quantity, max_quantity, price_list_id) FROM stdin;
    public          postgres    false    227   hR      d          0    85756    note 
   TABLE DATA           ~   COPY public.note (id, value, resource_type, resource_id, author_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    281   �W      [          0    85479    notification 
   TABLE DATA           �   COPY public.notification (id, event_name, resource_type, resource_id, customer_id, "to", data, parent_id, provider_id, created_at, updated_at) FROM stdin;
    public          postgres    false    272   �W      Z          0    85471    notification_provider 
   TABLE DATA           A   COPY public.notification_provider (id, is_installed) FROM stdin;
    public          postgres    false    271   �W      G          0    84713    oauth 
   TABLE DATA           e   COPY public.oauth (id, display_name, application_name, install_url, uninstall_url, data) FROM stdin;
    public          postgres    false    252   �W      �          0    86678    onboarding_state 
   TABLE DATA           m   COPY public.onboarding_state (id, created_at, updated_at, current_step, is_complete, product_id) FROM stdin;
    public          postgres    false    318    X      C          0    84666    order 
   TABLE DATA           G  COPY public."order" (id, status, fulfillment_status, payment_status, display_id, cart_id, customer_id, email, billing_address_id, shipping_address_id, region_id, currency_code, tax_rate, canceled_at, created_at, updated_at, metadata, idempotency_key, draft_order_id, no_notification, external_id, sales_channel_id) FROM stdin;
    public          postgres    false    248   �X      R          0    84812    order_discounts 
   TABLE DATA           @   COPY public.order_discounts (order_id, discount_id) FROM stdin;
    public          postgres    false    263   �[      }          0    86336 
   order_edit 
   TABLE DATA           �   COPY public.order_edit (id, created_at, updated_at, order_id, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, declined_at, canceled_by, canceled_at, payment_collection_id) FROM stdin;
    public          postgres    false    306   �[      S          0    84821    order_gift_cards 
   TABLE DATA           B   COPY public.order_gift_cards (order_id, gift_card_id) FROM stdin;
    public          postgres    false    264   �[      |          0    86321    order_item_change 
   TABLE DATA           �   COPY public.order_item_change (id, created_at, updated_at, deleted_at, type, order_edit_id, original_line_item_id, line_item_id) FROM stdin;
    public          postgres    false    305   \      9          0    84446    payment 
   TABLE DATA           �   COPY public.payment (id, swap_id, cart_id, order_id, amount, currency_code, amount_refunded, provider_id, data, captured_at, canceled_at, created_at, updated_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    238   \      ~          0    86391    payment_collection 
   TABLE DATA           �   COPY public.payment_collection (id, created_at, updated_at, deleted_at, type, status, description, amount, authorized_amount, region_id, currency_code, metadata, created_by) FROM stdin;
    public          postgres    false    307   {^      �          0    86426    payment_collection_payments 
   TABLE DATA           X   COPY public.payment_collection_payments (payment_collection_id, payment_id) FROM stdin;
    public          postgres    false    309   �^                0    86407    payment_collection_sessions 
   TABLE DATA           `   COPY public.payment_collection_sessions (payment_collection_id, payment_session_id) FROM stdin;
    public          postgres    false    308   �^      +          0    84264    payment_provider 
   TABLE DATA           <   COPY public.payment_provider (id, is_installed) FROM stdin;
    public          postgres    false    224   �^      8          0    84435    payment_session 
   TABLE DATA           �   COPY public.payment_session (id, cart_id, provider_id, is_selected, status, data, created_at, updated_at, idempotency_key, payment_authorized_at, amount, is_initiated) FROM stdin;
    public          postgres    false    237   �^      v          0    86169 
   price_list 
   TABLE DATA           �   COPY public.price_list (id, name, description, type, status, starts_at, ends_at, created_at, updated_at, deleted_at, includes_tax) FROM stdin;
    public          postgres    false    299   la      w          0    86180    price_list_customer_groups 
   TABLE DATA           V   COPY public.price_list_customer_groups (price_list_id, customer_group_id) FROM stdin;
    public          postgres    false    300   �a      5          0    84378    product 
   TABLE DATA             COPY public.product (id, title, subtitle, description, handle, is_giftcard, thumbnail, weight, length, height, width, hs_code, origin_country, mid_code, material, created_at, updated_at, deleted_at, metadata, collection_id, type_id, discountable, status, external_id) FROM stdin;
    public          postgres    false    234   �a      �          0    86517    product_category 
   TABLE DATA           �   COPY public.product_category (id, name, handle, parent_category_id, mpath, is_active, is_internal, created_at, updated_at, rank, description, metadata) FROM stdin;
    public          postgres    false    315   �o      �          0    86533    product_category_product 
   TABLE DATA           S   COPY public.product_category_product (product_category_id, product_id) FROM stdin;
    public          postgres    false    316   �s      \          0    85506    product_collection 
   TABLE DATA           m   COPY public.product_collection (id, title, handle, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    273   t      M          0    84767    product_images 
   TABLE DATA           >   COPY public.product_images (product_id, image_id) FROM stdin;
    public          postgres    false    258   {      1          0    84324    product_option 
   TABLE DATA           m   COPY public.product_option (id, title, created_at, updated_at, deleted_at, metadata, product_id) FROM stdin;
    public          postgres    false    230   3}      0          0    84314    product_option_value 
   TABLE DATA           ~   COPY public.product_option_value (id, value, option_id, variant_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    229   �      {          0    86253    product_sales_channel 
   TABLE DATA           M   COPY public.product_sales_channel (product_id, sales_channel_id) FROM stdin;
    public          postgres    false    304   5�      �          0    86670    product_shipping_profile 
   TABLE DATA           J   COPY public.product_shipping_profile (profile_id, product_id) FROM stdin;
    public          postgres    false    317   �      ]          0    85516    product_tag 
   TABLE DATA           ^   COPY public.product_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    274   �      _          0    85534    product_tags 
   TABLE DATA           B   COPY public.product_tags (product_id, product_tag_id) FROM stdin;
    public          postgres    false    276   �      k          0    85903    product_tax_rate 
   TABLE DATA           a   COPY public.product_tax_rate (product_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    288    �      ^          0    85525    product_type 
   TABLE DATA           _   COPY public.product_type (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    275   =�      l          0    85912    product_type_tax_rate 
   TABLE DATA           k   COPY public.product_type_tax_rate (product_type_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    289   Z�      /          0    84299    product_variant 
   TABLE DATA             COPY public.product_variant (id, title, product_id, sku, barcode, ean, upc, inventory_quantity, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, created_at, updated_at, deleted_at, metadata, variant_rank) FROM stdin;
    public          postgres    false    228   w�      �          0    86503    product_variant_inventory_item 
   TABLE DATA           �   COPY public.product_variant_inventory_item (id, created_at, updated_at, inventory_item_id, variant_id, required_quantity, deleted_at) FROM stdin;
    public          postgres    false    314   Ώ      �          0    86688    product_variant_money_amount 
   TABLE DATA           {   COPY public.product_variant_money_amount (id, money_amount_id, variant_id, deleted_at, created_at, updated_at) FROM stdin;
    public          postgres    false    319   �      �          0    86481    publishable_api_key 
   TABLE DATA           t   COPY public.publishable_api_key (id, created_at, updated_at, created_by, revoked_by, revoked_at, title) FROM stdin;
    public          postgres    false    312   �      �          0    86474 !   publishable_api_key_sales_channel 
   TABLE DATA           �   COPY public.publishable_api_key_sales_channel (sales_channel_id, publishable_key_id, id, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    311   �      A          0    84609    refund 
   TABLE DATA           �   COPY public.refund (id, order_id, amount, note, reason, created_at, updated_at, metadata, idempotency_key, payment_id) FROM stdin;
    public          postgres    false    246   	�      ,          0    84272    region 
   TABLE DATA           �   COPY public.region (id, name, currency_code, tax_rate, tax_code, created_at, updated_at, deleted_at, metadata, gift_cards_taxable, automatic_taxes, tax_provider_id, includes_tax) FROM stdin;
    public          postgres    false    225   &�      L          0    84758    region_fulfillment_providers 
   TABLE DATA           N   COPY public.region_fulfillment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    257   �      K          0    84749    region_payment_providers 
   TABLE DATA           J   COPY public.region_payment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    256   X�      =          0    84517    return 
   TABLE DATA           �   COPY public.return (id, status, swap_id, order_id, shipping_data, refund_amount, received_at, created_at, updated_at, metadata, idempotency_key, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    242   Ȝ      '          0    84239    return_item 
   TABLE DATA           �   COPY public.return_item (return_id, item_id, quantity, is_requested, requested_quantity, received_quantity, metadata, reason_id, note) FROM stdin;
    public          postgres    false    220   �      c          0    85642    return_reason 
   TABLE DATA           �   COPY public.return_reason (id, value, label, description, created_at, updated_at, deleted_at, metadata, parent_return_reason_id) FROM stdin;
    public          postgres    false    280   �      z          0    86243    sales_channel 
   TABLE DATA           y   COPY public.sales_channel (id, created_at, updated_at, deleted_at, name, description, is_disabled, metadata) FROM stdin;
    public          postgres    false    303   �      �          0    86492    sales_channel_location 
   TABLE DATA           w   COPY public.sales_channel_location (id, created_at, updated_at, sales_channel_id, location_id, deleted_at) FROM stdin;
    public          postgres    false    313   ��      <          0    84493    shipping_method 
   TABLE DATA           �   COPY public.shipping_method (id, shipping_option_id, order_id, cart_id, swap_id, return_id, price, data, claim_order_id, includes_tax) FROM stdin;
    public          postgres    false    241   ŝ      j          0    85893    shipping_method_tax_line 
   TABLE DATA           ~   COPY public.shipping_method_tax_line (id, rate, name, code, created_at, updated_at, metadata, shipping_method_id) FROM stdin;
    public          postgres    false    287   ��      3          0    84351    shipping_option 
   TABLE DATA           �   COPY public.shipping_option (id, name, region_id, profile_id, provider_id, price_type, amount, is_return, data, created_at, updated_at, deleted_at, metadata, admin_only, includes_tax) FROM stdin;
    public          postgres    false    232   9�      2          0    84339    shipping_option_requirement 
   TABLE DATA           g   COPY public.shipping_option_requirement (id, shipping_option_id, type, amount, deleted_at) FROM stdin;
    public          postgres    false    231   F�      4          0    84369    shipping_profile 
   TABLE DATA           h   COPY public.shipping_profile (id, name, type, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    233   c�      m          0    85921    shipping_tax_rate 
   TABLE DATA           j   COPY public.shipping_tax_rate (shipping_option_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    290   �      H          0    84721 
   staged_job 
   TABLE DATA           C   COPY public.staged_job (id, event_name, data, options) FROM stdin;
    public          postgres    false    253   $�      I          0    84728    store 
   TABLE DATA           �   COPY public.store (id, name, default_currency_code, swap_link_template, created_at, updated_at, metadata, payment_link_template, invite_link_template, default_sales_channel_id, default_location_id) FROM stdin;
    public          postgres    false    254   A�      T          0    84830    store_currencies 
   TABLE DATA           C   COPY public.store_currencies (store_id, currency_code) FROM stdin;
    public          postgres    false    265   ̤      >          0    84559    swap 
   TABLE DATA           �   COPY public.swap (id, fulfillment_status, payment_status, order_id, difference_due, shipping_address_id, cart_id, confirmed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification, canceled_at, allow_backorder) FROM stdin;
    public          postgres    false    243   L�      h          0    85875    tax_provider 
   TABLE DATA           8   COPY public.tax_provider (id, is_installed) FROM stdin;
    public          postgres    false    285   i�      g          0    85866    tax_rate 
   TABLE DATA           e   COPY public.tax_rate (id, rate, code, name, region_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    284   ��      b          0    85628    tracking_link 
   TABLE DATA           �   COPY public.tracking_link (id, url, tracking_number, fulfillment_id, created_at, updated_at, deleted_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    279   ��      J          0    84739    user 
   TABLE DATA           �   COPY public."user" (id, email, first_name, last_name, password_hash, api_token, created_at, updated_at, deleted_at, metadata, role) FROM stdin;
    public          postgres    false    255   ��      �           0    0    country_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.country_id_seq', 250, true);
          public          postgres    false    222            �           0    0    draft_order_display_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.draft_order_display_id_seq', 1, false);
          public          postgres    false    277            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 80, true);
          public          postgres    false    215            �           0    0    order_display_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_display_id_seq', 6, true);
          public          postgres    false    247            �           2606    84445    payment_session OneSelected 
   CONSTRAINT     h   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "OneSelected" UNIQUE (cart_id, is_selected);
 G   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "OneSelected";
       public            postgres    false    237    237            q           2606    84298 +   money_amount PK_022e49a7e21a8dfb820f788778a 
   CONSTRAINT     k   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "PK_022e49a7e21a8dfb820f788778a" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "PK_022e49a7e21a8dfb820f788778a";
       public            postgres    false    227            A           2606    85478 4   notification_provider PK_0425c2423e2ce9fdfd5c23761d9 
   CONSTRAINT     t   ALTER TABLE ONLY public.notification_provider
    ADD CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.notification_provider DROP CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9";
       public            postgres    false    271            ,           2606    84836 /   store_currencies PK_0f2bff3bccc785c320a4df836de 
   CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "PK_0f2bff3bccc785c320a4df836de" PRIMARY KEY (store_id, currency_code);
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "PK_0f2bff3bccc785c320a4df836de";
       public            postgres    false    265    265            �           2606    84678 $   order PK_1031171c13130102495201e3e20 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "PK_1031171c13130102495201e3e20" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "PK_1031171c13130102495201e3e20";
       public            postgres    false    248                       2606    84800 -   cart_discounts PK_10bd412c9071ccc0cf555afd9bb 
   CONSTRAINT        ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb" PRIMARY KEY (cart_id, discount_id);
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb";
       public            postgres    false    261    261                       2606    84773 -   product_images PK_10de97980da2e939c4c0e8423f2 
   CONSTRAINT        ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "PK_10de97980da2e939c4c0e8423f2" PRIMARY KEY (product_id, image_id);
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "PK_10de97980da2e939c4c0e8423f2";
       public            postgres    false    258    258            L           2606    85524 *   product_tag PK_1439455c6528caa94fcc8564fda 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_tag
    ADD CONSTRAINT "PK_1439455c6528caa94fcc8564fda" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.product_tag DROP CONSTRAINT "PK_1439455c6528caa94fcc8564fda";
       public            postgres    false    274                       2606    84791 /   discount_regions PK_15974566a8b6e04a7c754e85b75 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "PK_15974566a8b6e04a7c754e85b75" PRIMARY KEY (discount_id, region_id);
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "PK_15974566a8b6e04a7c754e85b75";
       public            postgres    false    260    260            y           2606    84309 .   product_variant PK_1ab69c9935c61f7c70791ae0a9f 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f";
       public            postgres    false    228            �           2606    86186 9   price_list_customer_groups PK_1afcbe15cc8782dc80c05707df9 
   CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9" PRIMARY KEY (price_list_id, customer_group_id);
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9";
       public            postgres    false    300    300            R           2606    85540 +   product_tags PK_1cf5c9537e7198df494b71b993f 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "PK_1cf5c9537e7198df494b71b993f" PRIMARY KEY (product_id, product_tag_id);
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "PK_1cf5c9537e7198df494b71b993f";
       public            postgres    false    276    276            �           2606    84711 .   idempotency_key PK_213f125e14469be304f9ff1d452 
   CONSTRAINT     n   ALTER TABLE ONLY public.idempotency_key
    ADD CONSTRAINT "PK_213f125e14469be304f9ff1d452" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.idempotency_key DROP CONSTRAINT "PK_213f125e14469be304f9ff1d452";
       public            postgres    false    251                        2606    84809 .   cart_gift_cards PK_2389be82bf0ef3635e2014c9ef1 
   CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1" PRIMARY KEY (cart_id, gift_card_id);
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1";
       public            postgres    false    262    262            o           2606    85874 '   tax_rate PK_23b71b53f650c0b39e99ccef4fd 
   CONSTRAINT     g   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd";
       public            postgres    false    284            }           2606    84322 3   product_option_value PK_2ab71ed3b21be5800905c621535 
   CONSTRAINT     s   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "PK_2ab71ed3b21be5800905c621535" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "PK_2ab71ed3b21be5800905c621535";
       public            postgres    false    229            �           2606    86210 3   line_item_adjustment PK_2b1360103753df2dc8257c2c8c3 
   CONSTRAINT     s   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3";
       public            postgres    false    301            �           2606    84361 .   shipping_option PK_2e56fddaa65f3a26d402e5d786e 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e";
       public            postgres    false    232                       2606    85911 /   product_tax_rate PK_326257ce468df46cd5c8c5922e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "PK_326257ce468df46cd5c8c5922e9" PRIMARY KEY (product_id, rate_id);
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "PK_326257ce468df46cd5c8c5922e9";
       public            postgres    false    288    288                       2606    84782 5   discount_rule_products PK_351c8c92f5d27283c445cd022ee 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "PK_351c8c92f5d27283c445cd022ee" PRIMARY KEY (discount_rule_id, product_id);
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "PK_351c8c92f5d27283c445cd022ee";
       public            postgres    false    259    259            �           2606    86082 >   discount_condition_product_type PK_35d538a5a24399d0df978df12ed 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "PK_35d538a5a24399d0df978df12ed" PRIMARY KEY (product_type_id, condition_id);
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "PK_35d538a5a24399d0df978df12ed";
       public            postgres    false    297    297            a           2606    84246 *   return_item PK_46409dc1dd5f38509b9000c3069 
   CONSTRAINT     z   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "PK_46409dc1dd5f38509b9000c3069" PRIMARY KEY (return_id, item_id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "PK_46409dc1dd5f38509b9000c3069";
       public            postgres    false    220    220            (           2606    84827 /   order_gift_cards PK_49a8ec66a6625d7c2e3526e05b4 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4" PRIMARY KEY (order_id, gift_card_id);
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4";
       public            postgres    false    264    264            I           2606    85514 1   product_collection PK_49d419fc77d3aed46c835c558ac 
   CONSTRAINT     q   ALTER TABLE ONLY public.product_collection
    ADD CONSTRAINT "PK_49d419fc77d3aed46c835c558ac" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.product_collection DROP CONSTRAINT "PK_49d419fc77d3aed46c835c558ac";
       public            postgres    false    273            t           2606    85891 1   line_item_tax_line PK_4a0f4322fcd5ce4af85727f89a8 
   CONSTRAINT     q   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8";
       public            postgres    false    286            �           2606    84567 #   swap PK_4a10d0f359339acef77e7f986d9 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "PK_4a10d0f359339acef77e7f986d9" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "PK_4a10d0f359339acef77e7f986d9";
       public            postgres    false    243            �           2606    84332 -   product_option PK_4cf3c467e9bc764bdd32c4cd938 
   CONSTRAINT     m   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938";
       public            postgres    false    230            _           2606    84238 *   fulfillment PK_50c102da132afffae660585981f 
   CONSTRAINT     j   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "PK_50c102da132afffae660585981f" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "PK_50c102da132afffae660585981f";
       public            postgres    false    219            �           2606    86179 )   price_list PK_52ea7826468b1c889cb2c28df03 
   CONSTRAINT     i   ALTER TABLE ONLY public.price_list
    ADD CONSTRAINT "PK_52ea7826468b1c889cb2c28df03" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.price_list DROP CONSTRAINT "PK_52ea7826468b1c889cb2c28df03";
       public            postgres    false    299            ?           2606    85340 .   claim_item_tags PK_54ab8ce0f7e99167068188fbd81 
   CONSTRAINT     {   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81" PRIMARY KEY (item_id, tag_id);
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81";
       public            postgres    false    270    270            y           2606    85901 7   shipping_method_tax_line PK_54c94f5908aacbd51cf0a73edb1 
   CONSTRAINT     w   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1" PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1";
       public            postgres    false    287            7           2606    85285 )   claim_item PK_5679662039bc4c7c6bc7fa1be2d 
   CONSTRAINT     i   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d";
       public            postgres    false    268            �           2606    86344 )   order_edit PK_58ab6acf2e84b4e827f5f846f7a 
   CONSTRAINT     i   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a";
       public            postgres    false    306                       2606    84764 ;   region_fulfillment_providers PK_5b7d928a1fb50d6803868cfab3a 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a" PRIMARY KEY (region_id, provider_id);
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a";
       public            postgres    false    257    257            l           2606    84280 %   region PK_5f48ffc3af96bc486f5f3f3a6da 
   CONSTRAINT     e   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da";
       public            postgres    false    225            �           2606    86480 @   publishable_api_key_sales_channel PK_68eaeb14bdac8954460054c567c 
   CONSTRAINT     �   ALTER TABLE ONLY public.publishable_api_key_sales_channel
    ADD CONSTRAINT "PK_68eaeb14bdac8954460054c567c" PRIMARY KEY (sales_channel_id, publishable_key_id);
 l   ALTER TABLE ONLY public.publishable_api_key_sales_channel DROP CONSTRAINT "PK_68eaeb14bdac8954460054c567c";
       public            postgres    false    311    311            F           2606    85487 +   notification PK_705b6c7cdf9b2c2ff7ac7872cb7 
   CONSTRAINT     k   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7";
       public            postgres    false    272            c           2606    84253 '   currency PK_723472e41cae44beb0763f4039c 
   CONSTRAINT     i   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT "PK_723472e41cae44beb0763f4039c" PRIMARY KEY (code);
 S   ALTER TABLE ONLY public.currency DROP CONSTRAINT "PK_723472e41cae44beb0763f4039c";
       public            postgres    false    221            2           2606    85266 (   claim_tag PK_7761180541142a5926501018d34 
   CONSTRAINT     h   ALTER TABLE ONLY public.claim_tag
    ADD CONSTRAINT "PK_7761180541142a5926501018d34" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.claim_tag DROP CONSTRAINT "PK_7761180541142a5926501018d34";
       public            postgres    false    267            /           2606    85257 *   claim_image PK_7c49e44bfe8840ca7d917890101 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "PK_7c49e44bfe8840ca7d917890101" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "PK_7c49e44bfe8840ca7d917890101";
       public            postgres    false    266            �           2606    85997 -   customer_group PK_88e7da3ff7262d9e0a35aa3664e 
   CONSTRAINT     m   ALTER TABLE ONLY public.customer_group
    ADD CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.customer_group DROP CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e";
       public            postgres    false    291            �           2606    86686 /   onboarding_state PK_891b72628471aada55d7b8c9410 
   CONSTRAINT     o   ALTER TABLE ONLY public.onboarding_state
    ADD CONSTRAINT "PK_891b72628471aada55d7b8c9410" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.onboarding_state DROP CONSTRAINT "PK_891b72628471aada55d7b8c9410";
       public            postgres    false    318            ;           2606    85333 *   claim_order PK_8981f5595a4424021466aa4c7a4 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "PK_8981f5595a4424021466aa4c7a4" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "PK_8981f5595a4424021466aa4c7a4";
       public            postgres    false    269            U           2606    84213 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    216            k           2606    85806 5   custom_shipping_option PK_8dfcb5c1172c29eec4a728420cc 
   CONSTRAINT     u   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc";
       public            postgres    false    283            �           2606    86472 /   analytics_config PK_93505647c5d7cb479becb810b0f 
   CONSTRAINT     o   ALTER TABLE ONLY public.analytics_config
    ADD CONSTRAINT "PK_93505647c5d7cb479becb810b0f" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.analytics_config DROP CONSTRAINT "PK_93505647c5d7cb479becb810b0f";
       public            postgres    false    310            `           2606    85650 ,   return_reason PK_95fd1172973165790903e65660a 
   CONSTRAINT     l   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "PK_95fd1172973165790903e65660a" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "PK_95fd1172973165790903e65660a";
       public            postgres    false    280            d           2606    85764 #   note PK_96d0c172a4fba276b1bbed43058 
   CONSTRAINT     c   ALTER TABLE ONLY public.note
    ADD CONSTRAINT "PK_96d0c172a4fba276b1bbed43058" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.note DROP CONSTRAINT "PK_96d0c172a4fba276b1bbed43058";
       public            postgres    false    281            �           2606    86091 9   discount_condition_product PK_994eb4529fdbf14450d64ec17e8 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8" PRIMARY KEY (product_id, condition_id);
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8";
       public            postgres    false    298    298            �           2606    86512 =   product_variant_inventory_item PK_9a1188b8d36f4d198303b4f7efa 
   CONSTRAINT     }   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa" PRIMARY KEY (id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa";
       public            postgres    false    314            �           2606    84727 )   staged_job PK_9a28fb48c46c5509faf43ac8c8d 
   CONSTRAINT     i   ALTER TABLE ONLY public.staged_job
    ADD CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.staged_job DROP CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d";
       public            postgres    false    253            �           2606    86489 2   publishable_api_key PK_9e613278673a87de92c606b4494 
   CONSTRAINT     r   ALTER TABLE ONLY public.publishable_api_key
    ADD CONSTRAINT "PK_9e613278673a87de92c606b4494" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.publishable_api_key DROP CONSTRAINT "PK_9e613278673a87de92c606b4494";
       public            postgres    false    312                       2606    84755 7   region_payment_providers PK_9fa1e69914d3dd752de6b1da407 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407" PRIMARY KEY (region_id, provider_id);
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407";
       public            postgres    false    256    256            �           2606    84345 :   shipping_option_requirement PK_a0ff15442606d9f783602cb23a7 
   CONSTRAINT     z   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "PK_a0ff15442606d9f783602cb23a7" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "PK_a0ff15442606d9f783602cb23a7";
       public            postgres    false    231            �           2606    84443 .   payment_session PK_a1a91b20f7f3b1e5afb5485cbcd 
   CONSTRAINT     n   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd";
       public            postgres    false    237            $           2606    84818 .   order_discounts PK_a7418714ffceebc125bf6d8fcfe 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe" PRIMARY KEY (order_id, discount_id);
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe";
       public            postgres    false    263    263            �           2606    84690 '   customer PK_a7a13f4cacb744524e44dfdad32 
   CONSTRAINT     g   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32";
       public            postgres    false    249            �           2606    86073 =   discount_condition_product_tag PK_a95382c1e62205b121aa058682b 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "PK_a95382c1e62205b121aa058682b" PRIMARY KEY (product_tag_id, condition_id);
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "PK_a95382c1e62205b121aa058682b";
       public            postgres    false    296    296            �           2606    84719 $   oauth PK_a957b894e50eb16b969c0640a8d 
   CONSTRAINT     d   ALTER TABLE ONLY public.oauth
    ADD CONSTRAINT "PK_a957b894e50eb16b969c0640a8d" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.oauth DROP CONSTRAINT "PK_a957b894e50eb16b969c0640a8d";
       public            postgres    false    252            �           2606    84411 ,   discount_rule PK_ac2c280de3701b2d66f6817f760 
   CONSTRAINT     l   ALTER TABLE ONLY public.discount_rule
    ADD CONSTRAINT "PK_ac2c280de3701b2d66f6817f760" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.discount_rule DROP CONSTRAINT "PK_ac2c280de3701b2d66f6817f760";
       public            postgres    false    235            �           2606    84469 (   gift_card PK_af4e338d2d41035042843ad641f 
   CONSTRAINT     h   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "PK_af4e338d2d41035042843ad641f" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "PK_af4e338d2d41035042843ad641f";
       public            postgres    false    239            �           2606    86500 5   sales_channel_location PK_afd2c2c52634bc8280a9c9ee533 
   CONSTRAINT     u   ALTER TABLE ONLY public.sales_channel_location
    ADD CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.sales_channel_location DROP CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533";
       public            postgres    false    313            �           2606    86731 ,   block_section PK_b0bf0e5d9077cc2b931c14c784a 
   CONSTRAINT     l   ALTER TABLE ONLY public.block_section
    ADD CONSTRAINT "PK_b0bf0e5d9077cc2b931c14c784a" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.block_section DROP CONSTRAINT "PK_b0bf0e5d9077cc2b931c14c784a";
       public            postgres    false    320            q           2606    85882 +   tax_provider PK_b198bf82ba6a317c11763d99b99 
   CONSTRAINT     k   ALTER TABLE ONLY public.tax_provider
    ADD CONSTRAINT "PK_b198bf82ba6a317c11763d99b99" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.tax_provider DROP CONSTRAINT "PK_b198bf82ba6a317c11763d99b99";
       public            postgres    false    285            �           2606    86064 D   discount_condition_product_collection PK_b3508fc787aa4a38705866cbb6d 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d" PRIMARY KEY (product_collection_id, condition_id);
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d";
       public            postgres    false    295    295            �           2606    84501 .   shipping_method PK_b9b0adfad3c6b99229c1e7d4865 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865";
       public            postgres    false    241            Y           2606    84228 /   fulfillment_item PK_bc3e8a388de75db146a249922e0 
   CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "PK_bc3e8a388de75db146a249922e0" PRIMARY KEY (fulfillment_id, item_id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "PK_bc3e8a388de75db146a249922e0";
       public            postgres    false    218    218            �           2606    85929 0   shipping_tax_rate PK_bcd93b14d7e2695365d383f5eae 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae" PRIMARY KEY (shipping_option_id, rate_id);
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae";
       public            postgres    false    290    290            W           2606    84221 3   fulfillment_provider PK_beb35a6de60a6c4f91d5ae57e44 
   CONSTRAINT     s   ALTER TABLE ONLY public.fulfillment_provider
    ADD CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.fulfillment_provider DROP CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44";
       public            postgres    false    217            �           2606    84387 &   product PK_bebc9158e480b949565b4dc7a82 
   CONSTRAINT     f   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_bebc9158e480b949565b4dc7a82";
       public            postgres    false    234            g           2606    84262 &   country PK_bf6e37c231c4f4ea56dcd887269 
   CONSTRAINT     f   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269";
       public            postgres    false    223            �           2606    84490 #   cart PK_c524ec48751b9b5bcfbf6e59be7 
   CONSTRAINT     c   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7";
       public            postgres    false    240            �           2606    84377 /   shipping_profile PK_c8120e4543a5a3a121f2968a1ec 
   CONSTRAINT     o   ALTER TABLE ONLY public.shipping_profile
    ADD CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.shipping_profile DROP CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec";
       public            postgres    false    233            �           2606    84526 %   return PK_c8ad68d13e76d75d803b5aeebc4 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4";
       public            postgres    false    242                       2606    84747 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    255            �           2606    84585 (   line_item PK_cce6b13e67fa506d1d9618ac68b 
   CONSTRAINT     h   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b";
       public            postgres    false    244            �           2606    86055 @   discount_condition_customer_group PK_cdc8b2277169a16b8b7d4c73e0e 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e" PRIMARY KEY (customer_group_id, condition_id);
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e";
       public            postgres    false    294    294            �           2606    84597 4   gift_card_transaction PK_cfb5b4ba5447a507aef87d73fe7 
   CONSTRAINT     t   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7";
       public            postgres    false    245            �           2606    84421 '   discount PK_d05d8712e429673e459e7f1cddb 
   CONSTRAINT     g   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "PK_d05d8712e429673e459e7f1cddb" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "PK_d05d8712e429673e459e7f1cddb";
       public            postgres    false    236            �           2606    86252 ,   sales_channel PK_d1eb0b923ea5a0eb1e0916191f1 
   CONSTRAINT     l   ALTER TABLE ONLY public.sales_channel
    ADD CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.sales_channel DROP CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1";
       public            postgres    false    303            n           2606    84289 $   image PK_d6db1ab4ee9ad9dbe86c64e4cc3 
   CONSTRAINT     d   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.image DROP CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3";
       public            postgres    false    226            �           2606    86329 0   order_item_change PK_d6eb138f77ffdee83567b85af0c 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c";
       public            postgres    false    305            �           2606    84702 &   address PK_d92de1f82754668b5f5f5dd4fd5 
   CONSTRAINT     f   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5";
       public            postgres    false    250            �           2606    85920 4   product_type_tax_rate PK_ddc9242de1d99bc7674969289f0 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "PK_ddc9242de1d99bc7674969289f0" PRIMARY KEY (product_type_id, rate_id);
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "PK_ddc9242de1d99bc7674969289f0";
       public            postgres    false    289    289            N           2606    85533 +   product_type PK_e0843930fbb8854fe36ca39dae1 
   CONSTRAINT     k   ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.product_type DROP CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1";
       public            postgres    false    275            �           2606    86005 7   customer_group_customers PK_e28a55e34ad1e2d3df9a0ac86d3 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3" PRIMARY KEY (customer_group_id, customer_id);
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3";
       public            postgres    false    292    292            �           2606    86237 (   batch_job PK_e57f84d485145d5be96bc6d871e 
   CONSTRAINT     h   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "PK_e57f84d485145d5be96bc6d871e" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "PK_e57f84d485145d5be96bc6d871e";
       public            postgres    false    302            �           2606    86043 1   discount_condition PK_e6b81d83133ddc21a2baf2e2204 
   CONSTRAINT     q   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204";
       public            postgres    false    293            i           2606    84271 /   payment_provider PK_ea94f42b6c88e9191c3649d7522 
   CONSTRAINT     o   ALTER TABLE ONLY public.payment_provider
    ADD CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.payment_provider DROP CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522";
       public            postgres    false    224            �           2606    84617 %   refund PK_f1cefa2e60d99b206c46c1116e5 
   CONSTRAINT     e   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5";
       public            postgres    false    246            �           2606    84738 $   store PK_f3172007d4de5ae8e7692759d79 
   CONSTRAINT     d   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "PK_f3172007d4de5ae8e7692759d79" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "PK_f3172007d4de5ae8e7692759d79";
       public            postgres    false    254            W           2606    85580 *   draft_order PK_f478946c183d98f8d88a94cfcd7 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7";
       public            postgres    false    278            g           2606    85785 %   invite PK_fc9fa190e5a3c5d80604a4f63e1 
   CONSTRAINT     e   ALTER TABLE ONLY public.invite
    ADD CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.invite DROP CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1";
       public            postgres    false    282            �           2606    84455 &   payment PK_fcaec7df5adf9cac408c686b2ab 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab";
       public            postgres    false    238            ]           2606    85636 ,   tracking_link PK_fcfd77feb9012ec2126d7c0bfb6 
   CONSTRAINT     l   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6";
       public            postgres    false    279            �           2606    86259 4   product_sales_channel PK_fd29b6a8bd641052628dee19583 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "PK_fd29b6a8bd641052628dee19583" PRIMARY KEY (product_id, sales_channel_id);
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "PK_fd29b6a8bd641052628dee19583";
       public            postgres    false    304    304            �           2606    86399 +   payment_collection PK_payment_collection_id 
   CONSTRAINT     k   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "PK_payment_collection_id" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "PK_payment_collection_id";
       public            postgres    false    307            �           2606    86432 :   payment_collection_payments PK_payment_collection_payments 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "PK_payment_collection_payments" PRIMARY KEY (payment_collection_id, payment_id);
 f   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "PK_payment_collection_payments";
       public            postgres    false    309    309            �           2606    86413 :   payment_collection_sessions PK_payment_collection_sessions 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "PK_payment_collection_sessions" PRIMARY KEY (payment_collection_id, payment_session_id);
 f   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "PK_payment_collection_sessions";
       public            postgres    false    308    308            �           2606    86696 <   product_variant_money_amount PK_product_variant_money_amount 
   CONSTRAINT     |   ALTER TABLE ONLY public.product_variant_money_amount
    ADD CONSTRAINT "PK_product_variant_money_amount" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.product_variant_money_amount DROP CONSTRAINT "PK_product_variant_money_amount";
       public            postgres    false    319            �           2606    86527 /   product_category PK_qgguwbn1cwstxk93efl0px9oqwt 
   CONSTRAINT     o   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.product_category DROP CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt";
       public            postgres    false    315            �           2606    84503 .   shipping_method REL_1d9ad62038998c3a85c77a53cf 
   CONSTRAINT     p   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf" UNIQUE (return_id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    241            �           2606    84569 #   swap REL_402e8182bc553e082f6380020b 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "REL_402e8182bc553e082f6380020b" UNIQUE (cart_id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "REL_402e8182bc553e082f6380020b";
       public            postgres    false    243            Y           2606    85582 *   draft_order REL_5bd11d0e2a9628128e2c26fd0a 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a" UNIQUE (cart_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    278            �           2606    86335 0   order_item_change REL_5f9688929761f7df108b630e64 
   CONSTRAINT     u   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "REL_5f9688929761f7df108b630e64" UNIQUE (line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "REL_5f9688929761f7df108b630e64";
       public            postgres    false    305            �           2606    84692 '   customer REL_8abe81b9aac151ae60bf507ad1 
   CONSTRAINT     r   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1" UNIQUE (billing_address_id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    249            [           2606    85584 *   draft_order REL_8f6dd6c49202f1466ebf21e77d 
   CONSTRAINT     k   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d" UNIQUE (order_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    278            �           2606    84492 #   cart REL_9d1a161434c610aae7c3df2dc7 
   CONSTRAINT     f   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7" UNIQUE (payment_id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    240            �           2606    84528 %   return REL_bad82d7bff2b08b87094bfac3d 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d" UNIQUE (swap_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    242            �           2606    84457 &   payment REL_c17aff091441b7c25ec3d68d36 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "REL_c17aff091441b7c25ec3d68d36" UNIQUE (swap_id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "REL_c17aff091441b7c25ec3d68d36";
       public            postgres    false    238            �           2606    84680 $   order REL_c99a206eb11ad45f6b7f04f2dc 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc" UNIQUE (cart_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    248            m           2606    85808 5   custom_shipping_option UQ_0f838b122a9a01d921aa1cdb669 
   CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669" UNIQUE (shipping_option_id, cart_id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669";
       public            postgres    false    283    283            v           2606    86225 1   line_item_tax_line UQ_3c2af51043ed7243e7d9775a2ad 
   CONSTRAINT     w   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad" UNIQUE (item_id, code);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad";
       public            postgres    false    286    286            �           2606    86333 0   order_item_change UQ_5b7a99181e4db2ea821be0b6196 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196" UNIQUE (order_edit_id, original_line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196";
       public            postgres    false    305    305                       2606    86263 $   store UQ_61b0f48cccbb5f41c750bac7286 
   CONSTRAINT     u   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286" UNIQUE (default_sales_channel_id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286";
       public            postgres    false    254            �           2606    85344 %   return UQ_71773d56eb2bacb922bc3283398 
   CONSTRAINT     l   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "UQ_71773d56eb2bacb922bc3283398" UNIQUE (claim_order_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "UQ_71773d56eb2bacb922bc3283398";
       public            postgres    false    242            �           2606    85589 $   order UQ_727b872f86c7378474a8fa46147 
   CONSTRAINT     m   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "UQ_727b872f86c7378474a8fa46147" UNIQUE (draft_order_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "UQ_727b872f86c7378474a8fa46147";
       public            postgres    false    248            �           2606    86514 =   product_variant_inventory_item UQ_c9be7c1b11a1a729eb51d1b6bca 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca" UNIQUE (variant_id, inventory_item_id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca";
       public            postgres    false    314    314            {           2606    86227 7   shipping_method_tax_line UQ_cd147fca71e50bc954139fa3104 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "UQ_cd147fca71e50bc954139fa3104" UNIQUE (shipping_method_id, code);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "UQ_cd147fca71e50bc954139fa3104";
       public            postgres    false    287    287            �           2606    86331 0   order_item_change UQ_da93cee3ca0dd50a5246268c2e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9" UNIQUE (order_edit_id, line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9";
       public            postgres    false    305    305            �           2606    86045    discount_condition dctypeuniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT dctypeuniq UNIQUE (type, operator, discount_rule_id);
 G   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT dctypeuniq;
       public            postgres    false    293    293    293            �           2606    84599    gift_card_transaction gcuniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT gcuniq UNIQUE (gift_card_id, order_id);
 F   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT gcuniq;
       public            postgres    false    245    245            �           1259    85429    IDX_012a62ba743e427b5ebe9dee18    INDEX     v   CREATE INDEX "IDX_012a62ba743e427b5ebe9dee18" ON public.shipping_option_requirement USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_012a62ba743e427b5ebe9dee18";
       public            postgres    false    231            �           1259    86097    IDX_01486cc9dc6b36bf658685535f    INDEX     u   CREATE INDEX "IDX_01486cc9dc6b36bf658685535f" ON public.discount_condition_product_tag USING btree (product_tag_id);
 4   DROP INDEX public."IDX_01486cc9dc6b36bf658685535f";
       public            postgres    false    296            8           1259    85455    IDX_017d58bf8260c6e1a2588d258e    INDEX     g   CREATE INDEX "IDX_017d58bf8260c6e1a2588d258e" ON public.claim_order USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_017d58bf8260c6e1a2588d258e";
       public            postgres    false    269            s           1259    85737    IDX_045d4a149c09f4704e0bc08dd4    INDEX     �   CREATE UNIQUE INDEX "IDX_045d4a149c09f4704e0bc08dd4" ON public.product_variant USING btree (barcode) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_045d4a149c09f4704e0bc08dd4";
       public            postgres    false    228    228                       1259    84811    IDX_0fb38b6d167793192bc126d835    INDEX     d   CREATE INDEX "IDX_0fb38b6d167793192bc126d835" ON public.cart_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_0fb38b6d167793192bc126d835";
       public            postgres    false    262            !           1259    84820    IDX_0fc1ec4e3db9001ad60c19daf1    INDEX     c   CREATE INDEX "IDX_0fc1ec4e3db9001ad60c19daf1" ON public.order_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_0fc1ec4e3db9001ad60c19daf1";
       public            postgres    false    263            �           1259    85364    IDX_118e3c48f09a7728f41023c94e    INDEX     `   CREATE INDEX "IDX_118e3c48f09a7728f41023c94e" ON public.line_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_118e3c48f09a7728f41023c94e";
       public            postgres    false    244            �           1259    85467    IDX_19b0c6293443d1b464f604c331    INDEX     c   CREATE INDEX "IDX_19b0c6293443d1b464f604c331" ON public."order" USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_19b0c6293443d1b464f604c331";
       public            postgres    false    248            |           1259    85934    IDX_1d04aebeabb6a89f87e536a124    INDEX     c   CREATE INDEX "IDX_1d04aebeabb6a89f87e536a124" ON public.product_tax_rate USING btree (product_id);
 4   DROP INDEX public."IDX_1d04aebeabb6a89f87e536a124";
       public            postgres    false    288            �           1259    84508    IDX_1d9ad62038998c3a85c77a53cf    INDEX     a   CREATE INDEX "IDX_1d9ad62038998c3a85c77a53cf" ON public.shipping_method USING btree (return_id);
 4   DROP INDEX public."IDX_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    241            O           1259    85542    IDX_21683a063fe82dafdf681ecc9c    INDEX     c   CREATE INDEX "IDX_21683a063fe82dafdf681ecc9c" ON public.product_tags USING btree (product_tag_id);
 4   DROP INDEX public."IDX_21683a063fe82dafdf681ecc9c";
       public            postgres    false    276            -           1259    85426    IDX_21cbfedd83d736d86f4c6f4ce5    INDEX     a   CREATE INDEX "IDX_21cbfedd83d736d86f4c6f4ce5" ON public.claim_image USING btree (claim_item_id);
 4   DROP INDEX public."IDX_21cbfedd83d736d86f4c6f4ce5";
       public            postgres    false    266                       1259    84775    IDX_2212515ba306c79f42c46a99db    INDEX     _   CREATE INDEX "IDX_2212515ba306c79f42c46a99db" ON public.product_images USING btree (image_id);
 4   DROP INDEX public."IDX_2212515ba306c79f42c46a99db";
       public            postgres    false    258            �           1259    85449    IDX_242205c81c1152fab1b6e84847    INDEX     X   CREATE INDEX "IDX_242205c81c1152fab1b6e84847" ON public.cart USING btree (customer_id);
 4   DROP INDEX public."IDX_242205c81c1152fab1b6e84847";
       public            postgres    false    240            }           1259    85933    IDX_2484cf14c437a04586b07e7ddd    INDEX     `   CREATE INDEX "IDX_2484cf14c437a04586b07e7ddd" ON public.product_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_2484cf14c437a04586b07e7ddd";
       public            postgres    false    288            �           1259    85936    IDX_25a3138bb236f63d9bb6c8ff11    INDEX     m   CREATE INDEX "IDX_25a3138bb236f63d9bb6c8ff11" ON public.product_type_tax_rate USING btree (product_type_id);
 4   DROP INDEX public."IDX_25a3138bb236f63d9bb6c8ff11";
       public            postgres    false    289            �           1259    84586    IDX_27283ee631862266d0f1c68064    INDEX     Y   CREATE INDEX "IDX_27283ee631862266d0f1c68064" ON public.line_item USING btree (cart_id);
 4   DROP INDEX public."IDX_27283ee631862266d0f1c68064";
       public            postgres    false    244            t           1259    85736    IDX_2ca8cfbdafb998ecfd6d340389    INDEX     }   CREATE UNIQUE INDEX "IDX_2ca8cfbdafb998ecfd6d340389" ON public.product_variant USING btree (sku) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_2ca8cfbdafb998ecfd6d340389";
       public            postgres    false    228    228            �           1259    86212    IDX_2f41b20a71f30e60471d7e3769    INDEX     h   CREATE INDEX "IDX_2f41b20a71f30e60471d7e3769" ON public.line_item_adjustment USING btree (discount_id);
 4   DROP INDEX public."IDX_2f41b20a71f30e60471d7e3769";
       public            postgres    false    301            a           1259    85766    IDX_3287f98befad26c3a7dab088cf    INDEX     X   CREATE INDEX "IDX_3287f98befad26c3a7dab088cf" ON public.note USING btree (resource_id);
 4   DROP INDEX public."IDX_3287f98befad26c3a7dab088cf";
       public            postgres    false    281            �           1259    85937    IDX_346e0016cf045b998074774764    INDEX     a   CREATE INDEX "IDX_346e0016cf045b998074774764" ON public.shipping_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_346e0016cf045b998074774764";
       public            postgres    false    290            �           1259    86261    IDX_37341bad297fe5cca91f921032    INDEX     n   CREATE INDEX "IDX_37341bad297fe5cca91f921032" ON public.product_sales_channel USING btree (sales_channel_id);
 4   DROP INDEX public."IDX_37341bad297fe5cca91f921032";
       public            postgres    false    304            �           1259    86473    IDX_379ca70338ce9991f3affdeedf    INDEX     �   CREATE UNIQUE INDEX "IDX_379ca70338ce9991f3affdeedf" ON public.analytics_config USING btree (id, user_id) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_379ca70338ce9991f3affdeedf";
       public            postgres    false    310    310    310            	           1259    84766    IDX_37f361c38a18d12a3fa3158d0c    INDEX     p   CREATE INDEX "IDX_37f361c38a18d12a3fa3158d0c" ON public.region_fulfillment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_37f361c38a18d12a3fa3158d0c";
       public            postgres    false    257                       1259    84757    IDX_3a6947180aeec283cd92c59ebb    INDEX     l   CREATE INDEX "IDX_3a6947180aeec283cd92c59ebb" ON public.region_payment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_3a6947180aeec283cd92c59ebb";
       public            postgres    false    256            �           1259    86007    IDX_3c6412d076292f439269abe1a2    INDEX     l   CREATE INDEX "IDX_3c6412d076292f439269abe1a2" ON public.customer_group_customers USING btree (customer_id);
 4   DROP INDEX public."IDX_3c6412d076292f439269abe1a2";
       public            postgres    false    292            �           1259    84588    IDX_3fa354d8d1233ff81097b2fcb6    INDEX     Y   CREATE INDEX "IDX_3fa354d8d1233ff81097b2fcb6" ON public.line_item USING btree (swap_id);
 4   DROP INDEX public."IDX_3fa354d8d1233ff81097b2fcb6";
       public            postgres    false    244            �           1259    84587    IDX_43a2b24495fe1d9fc2a9c835bc    INDEX     Z   CREATE INDEX "IDX_43a2b24495fe1d9fc2a9c835bc" ON public.line_item USING btree (order_id);
 4   DROP INDEX public."IDX_43a2b24495fe1d9fc2a9c835bc";
       public            postgres    false    244            h           1259    85809    IDX_44090cb11b06174cbcc667e91c    INDEX     q   CREATE INDEX "IDX_44090cb11b06174cbcc667e91c" ON public.custom_shipping_option USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_44090cb11b06174cbcc667e91c";
       public            postgres    false    283            �           1259    85441    IDX_4665f17abc1e81dd58330e5854    INDEX     W   CREATE INDEX "IDX_4665f17abc1e81dd58330e5854" ON public.payment USING btree (cart_id);
 4   DROP INDEX public."IDX_4665f17abc1e81dd58330e5854";
       public            postgres    false    238            �           1259    85448    IDX_484c329f4783be4e18e5e2ff09    INDEX     V   CREATE INDEX "IDX_484c329f4783be4e18e5e2ff09" ON public.cart USING btree (region_id);
 4   DROP INDEX public."IDX_484c329f4783be4e18e5e2ff09";
       public            postgres    false    240            �           1259    86101    IDX_4d5f98645a67545d8dea42e2eb    INDEX     {   CREATE INDEX "IDX_4d5f98645a67545d8dea42e2eb" ON public.discount_condition_customer_group USING btree (customer_group_id);
 4   DROP INDEX public."IDX_4d5f98645a67545d8dea42e2eb";
       public            postgres    false    294                       1259    84783    IDX_4e0739e5f0244c08d41174ca08    INDEX     o   CREATE INDEX "IDX_4e0739e5f0244c08d41174ca08" ON public.discount_rule_products USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_4e0739e5f0244c08d41174ca08";
       public            postgres    false    259                       1259    84774    IDX_4f166bb8c2bfcef2498d97b406    INDEX     a   CREATE INDEX "IDX_4f166bb8c2bfcef2498d97b406" ON public.product_images USING btree (product_id);
 4   DROP INDEX public."IDX_4f166bb8c2bfcef2498d97b406";
       public            postgres    false    258            r           1259    85892    IDX_5077fa54b0d037e984385dfe8a    INDEX     b   CREATE INDEX "IDX_5077fa54b0d037e984385dfe8a" ON public.line_item_tax_line USING btree (item_id);
 4   DROP INDEX public."IDX_5077fa54b0d037e984385dfe8a";
       public            postgres    false    286            �           1259    84505    IDX_5267705a43d547e232535b656c    INDEX     `   CREATE INDEX "IDX_5267705a43d547e232535b656c" ON public.shipping_method USING btree (order_id);
 4   DROP INDEX public."IDX_5267705a43d547e232535b656c";
       public            postgres    false    241            �           1259    86187    IDX_52875734e9dd69064f0041f4d9    INDEX     p   CREATE INDEX "IDX_52875734e9dd69064f0041f4d9" ON public.price_list_customer_groups USING btree (price_list_id);
 4   DROP INDEX public."IDX_52875734e9dd69064f0041f4d9";
       public            postgres    false    300            �           1259    85460    IDX_52dd74e8c989aa5665ad2852b8    INDEX     U   CREATE INDEX "IDX_52dd74e8c989aa5665ad2852b8" ON public.swap USING btree (order_id);
 4   DROP INDEX public."IDX_52dd74e8c989aa5665ad2852b8";
       public            postgres    false    243            �           1259    84589    IDX_5371cbaa3be5200f373d24e3d5    INDEX     \   CREATE INDEX "IDX_5371cbaa3be5200f373d24e3d5" ON public.line_item USING btree (variant_id);
 4   DROP INDEX public."IDX_5371cbaa3be5200f373d24e3d5";
       public            postgres    false    244            �           1259    84472    IDX_53cb5605fa42e82b4d47b47bda    INDEX     ]   CREATE UNIQUE INDEX "IDX_53cb5605fa42e82b4d47b47bda" ON public.gift_card USING btree (code);
 4   DROP INDEX public."IDX_53cb5605fa42e82b4d47b47bda";
       public            postgres    false    239            �           1259    85466    IDX_5568d3b9ce9f7abeeb37511ecf    INDEX     b   CREATE INDEX "IDX_5568d3b9ce9f7abeeb37511ecf" ON public."order" USING btree (billing_address_id);
 4   DROP INDEX public."IDX_5568d3b9ce9f7abeeb37511ecf";
       public            postgres    false    248            �           1259    85463    IDX_579e01fb94f4f58db480857e05    INDEX     Z   CREATE INDEX "IDX_579e01fb94f4f58db480857e05" ON public."order" USING btree (display_id);
 4   DROP INDEX public."IDX_579e01fb94f4f58db480857e05";
       public            postgres    false    248            �           1259    86260    IDX_5a4d5e1e60f97633547821ec8d    INDEX     h   CREATE INDEX "IDX_5a4d5e1e60f97633547821ec8d" ON public.product_sales_channel USING btree (product_id);
 4   DROP INDEX public."IDX_5a4d5e1e60f97633547821ec8d";
       public            postgres    false    304            P           1259    85541    IDX_5b0c6fc53c574299ecc7f9ee22    INDEX     _   CREATE INDEX "IDX_5b0c6fc53c574299ecc7f9ee22" ON public.product_tags USING btree (product_id);
 4   DROP INDEX public."IDX_5b0c6fc53c574299ecc7f9ee22";
       public            postgres    false    276            S           1259    85586    IDX_5bd11d0e2a9628128e2c26fd0a    INDEX     [   CREATE INDEX "IDX_5bd11d0e2a9628128e2c26fd0a" ON public.draft_order USING btree (cart_id);
 4   DROP INDEX public."IDX_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    278            �           1259    85430    IDX_5c58105f1752fca0f4ce69f466    INDEX     a   CREATE INDEX "IDX_5c58105f1752fca0f4ce69f466" ON public.shipping_option USING btree (region_id);
 4   DROP INDEX public."IDX_5c58105f1752fca0f4ce69f466";
       public            postgres    false    232            �           1259    86006    IDX_620330964db8d2999e67b0dbe3    INDEX     r   CREATE INDEX "IDX_620330964db8d2999e67b0dbe3" ON public.customer_group_customers USING btree (customer_group_id);
 4   DROP INDEX public."IDX_620330964db8d2999e67b0dbe3";
       public            postgres    false    292            3           1259    85288    IDX_64980511ca32c8e92b417644af    INDEX     ]   CREATE INDEX "IDX_64980511ca32c8e92b417644af" ON public.claim_item USING btree (variant_id);
 4   DROP INDEX public."IDX_64980511ca32c8e92b417644af";
       public            postgres    false    268                       1259    84801    IDX_6680319ebe1f46d18f106191d5    INDEX     ^   CREATE INDEX "IDX_6680319ebe1f46d18f106191d5" ON public.cart_discounts USING btree (cart_id);
 4   DROP INDEX public."IDX_6680319ebe1f46d18f106191d5";
       public            postgres    false    261            e           1259    85796    IDX_6b0ce4b4bcfd24491510bf19d1    INDEX     `   CREATE UNIQUE INDEX "IDX_6b0ce4b4bcfd24491510bf19d1" ON public.invite USING btree (user_email);
 4   DROP INDEX public."IDX_6b0ce4b4bcfd24491510bf19d1";
       public            postgres    false    282            �           1259    85446    IDX_6b9c66b5e36f7c827dfaa092f9    INDEX     _   CREATE INDEX "IDX_6b9c66b5e36f7c827dfaa092f9" ON public.cart USING btree (billing_address_id);
 4   DROP INDEX public."IDX_6b9c66b5e36f7c827dfaa092f9";
       public            postgres    false    240            4           1259    85287    IDX_6e0cad0daef76bb642675910b9    INDEX     Z   CREATE INDEX "IDX_6e0cad0daef76bb642675910b9" ON public.claim_item USING btree (item_id);
 4   DROP INDEX public."IDX_6e0cad0daef76bb642675910b9";
       public            postgres    false    268            �           1259    86094    IDX_6ef23ce0b1d9cf9b5b833e52b9    INDEX     t   CREATE INDEX "IDX_6ef23ce0b1d9cf9b5b833e52b9" ON public.discount_condition_product_type USING btree (condition_id);
 4   DROP INDEX public."IDX_6ef23ce0b1d9cf9b5b833e52b9";
       public            postgres    false    297            G           1259    85734    IDX_6f234f058bbbea810dce1d04d0    INDEX     �   CREATE UNIQUE INDEX "IDX_6f234f058bbbea810dce1d04d0" ON public.product_collection USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_6f234f058bbbea810dce1d04d0";
       public            postgres    false    273    273            �           1259    85452    IDX_71773d56eb2bacb922bc328339    INDEX     ]   CREATE INDEX "IDX_71773d56eb2bacb922bc328339" ON public.return USING btree (claim_order_id);
 4   DROP INDEX public."IDX_71773d56eb2bacb922bc328339";
       public            postgres    false    242            )           1259    84838    IDX_82a6bbb0b527c20a0002ddcbd6    INDEX     f   CREATE INDEX "IDX_82a6bbb0b527c20a0002ddcbd6" ON public.store_currencies USING btree (currency_code);
 4   DROP INDEX public."IDX_82a6bbb0b527c20a0002ddcbd6";
       public            postgres    false    265            �           1259    86100    IDX_8486ee16e69013c645d0b8716b    INDEX     v   CREATE INDEX "IDX_8486ee16e69013c645d0b8716b" ON public.discount_condition_customer_group USING btree (condition_id);
 4   DROP INDEX public."IDX_8486ee16e69013c645d0b8716b";
       public            postgres    false    294                       1259    84756    IDX_8aaa78ba90d3802edac317df86    INDEX     j   CREATE INDEX "IDX_8aaa78ba90d3802edac317df86" ON public.region_payment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_8aaa78ba90d3802edac317df86";
       public            postgres    false    256            �           1259    85469    IDX_8abe81b9aac151ae60bf507ad1    INDEX     c   CREATE INDEX "IDX_8abe81b9aac151ae60bf507ad1" ON public.customer USING btree (billing_address_id);
 4   DROP INDEX public."IDX_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    249                       1259    84802    IDX_8df75ef4f35f217768dc113545    INDEX     b   CREATE INDEX "IDX_8df75ef4f35f217768dc113545" ON public.cart_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_8df75ef4f35f217768dc113545";
       public            postgres    false    261            T           1259    85587    IDX_8f6dd6c49202f1466ebf21e77d    INDEX     \   CREATE INDEX "IDX_8f6dd6c49202f1466ebf21e77d" ON public.draft_order USING btree (order_id);
 4   DROP INDEX public."IDX_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    278            5           1259    85286    IDX_900a9c3834257304396b2b0fe7    INDEX     a   CREATE INDEX "IDX_900a9c3834257304396b2b0fe7" ON public.claim_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_900a9c3834257304396b2b0fe7";
       public            postgres    false    268            w           1259    85902    IDX_926ca9f29014af8091722dede0    INDEX     s   CREATE INDEX "IDX_926ca9f29014af8091722dede0" ON public.shipping_method_tax_line USING btree (shipping_method_id);
 4   DROP INDEX public."IDX_926ca9f29014af8091722dede0";
       public            postgres    false    287            i           1259    85810    IDX_93caeb1bb70d37c1d36d6701a7    INDEX     f   CREATE INDEX "IDX_93caeb1bb70d37c1d36d6701a7" ON public.custom_shipping_option USING btree (cart_id);
 4   DROP INDEX public."IDX_93caeb1bb70d37c1d36d6701a7";
       public            postgres    false    283            �           1259    85470    IDX_9c9614b2f9d01665800ea8dbff    INDEX     [   CREATE INDEX "IDX_9c9614b2f9d01665800ea8dbff" ON public.address USING btree (customer_id);
 4   DROP INDEX public."IDX_9c9614b2f9d01665800ea8dbff";
       public            postgres    false    250            �           1259    85450    IDX_9d1a161434c610aae7c3df2dc7    INDEX     W   CREATE INDEX "IDX_9d1a161434c610aae7c3df2dc7" ON public.cart USING btree (payment_id);
 4   DROP INDEX public."IDX_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    240            �           1259    86099    IDX_a0b05dc4257abe639cb75f8eae    INDEX     �   CREATE INDEX "IDX_a0b05dc4257abe639cb75f8eae" ON public.discount_condition_product_collection USING btree (product_collection_id);
 4   DROP INDEX public."IDX_a0b05dc4257abe639cb75f8eae";
       public            postgres    false    295            �           1259    85432    IDX_a0e206bfaed3cb63c186091734    INDEX     c   CREATE INDEX "IDX_a0e206bfaed3cb63c186091734" ON public.shipping_option USING btree (provider_id);
 4   DROP INDEX public."IDX_a0e206bfaed3cb63c186091734";
       public            postgres    false    232            �           1259    86098    IDX_a1c4f9cfb599ad1f0db39cadd5    INDEX     z   CREATE INDEX "IDX_a1c4f9cfb599ad1f0db39cadd5" ON public.discount_condition_product_collection USING btree (condition_id);
 4   DROP INDEX public."IDX_a1c4f9cfb599ad1f0db39cadd5";
       public            postgres    false    295                       1259    84793    IDX_a21a7ffbe420d492eb46c305fe    INDEX     b   CREATE INDEX "IDX_a21a7ffbe420d492eb46c305fe" ON public.discount_regions USING btree (region_id);
 4   DROP INDEX public."IDX_a21a7ffbe420d492eb46c305fe";
       public            postgres    false    260            �           1259    84712    IDX_a421bf4588d0004a9b0c0fe84f    INDEX     n   CREATE UNIQUE INDEX "IDX_a421bf4588d0004a9b0c0fe84f" ON public.idempotency_key USING btree (idempotency_key);
 4   DROP INDEX public."IDX_a421bf4588d0004a9b0c0fe84f";
       public            postgres    false    251            Z           1259    85457    IDX_a52e234f729db789cf473297a5    INDEX     [   CREATE INDEX "IDX_a52e234f729db789cf473297a5" ON public.fulfillment USING btree (swap_id);
 4   DROP INDEX public."IDX_a52e234f729db789cf473297a5";
       public            postgres    false    219            u           1259    85739    IDX_aa16f61348be02dd07ce3fc54e    INDEX     }   CREATE UNIQUE INDEX "IDX_aa16f61348be02dd07ce3fc54e" ON public.product_variant USING btree (upc) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_aa16f61348be02dd07ce3fc54e";
       public            postgres    false    228    228            �           1259    86291    IDX_aac4855eadda71aa1e4b6d7684    INDEX     w   CREATE INDEX "IDX_aac4855eadda71aa1e4b6d7684" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NOT NULL);
 4   DROP INDEX public."IDX_aac4855eadda71aa1e4b6d7684";
       public            postgres    false    238    238            �           1259    85437    IDX_ac2c280de3701b2d66f6817f76    INDEX     X   CREATE INDEX "IDX_ac2c280de3701b2d66f6817f76" ON public.discount USING btree (rule_id);
 4   DROP INDEX public."IDX_ac2c280de3701b2d66f6817f76";
       public            postgres    false    236            d           1259    85428    IDX_b1aac8314662fa6b25569a575b    INDEX     Y   CREATE INDEX "IDX_b1aac8314662fa6b25569a575b" ON public.country USING btree (region_id);
 4   DROP INDEX public."IDX_b1aac8314662fa6b25569a575b";
       public            postgres    false    223            *           1259    84837    IDX_b4f4b63d1736689b7008980394    INDEX     a   CREATE INDEX "IDX_b4f4b63d1736689b7008980394" ON public.store_currencies USING btree (store_id);
 4   DROP INDEX public."IDX_b4f4b63d1736689b7008980394";
       public            postgres    false    265            v           1259    85738    IDX_b5b6225539ee8501082fbc0714    INDEX     }   CREATE UNIQUE INDEX "IDX_b5b6225539ee8501082fbc0714" ON public.product_variant USING btree (ean) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_b5b6225539ee8501082fbc0714";
       public            postgres    false    228    228            B           1259    85490    IDX_b5df0f53a74b9d0c0a2b652c88    INDEX     `   CREATE INDEX "IDX_b5df0f53a74b9d0c0a2b652c88" ON public.notification USING btree (customer_id);
 4   DROP INDEX public."IDX_b5df0f53a74b9d0c0a2b652c88";
       public            postgres    false    272            �           1259    85444    IDX_b6bcf8c3903097b84e85154eed    INDEX     [   CREATE INDEX "IDX_b6bcf8c3903097b84e85154eed" ON public.gift_card USING btree (region_id);
 4   DROP INDEX public."IDX_b6bcf8c3903097b84e85154eed";
       public            postgres    false    239                       1259    85797    IDX_ba8de19442d86957a3aa3b5006    INDEX     v   CREATE UNIQUE INDEX "IDX_ba8de19442d86957a3aa3b5006" ON public."user" USING btree (email) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_ba8de19442d86957a3aa3b5006";
       public            postgres    false    255    255            �           1259    85451    IDX_bad82d7bff2b08b87094bfac3d    INDEX     V   CREATE INDEX "IDX_bad82d7bff2b08b87094bfac3d" ON public.return USING btree (swap_id);
 4   DROP INDEX public."IDX_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    242                       1259    84784    IDX_be66106a673b88a81c603abe7e    INDEX     i   CREATE INDEX "IDX_be66106a673b88a81c603abe7e" ON public.discount_rule_products USING btree (product_id);
 4   DROP INDEX public."IDX_be66106a673b88a81c603abe7e";
       public            postgres    false    259            �           1259    86211    IDX_be9aea2ccf3567007b6227da4d    INDEX     d   CREATE INDEX "IDX_be9aea2ccf3567007b6227da4d" ON public.line_item_adjustment USING btree (item_id);
 4   DROP INDEX public."IDX_be9aea2ccf3567007b6227da4d";
       public            postgres    false    301            [           1259    85459    IDX_beb35a6de60a6c4f91d5ae57e4    INDEX     _   CREATE INDEX "IDX_beb35a6de60a6c4f91d5ae57e4" ON public.fulfillment USING btree (provider_id);
 4   DROP INDEX public."IDX_beb35a6de60a6c4f91d5ae57e4";
       public            postgres    false    219            �           1259    86213    IDX_bf701b88d2041392a288785ada    INDEX     �   CREATE UNIQUE INDEX "IDX_bf701b88d2041392a288785ada" ON public.line_item_adjustment USING btree (discount_id, item_id) WHERE (discount_id IS NOT NULL);
 4   DROP INDEX public."IDX_bf701b88d2041392a288785ada";
       public            postgres    false    301    301    301            �           1259    85440    IDX_c17aff091441b7c25ec3d68d36    INDEX     W   CREATE INDEX "IDX_c17aff091441b7c25ec3d68d36" ON public.payment USING btree (swap_id);
 4   DROP INDEX public."IDX_c17aff091441b7c25ec3d68d36";
       public            postgres    false    238            <           1259    85341    IDX_c2c0f3edf39515bd15432afe6e    INDEX     _   CREATE INDEX "IDX_c2c0f3edf39515bd15432afe6e" ON public.claim_item_tags USING btree (item_id);
 4   DROP INDEX public."IDX_c2c0f3edf39515bd15432afe6e";
       public            postgres    false    270            �           1259    84720    IDX_c49c061b1a686843c5d673506f    INDEX     e   CREATE UNIQUE INDEX "IDX_c49c061b1a686843c5d673506f" ON public.oauth USING btree (application_name);
 4   DROP INDEX public."IDX_c49c061b1a686843c5d673506f";
       public            postgres    false    252            �           1259    85998    IDX_c4c3a5225a7a1f0af782c40abc    INDEX     }   CREATE UNIQUE INDEX "IDX_c4c3a5225a7a1f0af782c40abc" ON public.customer_group USING btree (name) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_c4c3a5225a7a1f0af782c40abc";
       public            postgres    false    291    291            �           1259    86188    IDX_c5516f550433c9b1c2630d787a    INDEX     t   CREATE INDEX "IDX_c5516f550433c9b1c2630d787a" ON public.price_list_customer_groups USING btree (customer_group_id);
 4   DROP INDEX public."IDX_c5516f550433c9b1c2630d787a";
       public            postgres    false    300            
           1259    84765    IDX_c556e14eff4d6f03db593df955    INDEX     n   CREATE INDEX "IDX_c556e14eff4d6f03db593df955" ON public.region_fulfillment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_c556e14eff4d6f03db593df955";
       public            postgres    false    257            �           1259    86093    IDX_c759f53b2e48e8cfb50638fe4e    INDEX     m   CREATE INDEX "IDX_c759f53b2e48e8cfb50638fe4e" ON public.discount_condition_product USING btree (product_id);
 4   DROP INDEX public."IDX_c759f53b2e48e8cfb50638fe4e";
       public            postgres    false    298            �           1259    85431    IDX_c951439af4c98bf2bd7fb8726c    INDEX     b   CREATE INDEX "IDX_c951439af4c98bf2bd7fb8726c" ON public.shipping_option USING btree (profile_id);
 4   DROP INDEX public."IDX_c951439af4c98bf2bd7fb8726c";
       public            postgres    false    232            �           1259    85464    IDX_c99a206eb11ad45f6b7f04f2dc    INDEX     W   CREATE INDEX "IDX_c99a206eb11ad45f6b7f04f2dc" ON public."order" USING btree (cart_id);
 4   DROP INDEX public."IDX_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    248            w           1259    85436    IDX_ca67dd080aac5ecf99609960cd    INDEX     b   CREATE INDEX "IDX_ca67dd080aac5ecf99609960cd" ON public.product_variant USING btree (product_id);
 4   DROP INDEX public."IDX_ca67dd080aac5ecf99609960cd";
       public            postgres    false    228            �           1259    85465    IDX_cd7812c96209c5bdd48a6b858b    INDEX     [   CREATE INDEX "IDX_cd7812c96209c5bdd48a6b858b" ON public."order" USING btree (customer_id);
 4   DROP INDEX public."IDX_cd7812c96209c5bdd48a6b858b";
       public            postgres    false    248            �           1259    85447    IDX_ced15a9a695d2b5db9dabce763    INDEX     `   CREATE INDEX "IDX_ced15a9a695d2b5db9dabce763" ON public.cart USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_ced15a9a695d2b5db9dabce763";
       public            postgres    false    240            �           1259    85735    IDX_cf9cc6c3f2e6414b992223fff1    INDEX     x   CREATE UNIQUE INDEX "IDX_cf9cc6c3f2e6414b992223fff1" ON public.product USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_cf9cc6c3f2e6414b992223fff1";
       public            postgres    false    234    234            �           1259    85439    IDX_d18ad72f2fb7c87f075825b6f8    INDEX     c   CREATE INDEX "IDX_d18ad72f2fb7c87f075825b6f8" ON public.payment_session USING btree (provider_id);
 4   DROP INDEX public."IDX_d18ad72f2fb7c87f075825b6f8";
       public            postgres    false    237            �           1259    85438    IDX_d25ba0787e1510ddc5d442ebcf    INDEX     _   CREATE INDEX "IDX_d25ba0787e1510ddc5d442ebcf" ON public.payment_session USING btree (cart_id);
 4   DROP INDEX public."IDX_d25ba0787e1510ddc5d442ebcf";
       public            postgres    false    237                       1259    84810    IDX_d38047a90f3d42f0be7909e8ae    INDEX     _   CREATE INDEX "IDX_d38047a90f3d42f0be7909e8ae" ON public.cart_gift_cards USING btree (cart_id);
 4   DROP INDEX public."IDX_d38047a90f3d42f0be7909e8ae";
       public            postgres    false    262            �           1259    85453    IDX_d4bd17f918fc6c332b74a368c3    INDEX     W   CREATE INDEX "IDX_d4bd17f918fc6c332b74a368c3" ON public.return USING btree (order_id);
 4   DROP INDEX public."IDX_d4bd17f918fc6c332b74a368c3";
       public            postgres    false    242            \           1259    85456    IDX_d73e55964e0ff2db8f03807d52    INDEX     b   CREATE INDEX "IDX_d73e55964e0ff2db8f03807d52" ON public.fulfillment USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d73e55964e0ff2db8f03807d52";
       public            postgres    false    219            �           1259    85363    IDX_d783a66d1c91c0858752c933e6    INDEX     f   CREATE INDEX "IDX_d783a66d1c91c0858752c933e6" ON public.shipping_method USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d783a66d1c91c0858752c933e6";
       public            postgres    false    241            �           1259    85461    IDX_d7d441b81012f87d4265fa57d2    INDEX     f   CREATE INDEX "IDX_d7d441b81012f87d4265fa57d2" ON public.gift_card_transaction USING btree (order_id);
 4   DROP INDEX public."IDX_d7d441b81012f87d4265fa57d2";
       public            postgres    false    245            �           1259    84506    IDX_d92993a7d554d84571f4eea1d1    INDEX     _   CREATE INDEX "IDX_d92993a7d554d84571f4eea1d1" ON public.shipping_method USING btree (cart_id);
 4   DROP INDEX public."IDX_d92993a7d554d84571f4eea1d1";
       public            postgres    false    241            =           1259    85342    IDX_dc9bbf9fcb9ba458d25d512811    INDEX     ^   CREATE INDEX "IDX_dc9bbf9fcb9ba458d25d512811" ON public.claim_item_tags USING btree (tag_id);
 4   DROP INDEX public."IDX_dc9bbf9fcb9ba458d25d512811";
       public            postgres    false    270            C           1259    85488    IDX_df1494d263740fcfb1d09a98fc    INDEX     b   CREATE INDEX "IDX_df1494d263740fcfb1d09a98fc" ON public.notification USING btree (resource_type);
 4   DROP INDEX public."IDX_df1494d263740fcfb1d09a98fc";
       public            postgres    false    272            �           1259    85445    IDX_dfc1f02bb0552e79076aa58dbb    INDEX     Z   CREATE INDEX "IDX_dfc1f02bb0552e79076aa58dbb" ON public.gift_card USING btree (order_id);
 4   DROP INDEX public."IDX_dfc1f02bb0552e79076aa58dbb";
       public            postgres    false    239            �           1259    85468    IDX_e1fcce2b18dbcdbe0a5ba9a68b    INDEX     Y   CREATE INDEX "IDX_e1fcce2b18dbcdbe0a5ba9a68b" ON public."order" USING btree (region_id);
 4   DROP INDEX public."IDX_e1fcce2b18dbcdbe0a5ba9a68b";
       public            postgres    false    248            %           1259    84828    IDX_e62ff11e4730bb3adfead979ee    INDEX     a   CREATE INDEX "IDX_e62ff11e4730bb3adfead979ee" ON public.order_gift_cards USING btree (order_id);
 4   DROP INDEX public."IDX_e62ff11e4730bb3adfead979ee";
       public            postgres    false    264            �           1259    86095    IDX_e706deb68f52ab2756119b9e70    INDEX     w   CREATE INDEX "IDX_e706deb68f52ab2756119b9e70" ON public.discount_condition_product_type USING btree (product_type_id);
 4   DROP INDEX public."IDX_e706deb68f52ab2756119b9e70";
       public            postgres    false    297            e           1259    84263    IDX_e78901b1131eaf8203d9b1cb5f    INDEX     \   CREATE UNIQUE INDEX "IDX_e78901b1131eaf8203d9b1cb5f" ON public.country USING btree (iso_2);
 4   DROP INDEX public."IDX_e78901b1131eaf8203d9b1cb5f";
       public            postgres    false    223            "           1259    84819    IDX_e7b488cebe333f449398769b2c    INDEX     `   CREATE INDEX "IDX_e7b488cebe333f449398769b2c" ON public.order_discounts USING btree (order_id);
 4   DROP INDEX public."IDX_e7b488cebe333f449398769b2c";
       public            postgres    false    263            U           1259    85585    IDX_e87cc617a22ef4edce5601edab    INDEX     ^   CREATE INDEX "IDX_e87cc617a22ef4edce5601edab" ON public.draft_order USING btree (display_id);
 4   DROP INDEX public."IDX_e87cc617a22ef4edce5601edab";
       public            postgres    false    278            D           1259    85489    IDX_ea6a358d9ce41c16499aae55f9    INDEX     `   CREATE INDEX "IDX_ea6a358d9ce41c16499aae55f9" ON public.notification USING btree (resource_id);
 4   DROP INDEX public."IDX_ea6a358d9ce41c16499aae55f9";
       public            postgres    false    272            �           1259    85443    IDX_ea94f42b6c88e9191c3649d752    INDEX     [   CREATE INDEX "IDX_ea94f42b6c88e9191c3649d752" ON public.payment USING btree (provider_id);
 4   DROP INDEX public."IDX_ea94f42b6c88e9191c3649d752";
       public            postgres    false    238            0           1259    85267    IDX_ec10c54769877840c132260e4a    INDEX     W   CREATE INDEX "IDX_ec10c54769877840c132260e4a" ON public.claim_tag USING btree (value);
 4   DROP INDEX public."IDX_ec10c54769877840c132260e4a";
       public            postgres    false    267            �           1259    85935    IDX_ece65a774192b34253abc4cd67    INDEX     e   CREATE INDEX "IDX_ece65a774192b34253abc4cd67" ON public.product_type_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_ece65a774192b34253abc4cd67";
       public            postgres    false    289            �           1259    85462    IDX_eec9d9af4ca098e19ea6b499ea    INDEX     W   CREATE INDEX "IDX_eec9d9af4ca098e19ea6b499ea" ON public.refund USING btree (order_id);
 4   DROP INDEX public."IDX_eec9d9af4ca098e19ea6b499ea";
       public            postgres    false    246            �           1259    86046    IDX_efff700651718e452ca9580a62    INDEX     k   CREATE INDEX "IDX_efff700651718e452ca9580a62" ON public.discount_condition USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_efff700651718e452ca9580a62";
       public            postgres    false    293            �           1259    86092    IDX_f05132301e95bdab4ba1cf29a2    INDEX     o   CREATE INDEX "IDX_f05132301e95bdab4ba1cf29a2" ON public.discount_condition_product USING btree (condition_id);
 4   DROP INDEX public."IDX_f05132301e95bdab4ba1cf29a2";
       public            postgres    false    298            ]           1259    85458    IDX_f129acc85e346a10eed12b86fc    INDEX     \   CREATE INDEX "IDX_f129acc85e346a10eed12b86fc" ON public.fulfillment USING btree (order_id);
 4   DROP INDEX public."IDX_f129acc85e346a10eed12b86fc";
       public            postgres    false    219            &           1259    84829    IDX_f2bb9f71e95b315eb24b2b84cb    INDEX     e   CREATE INDEX "IDX_f2bb9f71e95b315eb24b2b84cb" ON public.order_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_f2bb9f71e95b315eb24b2b84cb";
       public            postgres    false    264                       1259    84792    IDX_f4194aa81073f3fab8aa86906f    INDEX     d   CREATE INDEX "IDX_f4194aa81073f3fab8aa86906f" ON public.discount_regions USING btree (discount_id);
 4   DROP INDEX public."IDX_f4194aa81073f3fab8aa86906f";
       public            postgres    false    260            9           1259    85454    IDX_f49e3974465d3c3a33d449d3f3    INDEX     \   CREATE INDEX "IDX_f49e3974465d3c3a33d449d3f3" ON public.claim_order USING btree (order_id);
 4   DROP INDEX public."IDX_f49e3974465d3c3a33d449d3f3";
       public            postgres    false    269            �           1259    85442    IDX_f5221735ace059250daac9d980    INDEX     X   CREATE INDEX "IDX_f5221735ace059250daac9d980" ON public.payment USING btree (order_id);
 4   DROP INDEX public."IDX_f5221735ace059250daac9d980";
       public            postgres    false    238            �           1259    85740    IDX_f65bf52e2239ace276ece2b2f4    INDEX     w   CREATE UNIQUE INDEX "IDX_f65bf52e2239ace276ece2b2f4" ON public.discount USING btree (code) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_f65bf52e2239ace276ece2b2f4";
       public            postgres    false    236    236            �           1259    85938    IDX_f672727ab020df6c50fb64c1a7    INDEX     l   CREATE INDEX "IDX_f672727ab020df6c50fb64c1a7" ON public.shipping_tax_rate USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_f672727ab020df6c50fb64c1a7";
       public            postgres    false    290            b           1259    85765    IDX_f74980b411cf94af523a72af7d    INDEX     Z   CREATE INDEX "IDX_f74980b411cf94af523a72af7d" ON public.note USING btree (resource_type);
 4   DROP INDEX public."IDX_f74980b411cf94af523a72af7d";
       public            postgres    false    281            �           1259    84507    IDX_fb94fa8d5ca940daa2a58139f8    INDEX     _   CREATE INDEX "IDX_fb94fa8d5ca940daa2a58139f8" ON public.shipping_method USING btree (swap_id);
 4   DROP INDEX public."IDX_fb94fa8d5ca940daa2a58139f8";
       public            postgres    false    241            �           1259    86096    IDX_fbb2499551ed074526f3ee3624    INDEX     s   CREATE INDEX "IDX_fbb2499551ed074526f3ee3624" ON public.discount_condition_product_tag USING btree (condition_id);
 4   DROP INDEX public."IDX_fbb2499551ed074526f3ee3624";
       public            postgres    false    296            �           1259    84504    IDX_fc963e94854bff2714ca84cd19    INDEX     j   CREATE INDEX "IDX_fc963e94854bff2714ca84cd19" ON public.shipping_method USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_fc963e94854bff2714ca84cd19";
       public            postgres    false    241            �           1259    86699 (   IDX_id_publishable_api_key_sales_channel    INDEX     v   CREATE INDEX "IDX_id_publishable_api_key_sales_channel" ON public.publishable_api_key_sales_channel USING btree (id);
 >   DROP INDEX public."IDX_id_publishable_api_key_sales_channel";
       public            postgres    false    311            o           1259    86458    IDX_money_amount_currency_code    INDEX     b   CREATE INDEX "IDX_money_amount_currency_code" ON public.money_amount USING btree (currency_code);
 4   DROP INDEX public."IDX_money_amount_currency_code";
       public            postgres    false    227            �           1259    86459    IDX_order_currency_code    INDEX     V   CREATE INDEX "IDX_order_currency_code" ON public."order" USING btree (currency_code);
 -   DROP INDEX public."IDX_order_currency_code";
       public            postgres    false    248            �           1259    86457    IDX_order_edit_order_id    INDEX     T   CREATE INDEX "IDX_order_edit_order_id" ON public.order_edit USING btree (order_id);
 -   DROP INDEX public."IDX_order_edit_order_id";
       public            postgres    false    306            �           1259    86445 $   IDX_order_edit_payment_collection_id    INDEX     n   CREATE INDEX "IDX_order_edit_payment_collection_id" ON public.order_edit USING btree (payment_collection_id);
 :   DROP INDEX public."IDX_order_edit_payment_collection_id";
       public            postgres    false    306            �           1259    86401 $   IDX_payment_collection_currency_code    INDEX     �   CREATE INDEX "IDX_payment_collection_currency_code" ON public.payment_collection USING btree (currency_code) WHERE (deleted_at IS NULL);
 :   DROP INDEX public."IDX_payment_collection_currency_code";
       public            postgres    false    307    307            �           1259    86433 5   IDX_payment_collection_payments_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_payments_payment_collection_id" ON public.payment_collection_payments USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_payments_payment_collection_id";
       public            postgres    false    309            �           1259    86434 *   IDX_payment_collection_payments_payment_id    INDEX     z   CREATE INDEX "IDX_payment_collection_payments_payment_id" ON public.payment_collection_payments USING btree (payment_id);
 @   DROP INDEX public."IDX_payment_collection_payments_payment_id";
       public            postgres    false    309            �           1259    86400     IDX_payment_collection_region_id    INDEX     �   CREATE INDEX "IDX_payment_collection_region_id" ON public.payment_collection USING btree (region_id) WHERE (deleted_at IS NULL);
 6   DROP INDEX public."IDX_payment_collection_region_id";
       public            postgres    false    307    307            �           1259    86414 5   IDX_payment_collection_sessions_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_collection_id" ON public.payment_collection_sessions USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_sessions_payment_collection_id";
       public            postgres    false    308            �           1259    86415 2   IDX_payment_collection_sessions_payment_session_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_session_id" ON public.payment_collection_sessions USING btree (payment_session_id);
 H   DROP INDEX public."IDX_payment_collection_sessions_payment_session_id";
       public            postgres    false    308            �           1259    86460    IDX_payment_currency_code    INDEX     X   CREATE INDEX "IDX_payment_currency_code" ON public.payment USING btree (currency_code);
 /   DROP INDEX public."IDX_payment_currency_code";
       public            postgres    false    238            �           1259    86549    IDX_pcp_product_category_id    INDEX     q   CREATE INDEX "IDX_pcp_product_category_id" ON public.product_category_product USING btree (product_category_id);
 1   DROP INDEX public."IDX_pcp_product_category_id";
       public            postgres    false    316            �           1259    86550    IDX_pcp_product_id    INDEX     _   CREATE INDEX "IDX_pcp_product_id" ON public.product_category_product USING btree (product_id);
 (   DROP INDEX public."IDX_pcp_product_id";
       public            postgres    false    316            �           1259    86568 "   IDX_product_category_active_public    INDEX     �   CREATE INDEX "IDX_product_category_active_public" ON public.product_category USING btree (parent_category_id, is_active, is_internal) WHERE ((is_active IS TRUE) AND (is_internal IS FALSE));
 8   DROP INDEX public."IDX_product_category_active_public";
       public            postgres    false    315    315    315    315    315            �           1259    86567    IDX_product_category_handle    INDEX     c   CREATE UNIQUE INDEX "IDX_product_category_handle" ON public.product_category USING btree (handle);
 1   DROP INDEX public."IDX_product_category_handle";
       public            postgres    false    315            �           1259    86529    IDX_product_category_path    INDEX     Y   CREATE INDEX "IDX_product_category_path" ON public.product_category USING btree (mpath);
 /   DROP INDEX public."IDX_product_category_path";
       public            postgres    false    315            �           1259    86553 4   IDX_product_variant_inventory_item_inventory_item_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_inventory_item_id" ON public.product_variant_inventory_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);
 J   DROP INDEX public."IDX_product_variant_inventory_item_inventory_item_id";
       public            postgres    false    314    314            �           1259    86554 -   IDX_product_variant_inventory_item_variant_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_variant_id" ON public.product_variant_inventory_item USING btree (variant_id) WHERE (deleted_at IS NULL);
 C   DROP INDEX public."IDX_product_variant_inventory_item_variant_id";
       public            postgres    false    314    314            �           1259    86451    IDX_refund_payment_id    INDEX     P   CREATE INDEX "IDX_refund_payment_id" ON public.refund USING btree (payment_id);
 +   DROP INDEX public."IDX_refund_payment_id";
       public            postgres    false    246            j           1259    86461    IDX_region_currency_code    INDEX     V   CREATE INDEX "IDX_region_currency_code" ON public.region USING btree (currency_code);
 .   DROP INDEX public."IDX_region_currency_code";
       public            postgres    false    225            ^           1259    86687    IDX_return_reason_value    INDEX     v   CREATE UNIQUE INDEX "IDX_return_reason_value" ON public.return_reason USING btree (value) WHERE (deleted_at IS NULL);
 -   DROP INDEX public."IDX_return_reason_value";
       public            postgres    false    280    280            �           1259    86552 &   IDX_sales_channel_location_location_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_location_id" ON public.sales_channel_location USING btree (location_id) WHERE (deleted_at IS NULL);
 <   DROP INDEX public."IDX_sales_channel_location_location_id";
       public            postgres    false    313    313            �           1259    86551 +   IDX_sales_channel_location_sales_channel_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_sales_channel_id" ON public.sales_channel_location USING btree (sales_channel_id) WHERE (deleted_at IS NULL);
 A   DROP INDEX public."IDX_sales_channel_location_sales_channel_id";
       public            postgres    false    313    313            �           1259    86702 1   IDX_unique_email_for_guests_and_customer_accounts    INDEX     �   CREATE UNIQUE INDEX "IDX_unique_email_for_guests_and_customer_accounts" ON public.customer USING btree (email, has_account) WHERE (deleted_at IS NULL);
 G   DROP INDEX public."IDX_unique_email_for_guests_and_customer_accounts";
       public            postgres    false    249    249    249            �           1259    86548 '   IDX_upcp_product_id_product_category_id    INDEX     �   CREATE UNIQUE INDEX "IDX_upcp_product_id_product_category_id" ON public.product_category_product USING btree (product_category_id, product_id);
 =   DROP INDEX public."IDX_upcp_product_id_product_category_id";
       public            postgres    false    316    316            �           1259    86532 "   UniqPaymentSessionCartIdProviderId    INDEX     �   CREATE UNIQUE INDEX "UniqPaymentSessionCartIdProviderId" ON public.payment_session USING btree (cart_id, provider_id) WHERE (cart_id IS NOT NULL);
 8   DROP INDEX public."UniqPaymentSessionCartIdProviderId";
       public            postgres    false    237    237    237            �           1259    86557    UniqProductCategoryParentIdRank    INDEX     y   CREATE UNIQUE INDEX "UniqProductCategoryParentIdRank" ON public.product_category USING btree (parent_category_id, rank);
 5   DROP INDEX public."UniqProductCategoryParentIdRank";
       public            postgres    false    315    315            �           1259    86290    UniquePaymentActive    INDEX     o   CREATE UNIQUE INDEX "UniquePaymentActive" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NULL);
 )   DROP INDEX public."UniquePaymentActive";
       public            postgres    false    238    238            J           1259    86658    idx_gin_product_collection    INDEX     �   CREATE INDEX idx_gin_product_collection ON public.product_collection USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 .   DROP INDEX public.idx_gin_product_collection;
       public            postgres    false    273    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    273            �           1259    86655    idx_gin_product_description    INDEX     �   CREATE INDEX idx_gin_product_description ON public.product USING gin (description public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 /   DROP INDEX public.idx_gin_product_description;
       public            postgres    false    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    234    234            �           1259    86654    idx_gin_product_title    INDEX     w   CREATE INDEX idx_gin_product_title ON public.product USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 )   DROP INDEX public.idx_gin_product_title;
       public            postgres    false    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    234    234            z           1259    86657    idx_gin_product_variant_sku    INDEX     �   CREATE INDEX idx_gin_product_variant_sku ON public.product_variant USING gin (sku public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 /   DROP INDEX public.idx_gin_product_variant_sku;
       public            postgres    false    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    228    228            {           1259    86656    idx_gin_product_variant_title    INDEX     �   CREATE INDEX idx_gin_product_variant_title ON public.product_variant USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 1   DROP INDEX public.idx_gin_product_variant_title;
       public            postgres    false    228    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    5    228            r           1259    86570    idx_money_amount_region_id    INDEX     X   CREATE INDEX idx_money_amount_region_id ON public.money_amount USING btree (region_id);
 .   DROP INDEX public.idx_money_amount_region_id;
       public            postgres    false    227            ~           1259    86572 "   idx_product_option_value_option_id    INDEX     h   CREATE INDEX idx_product_option_value_option_id ON public.product_option_value USING btree (option_id);
 6   DROP INDEX public.idx_product_option_value_option_id;
       public            postgres    false    229                       1259    86571 #   idx_product_option_value_variant_id    INDEX     j   CREATE INDEX idx_product_option_value_variant_id ON public.product_option_value USING btree (variant_id);
 7   DROP INDEX public.idx_product_option_value_variant_id;
       public            postgres    false    229            �           1259    86676 '   idx_product_shipping_profile_product_id    INDEX     r   CREATE INDEX idx_product_shipping_profile_product_id ON public.product_shipping_profile USING btree (product_id);
 ;   DROP INDEX public.idx_product_shipping_profile_product_id;
       public            postgres    false    317            �           1259    86677 '   idx_product_shipping_profile_profile_id    INDEX     r   CREATE INDEX idx_product_shipping_profile_profile_id ON public.product_shipping_profile USING btree (profile_id);
 ;   DROP INDEX public.idx_product_shipping_profile_profile_id;
       public            postgres    false    317            �           1259    86675 9   idx_product_shipping_profile_profile_id_product_id_unique    INDEX     �   CREATE UNIQUE INDEX idx_product_shipping_profile_profile_id_product_id_unique ON public.product_shipping_profile USING btree (profile_id, product_id);
 M   DROP INDEX public.idx_product_shipping_profile_profile_id_product_id_unique;
       public            postgres    false    317    317            �           1259    86697 7   idx_product_variant_money_amount_money_amount_id_unique    INDEX     �   CREATE UNIQUE INDEX idx_product_variant_money_amount_money_amount_id_unique ON public.product_variant_money_amount USING btree (money_amount_id);
 K   DROP INDEX public.idx_product_variant_money_amount_money_amount_id_unique;
       public            postgres    false    319            �           1259    86698 +   idx_product_variant_money_amount_variant_id    INDEX     z   CREATE INDEX idx_product_variant_money_amount_variant_id ON public.product_variant_money_amount USING btree (variant_id);
 ?   DROP INDEX public.idx_product_variant_money_amount_variant_id;
       public            postgres    false    319            �           1259    86375 (   unique_li_original_item_id_order_edit_id    INDEX     �   CREATE UNIQUE INDEX unique_li_original_item_id_order_edit_id ON public.line_item USING btree (order_edit_id, original_item_id) WHERE ((original_item_id IS NOT NULL) AND (order_edit_id IS NOT NULL));
 <   DROP INDEX public.unique_li_original_item_id_order_edit_id;
       public            postgres    false    244    244    244    244                       2606    84919 :   shipping_option_requirement FK_012a62ba743e427b5ebe9dee18e    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e";
       public          postgres    false    231    232    3977            |           2606    86127 =   discount_condition_product_tag FK_01486cc9dc6b36bf658685535f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_01486cc9dc6b36bf658685535f6" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_01486cc9dc6b36bf658685535f6";
       public          postgres    false    296    4172    274            ]           2606    85401 *   claim_order FK_017d58bf8260c6e1a2588d258e2    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2";
       public          postgres    false    4085    269    250            a           2606    85501 +   notification FK_0425c2423e2ce9fdfd5c23761d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9" FOREIGN KEY (provider_id) REFERENCES public.notification_provider(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9";
       public          postgres    false    271    272    4161            Q           2606    85214 .   cart_gift_cards FK_0fb38b6d167793192bc126d835e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_0fb38b6d167793192bc126d835e" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_0fb38b6d167793192bc126d835e";
       public          postgres    false    262    239    4013            S           2606    85224 .   order_discounts FK_0fc1ec4e3db9001ad60c19daf16    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16";
       public          postgres    false    236    3990    263            -           2606    85411 (   line_item FK_118e3c48f09a7728f41023c94ef    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_118e3c48f09a7728f41023c94ef" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_118e3c48f09a7728f41023c94ef";
       public          postgres    false    269    244    4155            8           2606    85114 $   order FK_19b0c6293443d1b464f604c3316    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_19b0c6293443d1b464f604c3316" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_19b0c6293443d1b464f604c3316";
       public          postgres    false    4085    248    250            o           2606    85959 /   product_tax_rate FK_1d04aebeabb6a89f87e536a124d    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d";
       public          postgres    false    288    3982    234            !           2606    85029 .   shipping_method FK_1d9ad62038998c3a85c77a53cfb    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb" FOREIGN KEY (return_id) REFERENCES public.return(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb";
       public          postgres    false    4037    241    242            �           2606    86360 )   order_edit FK_1f3a251488a91510f57e1bf93cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd";
       public          postgres    false    306    248    4072            d           2606    85553 +   product_tags FK_21683a063fe82dafdf681ecc9c4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4";
       public          postgres    false    276    4172    274            Y           2606    85366 *   claim_image FK_21cbfedd83d736d86f4c6f4ce56    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56" FOREIGN KEY (claim_item_id) REFERENCES public.claim_item(id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56";
       public          postgres    false    4151    266    268            I           2606    85174 -   product_images FK_2212515ba306c79f42c46a99db7    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_2212515ba306c79f42c46a99db7" FOREIGN KEY (image_id) REFERENCES public.image(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_2212515ba306c79f42c46a99db7";
       public          postgres    false    3950    258    226            i           2606    85741 ,   return_reason FK_2250c5d9e975987ab212f61a657    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a657" FOREIGN KEY (parent_return_reason_id) REFERENCES public.return_reason(id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a657";
       public          postgres    false    4192    280    280                       2606    84949 '   discount FK_2250c5d9e975987ab212f61a663    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a663" FOREIGN KEY (parent_discount_id) REFERENCES public.discount(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a663";
       public          postgres    false    3990    236    236                       2606    85004 #   cart FK_242205c81c1152fab1b6e848470    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_242205c81c1152fab1b6e848470" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_242205c81c1152fab1b6e848470";
       public          postgres    false    249    4080    240            p           2606    85964 /   product_tax_rate FK_2484cf14c437a04586b07e7dddb    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_2484cf14c437a04586b07e7dddb" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_2484cf14c437a04586b07e7dddb";
       public          postgres    false    288    4207    284            q           2606    85969 4   product_type_tax_rate FK_25a3138bb236f63d9bb6c8ff111    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111";
       public          postgres    false    275    289    4174            .           2606    85064 (   line_item FK_27283ee631862266d0f1c680646    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_27283ee631862266d0f1c680646" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_27283ee631862266d0f1c680646";
       public          postgres    false    4020    244    240            �           2606    86219 3   line_item_adjustment FK_2f41b20a71f30e60471d7e3769c    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c" FOREIGN KEY (discount_id) REFERENCES public.discount(id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c";
       public          postgres    false    3990    301    236            s           2606    85984 0   shipping_tax_rate FK_346e0016cf045b9980747747645    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_346e0016cf045b9980747747645" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_346e0016cf045b9980747747645";
       public          postgres    false    4207    290    284            b           2606    85496 +   notification FK_371db513192c083f48ba63c33be    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_371db513192c083f48ba63c33be" FOREIGN KEY (parent_id) REFERENCES public.notification(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_371db513192c083f48ba63c33be";
       public          postgres    false    272    4166    272            �           2606    86284 4   product_sales_channel FK_37341bad297fe5cca91f921032b    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "FK_37341bad297fe5cca91f921032b" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "FK_37341bad297fe5cca91f921032b";
       public          postgres    false    4278    303    304            G           2606    85164 ;   region_fulfillment_providers FK_37f361c38a18d12a3fa3158d0cf    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf";
       public          postgres    false    257    217    3927            E           2606    85154 7   region_payment_providers FK_3a6947180aeec283cd92c59ebb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0" FOREIGN KEY (provider_id) REFERENCES public.payment_provider(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0";
       public          postgres    false    224    3945    256                       2606    84879 %   region FK_3bdd5896ec93be2f1c62a3309a5    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5";
       public          postgres    false    221    225    3939            u           2606    86013 7   customer_group_customers FK_3c6412d076292f439269abe1a23    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_3c6412d076292f439269abe1a23" FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_3c6412d076292f439269abe1a23";
       public          postgres    false    292    4080    249            /           2606    85074 (   line_item FK_3fa354d8d1233ff81097b2fcb6b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b";
       public          postgres    false    243    244    4044            4           2606    85084 4   gift_card_transaction FK_3ff5597f1d7e02bba41541846f4    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4";
       public          postgres    false    4013    239    245            *           2606    85059 #   swap FK_402e8182bc553e082f6380020b4    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_402e8182bc553e082f6380020b4" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_402e8182bc553e082f6380020b4";
       public          postgres    false    4020    240    243            0           2606    85069 (   line_item FK_43a2b24495fe1d9fc2a9c835bc7    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7";
       public          postgres    false    248    4072    244            j           2606    85836 5   custom_shipping_option FK_44090cb11b06174cbcc667e91ca    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_44090cb11b06174cbcc667e91ca" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_44090cb11b06174cbcc667e91ca";
       public          postgres    false    283    232    3977            �           2606    86345 0   order_item_change FK_44feeebb258bf4cfa4cc4202281    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281" FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281";
       public          postgres    false    306    4294    305                       2606    84964 &   payment FK_4665f17abc1e81dd58330e58542    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_4665f17abc1e81dd58330e58542" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_4665f17abc1e81dd58330e58542";
       public          postgres    false    240    4020    238            h           2606    85637 ,   tracking_link FK_471e9e4c96e02ba209a307db32b    FK CONSTRAINT     �   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "FK_471e9e4c96e02ba209a307db32b" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "FK_471e9e4c96e02ba209a307db32b";
       public          postgres    false    3935    279    219                       2606    84999 #   cart FK_484c329f4783be4e18e5e2ff090    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_484c329f4783be4e18e5e2ff090" FOREIGN KEY (region_id) REFERENCES public.region(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_484c329f4783be4e18e5e2ff090";
       public          postgres    false    225    3948    240                       2606    85543 &   product FK_49d419fc77d3aed46c835c558ac    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_49d419fc77d3aed46c835c558ac" FOREIGN KEY (collection_id) REFERENCES public.product_collection(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_49d419fc77d3aed46c835c558ac";
       public          postgres    false    4169    234    273            x           2606    86107 @   discount_condition_customer_group FK_4d5f98645a67545d8dea42e2eb8    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8";
       public          postgres    false    291    4234    294            K           2606    85179 5   discount_rule_products FK_4e0739e5f0244c08d41174ca08a    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a";
       public          postgres    false    235    259    3986            J           2606    85169 -   product_images FK_4f166bb8c2bfcef2498d97b4068    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068";
       public          postgres    false    234    258    3982            m           2606    86660 1   line_item_tax_line FK_5077fa54b0d037e984385dfe8ad    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad" FOREIGN KEY (item_id) REFERENCES public.line_item(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad";
       public          postgres    false    286    244    4053            "           2606    85014 .   shipping_method FK_5267705a43d547e232535b656c2    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_5267705a43d547e232535b656c2" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_5267705a43d547e232535b656c2";
       public          postgres    false    241    4072    248            �           2606    86194 9   price_list_customer_groups FK_52875734e9dd69064f0041f4d92    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_52875734e9dd69064f0041f4d92" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_52875734e9dd69064f0041f4d92";
       public          postgres    false    4265    300    299            +           2606    85049 #   swap FK_52dd74e8c989aa5665ad2852b8b    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b";
       public          postgres    false    4072    248    243            1           2606    85079 (   line_item FK_5371cbaa3be5200f373d24e3d5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b";
       public          postgres    false    244    228    3961            9           2606    85109 $   order FK_5568d3b9ce9f7abeeb37511ecf2    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2";
       public          postgres    false    4085    248    250            C           2606    85144 $   store FK_55beebaa09e947cccca554af222    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_55beebaa09e947cccca554af222" FOREIGN KEY (default_currency_code) REFERENCES public.currency(code);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_55beebaa09e947cccca554af222";
       public          postgres    false    3939    254    221            e           2606    85548 +   product_tags FK_5b0c6fc53c574299ecc7f9ee22e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e";
       public          postgres    false    234    276    3982            f           2606    85612 *   draft_order FK_5bd11d0e2a9628128e2c26fd0a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6";
       public          postgres    false    240    278    4020                       2606    84924 .   shipping_option FK_5c58105f1752fca0f4ce69f4663    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663" FOREIGN KEY (region_id) REFERENCES public.region(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663";
       public          postgres    false    225    3948    232            �           2606    86355 0   order_item_change FK_5f9688929761f7df108b630e64a    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_5f9688929761f7df108b630e64a" FOREIGN KEY (line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_5f9688929761f7df108b630e64a";
       public          postgres    false    305    4053    244            D           2606    86274 $   store FK_61b0f48cccbb5f41c750bac7286    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286" FOREIGN KEY (default_sales_channel_id) REFERENCES public.sales_channel(id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286";
       public          postgres    false    303    254    4278            v           2606    86008 7   customer_group_customers FK_620330964db8d2999e67b0dbe3e    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_620330964db8d2999e67b0dbe3e" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_620330964db8d2999e67b0dbe3e";
       public          postgres    false    291    4234    292            Z           2606    85381 )   claim_item FK_64980511ca32c8e92b417644afa    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_64980511ca32c8e92b417644afa" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_64980511ca32c8e92b417644afa";
       public          postgres    false    268    228    3961            O           2606    85199 -   cart_discounts FK_6680319ebe1f46d18f106191d59    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_6680319ebe1f46d18f106191d59" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_6680319ebe1f46d18f106191d59";
       public          postgres    false    261    240    4020                       2606    84989 #   cart FK_6b9c66b5e36f7c827dfaa092f94    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94";
       public          postgres    false    4085    240    250            A           2606    85139 &   address FK_6df8c6bf969a51d24c1980c4ff4    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4" FOREIGN KEY (country_code) REFERENCES public.country(iso_2);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4";
       public          postgres    false    223    3941    250            [           2606    85376 )   claim_item FK_6e0cad0daef76bb642675910b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_6e0cad0daef76bb642675910b9d" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_6e0cad0daef76bb642675910b9d";
       public          postgres    false    244    4053    268            ~           2606    86142 >   discount_condition_product_type FK_6ef23ce0b1d9cf9b5b833e52b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d";
       public          postgres    false    293    297    4241            :           2606    86269 $   order FK_6ff7e874f01b478c115fdd462eb    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb";
       public          postgres    false    4278    303    248            '           2606    85391 %   return FK_71773d56eb2bacb922bc3283398    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_71773d56eb2bacb922bc3283398" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_71773d56eb2bacb922bc3283398";
       public          postgres    false    269    242    4155            ;           2606    85124 $   order FK_717a141f96b76d794d409f38129    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_717a141f96b76d794d409f38129" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_717a141f96b76d794d409f38129";
       public          postgres    false    221    3939    248            	           2606    85724 3   product_option_value FK_7234ed737ff4eb1b6ae6e6d7b01    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01";
       public          postgres    false    3961    229    228            <           2606    85622 $   order FK_727b872f86c7378474a8fa46147    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_727b872f86c7378474a8fa46147" FOREIGN KEY (draft_order_id) REFERENCES public.draft_order(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_727b872f86c7378474a8fa46147";
       public          postgres    false    248    278    4183            �           2606    84864 *   return_item FK_7edab75b4fc88ea6d4f2574f087    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087" FOREIGN KEY (return_id) REFERENCES public.return(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087";
       public          postgres    false    220    242    4037            W           2606    85244 /   store_currencies FK_82a6bbb0b527c20a0002ddcbd60    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60" FOREIGN KEY (currency_code) REFERENCES public.currency(code) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60";
       public          postgres    false    221    3939    265            y           2606    86112 @   discount_condition_customer_group FK_8486ee16e69013c645d0b8716b6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_8486ee16e69013c645d0b8716b6" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_8486ee16e69013c645d0b8716b6";
       public          postgres    false    293    4241    294                        2606    84869 *   return_item FK_87774591f44564effd8039d7162    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_87774591f44564effd8039d7162" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_87774591f44564effd8039d7162";
       public          postgres    false    220    4053    244            F           2606    85149 7   region_payment_providers FK_8aaa78ba90d3802edac317df869    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_8aaa78ba90d3802edac317df869" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_8aaa78ba90d3802edac317df869";
       public          postgres    false    225    256    3948            @           2606    85129 '   customer FK_8abe81b9aac151ae60bf507ad15    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15";
       public          postgres    false    250    4085    249            P           2606    85204 -   cart_discounts FK_8df75ef4f35f217768dc1135458    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_8df75ef4f35f217768dc1135458" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_8df75ef4f35f217768dc1135458";
       public          postgres    false    3990    261    236            g           2606    85617 *   draft_order FK_8f6dd6c49202f1466ebf21e77da    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da";
       public          postgres    false    248    278    4072            \           2606    85371 )   claim_item FK_900a9c3834257304396b2b0fe7c    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_900a9c3834257304396b2b0fe7c" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_900a9c3834257304396b2b0fe7c";
       public          postgres    false    268    4155    269                       2606    85944 %   region FK_91f88052197680f9790272aaf5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_91f88052197680f9790272aaf5b" FOREIGN KEY (tax_provider_id) REFERENCES public.tax_provider(id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_91f88052197680f9790272aaf5b";
       public          postgres    false    4209    285    225            n           2606    85954 7   shipping_method_tax_line FK_926ca9f29014af8091722dede08    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "FK_926ca9f29014af8091722dede08" FOREIGN KEY (shipping_method_id) REFERENCES public.shipping_method(id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "FK_926ca9f29014af8091722dede08";
       public          postgres    false    287    241    4030            k           2606    85841 5   custom_shipping_option FK_93caeb1bb70d37c1d36d6701a7a    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a";
       public          postgres    false    4020    283    240            B           2606    85134 &   address FK_9c9614b2f9d01665800ea8dbff7    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7";
       public          postgres    false    250    249    4080                       2606    85009 #   cart FK_9d1a161434c610aae7c3df2dc7e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e";
       public          postgres    false    238    240    4005            �           2606    84839 /   fulfillment_item FK_a033f83cc6bd7701a5687ab4b38    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38";
       public          postgres    false    219    218    3935            z           2606    86117 D   discount_condition_product_collection FK_a0b05dc4257abe639cb75f8eae2    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2" FOREIGN KEY (product_collection_id) REFERENCES public.product_collection(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2";
       public          postgres    false    4169    295    273                       2606    84934 .   shipping_option FK_a0e206bfaed3cb63c1860917347    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_a0e206bfaed3cb63c1860917347" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_a0e206bfaed3cb63c1860917347";
       public          postgres    false    3927    217    232            {           2606    86122 D   discount_condition_product_collection FK_a1c4f9cfb599ad1f0db39cadd5f    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f";
       public          postgres    false    293    295    4241            M           2606    85194 /   discount_regions FK_a21a7ffbe420d492eb46c305fec    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec";
       public          postgres    false    225    3948    260                       2606    86264 #   cart FK_a2bd3c26f42e754b9249ba78fd6    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6";
       public          postgres    false    303    4278    240            �           2606    84849 *   fulfillment FK_a52e234f729db789cf473297a5c    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_a52e234f729db789cf473297a5c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_a52e234f729db789cf473297a5c";
       public          postgres    false    243    219    4044                       2606    84944 '   discount FK_ac2c280de3701b2d66f6817f760    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_ac2c280de3701b2d66f6817f760" FOREIGN KEY (rule_id) REFERENCES public.discount_rule(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_ac2c280de3701b2d66f6817f760";
       public          postgres    false    236    3986    235                       2606    84874 &   country FK_b1aac8314662fa6b25569a575bb    FK CONSTRAINT     �   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "FK_b1aac8314662fa6b25569a575bb" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "FK_b1aac8314662fa6b25569a575bb";
       public          postgres    false    225    3948    223                       2606    84894 +   money_amount FK_b433e27b7a83e6d12ab26b15b03    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03" FOREIGN KEY (region_id) REFERENCES public.region(id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03";
       public          postgres    false    3948    225    227            �           2606    86350 0   order_item_change FK_b4d53b8d03c9f5e7d4317e818d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9" FOREIGN KEY (original_line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9";
       public          postgres    false    305    4053    244            X           2606    85239 /   store_currencies FK_b4f4b63d1736689b7008980394c    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_b4f4b63d1736689b7008980394c" FOREIGN KEY (store_id) REFERENCES public.store(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_b4f4b63d1736689b7008980394c";
       public          postgres    false    265    254    4095            c           2606    85491 +   notification FK_b5df0f53a74b9d0c0a2b652c88d    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d";
       public          postgres    false    4080    272    249                       2606    84979 (   gift_card FK_b6bcf8c3903097b84e85154eed3    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3" FOREIGN KEY (region_id) REFERENCES public.region(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3";
       public          postgres    false    225    239    3948            l           2606    85939 '   tax_rate FK_b95a1e03b051993d208366cb960    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_b95a1e03b051993d208366cb960" FOREIGN KEY (region_id) REFERENCES public.region(id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "FK_b95a1e03b051993d208366cb960";
       public          postgres    false    225    3948    284            (           2606    85039 %   return FK_bad82d7bff2b08b87094bfac3d6    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6";
       public          postgres    false    242    243    4044            L           2606    85184 5   discount_rule_products FK_be66106a673b88a81c603abe7eb    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_be66106a673b88a81c603abe7eb" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_be66106a673b88a81c603abe7eb";
       public          postgres    false    3982    259    234            �           2606    86665 3   line_item_adjustment FK_be9aea2ccf3567007b6227da4d2    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2" FOREIGN KEY (item_id) REFERENCES public.line_item(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2";
       public          postgres    false    4053    244    301            �           2606    84859 *   fulfillment FK_beb35a6de60a6c4f91d5ae57e44    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44";
       public          postgres    false    3927    219    217                       2606    84959 &   payment FK_c17aff091441b7c25ec3d68d36c    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c";
       public          postgres    false    238    243    4044            _           2606    85416 .   claim_item_tags FK_c2c0f3edf39515bd15432afe6e5    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5" FOREIGN KEY (item_id) REFERENCES public.claim_item(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5";
       public          postgres    false    268    4151    270            �           2606    86199 9   price_list_customer_groups FK_c5516f550433c9b1c2630d787a7    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_c5516f550433c9b1c2630d787a7" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_c5516f550433c9b1c2630d787a7";
       public          postgres    false    300    4234    291            H           2606    85159 ;   region_fulfillment_providers FK_c556e14eff4d6f03db593df955e    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_c556e14eff4d6f03db593df955e" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_c556e14eff4d6f03db593df955e";
       public          postgres    false    257    3948    225            �           2606    86147 9   discount_condition_product FK_c759f53b2e48e8cfb50638fe4e0    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0";
       public          postgres    false    3982    234    298                       2606    84929 .   shipping_option FK_c951439af4c98bf2bd7fb8726cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd" FOREIGN KEY (profile_id) REFERENCES public.shipping_profile(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd";
       public          postgres    false    3979    232    233            =           2606    85099 $   order FK_c99a206eb11ad45f6b7f04f2dcc    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc";
       public          postgres    false    4020    240    248                       2606    84899 .   product_variant FK_ca67dd080aac5ecf99609960cd2    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2";
       public          postgres    false    234    228    3982            >           2606    85104 $   order FK_cd7812c96209c5bdd48a6b858b0    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0";
       public          postgres    false    4080    248    249            
           2606    84904 3   product_option_value FK_cdf4388f294b30a25c627d69fe9    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9" FOREIGN KEY (option_id) REFERENCES public.product_option(id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9";
       public          postgres    false    3969    229    230                        2606    84994 #   cart FK_ced15a9a695d2b5db9dabce763d    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d";
       public          postgres    false    250    4085    240                       2606    84954 .   payment_session FK_d25ba0787e1510ddc5d442ebcfa    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa";
       public          postgres    false    4020    237    240            R           2606    85209 .   cart_gift_cards FK_d38047a90f3d42f0be7909e8aea    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea";
       public          postgres    false    4020    262    240            )           2606    85044 %   return FK_d4bd17f918fc6c332b74a368c36    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36";
       public          postgres    false    242    248    4072            �           2606    85406 *   fulfillment FK_d73e55964e0ff2db8f03807d52e    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e";
       public          postgres    false    269    219    4155                       2606    85652 *   return_item FK_d742532378a65022e7ceb328828    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_d742532378a65022e7ceb328828" FOREIGN KEY (reason_id) REFERENCES public.return_reason(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_d742532378a65022e7ceb328828";
       public          postgres    false    4192    220    280            #           2606    85386 .   shipping_method FK_d783a66d1c91c0858752c933e68    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d783a66d1c91c0858752c933e68" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d783a66d1c91c0858752c933e68";
       public          postgres    false    4155    269    241            5           2606    85089 4   gift_card_transaction FK_d7d441b81012f87d4265fa57d24    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_d7d441b81012f87d4265fa57d24" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_d7d441b81012f87d4265fa57d24";
       public          postgres    false    248    245    4072            $           2606    85019 .   shipping_method FK_d92993a7d554d84571f4eea1d13    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d92993a7d554d84571f4eea1d13" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d92993a7d554d84571f4eea1d13";
       public          postgres    false    241    240    4020            `           2606    85421 .   claim_item_tags FK_dc9bbf9fcb9ba458d25d512811b    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b" FOREIGN KEY (tag_id) REFERENCES public.claim_tag(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b";
       public          postgres    false    4146    270    267                       2606    85659 (   gift_card FK_dfc1f02bb0552e79076aa58dbb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0";
       public          postgres    false    248    239    4072                       2606    85558 &   product FK_e0843930fbb8854fe36ca39dae1    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1" FOREIGN KEY (type_id) REFERENCES public.product_type(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1";
       public          postgres    false    4174    234    275            �           2606    84844 /   fulfillment_item FK_e13ff60e74206b747a1896212d1    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_e13ff60e74206b747a1896212d1" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_e13ff60e74206b747a1896212d1";
       public          postgres    false    4053    218    244                       2606    84884 +   money_amount FK_e15811f81339e4bd8c440aebe1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c";
       public          postgres    false    227    3939    221            ?           2606    85119 $   order FK_e1fcce2b18dbcdbe0a5ba9a68b8    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8";
       public          postgres    false    225    3948    248            U           2606    85229 /   order_gift_cards FK_e62ff11e4730bb3adfead979ee2    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2";
       public          postgres    false    248    4072    264                       2606    84914 -   product_option FK_e634fca34f6b594b87fdbee95f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6";
       public          postgres    false    234    230    3982                       2606    86137 >   discount_condition_product_type FK_e706deb68f52ab2756119b9e704    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_e706deb68f52ab2756119b9e704" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_e706deb68f52ab2756119b9e704";
       public          postgres    false    4174    275    297            T           2606    85219 .   order_discounts FK_e7b488cebe333f449398769b2cc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_e7b488cebe333f449398769b2cc" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_e7b488cebe333f449398769b2cc";
       public          postgres    false    248    263    4072            r           2606    85974 4   product_type_tax_rate FK_ece65a774192b34253abc4cd672    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_ece65a774192b34253abc4cd672" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_ece65a774192b34253abc4cd672";
       public          postgres    false    284    4207    289            6           2606    85094 %   refund FK_eec9d9af4ca098e19ea6b499eaa    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa";
       public          postgres    false    248    246    4072            w           2606    86102 1   discount_condition FK_efff700651718e452ca9580a624    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "FK_efff700651718e452ca9580a624" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "FK_efff700651718e452ca9580a624";
       public          postgres    false    293    3986    235            �           2606    86152 9   discount_condition_product FK_f05132301e95bdab4ba1cf29a24    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24";
       public          postgres    false    293    4241    298            �           2606    84854 *   fulfillment FK_f129acc85e346a10eed12b86fca    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_f129acc85e346a10eed12b86fca" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_f129acc85e346a10eed12b86fca";
       public          postgres    false    248    4072    219                       2606    86189 +   money_amount FK_f249976b079375499662eb80c40    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_f249976b079375499662eb80c40" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_f249976b079375499662eb80c40";
       public          postgres    false    4265    299    227            V           2606    85234 /   order_gift_cards FK_f2bb9f71e95b315eb24b2b84cb3    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3";
       public          postgres    false    239    264    4013                       2606    84974 &   payment FK_f41553459a4b1491c9893ebc921    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f41553459a4b1491c9893ebc921" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f41553459a4b1491c9893ebc921";
       public          postgres    false    238    221    3939            N           2606    85189 /   discount_regions FK_f4194aa81073f3fab8aa86906ff    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff";
       public          postgres    false    260    3990    236            ^           2606    85396 *   claim_order FK_f49e3974465d3c3a33d449d3f31    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31";
       public          postgres    false    269    4072    248            ,           2606    85054 #   swap FK_f5189d38b3d3bd496618bf54c57    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57";
       public          postgres    false    250    4085    243                       2606    84969 &   payment FK_f5221735ace059250daac9d9803    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f5221735ace059250daac9d9803" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f5221735ace059250daac9d9803";
       public          postgres    false    238    4072    248            t           2606    85979 0   shipping_tax_rate FK_f672727ab020df6c50fb64c1a70    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_f672727ab020df6c50fb64c1a70" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_f672727ab020df6c50fb64c1a70";
       public          postgres    false    290    232    3977            �           2606    86238 (   batch_job FK_fa53ca4f5fd90605b532802a626    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "FK_fa53ca4f5fd90605b532802a626" FOREIGN KEY (created_by) REFERENCES public."user"(id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "FK_fa53ca4f5fd90605b532802a626";
       public          postgres    false    4100    302    255            %           2606    85024 .   shipping_method FK_fb94fa8d5ca940daa2a58139f86    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86";
       public          postgres    false    241    243    4044            }           2606    86132 =   discount_condition_product_tag FK_fbb2499551ed074526f3ee36241    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_fbb2499551ed074526f3ee36241" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_fbb2499551ed074526f3ee36241";
       public          postgres    false    293    296    4241            &           2606    85034 .   shipping_method FK_fc963e94854bff2714ca84cd193    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fc963e94854bff2714ca84cd193" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fc963e94854bff2714ca84cd193";
       public          postgres    false    232    241    3977            �           2606    86446 .   order_edit FK_order_edit_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_order_edit_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id);
 Z   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_order_edit_payment_collection_id";
       public          postgres    false    306    307    4298            �           2606    86435 P   payment_collection_payments FK_payment_collection_payments_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_collection_id";
       public          postgres    false    307    309    4298            �           2606    86440 E   payment_collection_payments FK_payment_collection_payments_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_id";
       public          postgres    false    238    309    4005            �           2606    86402 2   payment_collection FK_payment_collection_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "FK_payment_collection_region_id" FOREIGN KEY (region_id) REFERENCES public.region(id);
 ^   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "FK_payment_collection_region_id";
       public          postgres    false    307    225    3948            �           2606    86416 P   payment_collection_sessions FK_payment_collection_sessions_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_collection_id";
       public          postgres    false    4298    307    308            �           2606    86421 M   payment_collection_sessions FK_payment_collection_sessions_payment_session_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_session_id" FOREIGN KEY (payment_session_id) REFERENCES public.payment_session(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_session_id";
       public          postgres    false    3996    237    308            �           2606    86538 /   product_category_product FK_product_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_category_id" FOREIGN KEY (product_category_id) REFERENCES public.product_category(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_category_id";
       public          postgres    false    4329    315    316            �           2606    86543 &   product_category_product FK_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_id" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_id";
       public          postgres    false    3982    316    234            7           2606    86452    refund FK_refund_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_refund_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 G   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_refund_payment_id";
       public          postgres    false    238    246    4005            2           2606    86370 !   line_item line_item_order_edit_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_order_edit_fk FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 K   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_order_edit_fk;
       public          postgres    false    244    4294    306            3           2606    86365 $   line_item line_item_original_item_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_original_item_fk FOREIGN KEY (original_item_id) REFERENCES public.line_item(id);
 N   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_original_item_fk;
       public          postgres    false    244    244    4053            E   5  x�ŗ�j�F�����0��EwڕҨІ�b 4��6d<a<��SR{�nI��`0h��;:K�������l�Ib:U�e
�y�������}x�w>�:�~���s��;�z�t�?��7�R �� ��'@?!�CЃ£��AI��j������@P�R�ְ	xȊR���qlZ�H ��*�qPWӨ��1��P��>����8Sa���O O�Z�qa����Jg>��2D�`k>��eFÆ2�)�m�t�s��4�W�W�eU�<-�tȪa��������x�n��`�	��.EH x�-f�����Ĝ�W�-�>�C<�&�.�P�q��s5�oOϖW��w��{���������v?�Y�}߅��b2׺���:�P2ݦ�x�{���0��-��P ߠ�X*�<5�#ԤtU��e~�Ү�}v��:9�m�m�8�l����]ti� r9c�51�ֵ.��~^=�'lA݊��_à�a�7�����q�H@F ex�F�ˀ m��XO !���Ԯ��fHU�P��U�����^������z�n���_���{+��T`�O�Jf.�c�Q$b��Hl�����Do�	�fx�(��aΞ���q�W"vPz��O�2A;��/*����l��b�:��DIp̰�>	�è�q���k�Ce��R��c��1¶�Dȕ��2�,�"DE���6�(u!A6`�Ku�P�\f��Ms҅r��bd뗋mTa���PWm)yΔ�ƴ����_�J=]l���B]!�"�Q�2�:�&0#�#0ڒG��ta��ơ.:&ƬU:���CX]������ˍh\��*tPu]0dyԥ]�5� ؔt�� ����).�ɠ���Lk�b�J�K � wC �5�R]"��Dq�٠3����'�F�n���bϧ�t�?9//��9hǓM���>`��%ʆ����Qc��� ��CP��.�x����Hm@=�x���o�_�	��u>9{a*K�dخ�'4�����8��������F���U7b��Ҋ����F}��<}u��=��4����K_g�'���9����3S�Rh����P����Ԩ�˴ B�ŇC�Q'�R�5\]��̓�{[è p��T�9�����@�X�M|�v������l�p�5H�]��"�8�[ˡI�a�*?�bxw�x#�|������G��%c������T������͋����m�kln��bs53If�fNT*�%ҵL�w&\2\F觪Qa�۸#�dy���6!��!H YN�M�7�~hҖH��a,�uBG��|K��t_ܫ���7f+      �   i   x�KLNK�70��s3��u51��p���u524��4202�50�52Q02�24�22�3241�60�+��YZ\7����18�����2����=<�3�3�+F��� $j      y      x������ � �      �      x������ � �      ;   )  x��W�n�F=K_A�d#��B_̝ ��$�4i,"[�$#N��{zGҘ��؉>V�Y�������� �Q%��YX�Qa�
��]jv.޽:vO��̎��7�&��K��C�+^@�����a��\��M�CV�Ϗ70�0�2��])�X���ǋ�h���g����8 �+crW2U��\����>�\� ��>���8zPxT� �� ߆�G�9%XL�6P��#*�}�6ן{��=���<�����x1?3;��\�,O�X�����g�����o�j\�ұ7y�|b�㟝����/���b�b�<+�����s��u���_O�;��������?�����/6!{M����|q���
+��0*�y6��X��yϱ�X�L���:�;�W��'�W��g������9Ԅk��J��H�02=t��3Q��z�|IϮ�!A �"�:�]����>-N/lV[?[-��=������i�b�)�U�4�����Dq�٠2��M.��m�5���oi@U<��롰$2�"VfD��@MS&C��P�J	��G�˨�Qe�� �lgQ�0�[�H�=��ɔ�>�c��xoڠ%��	�_�4�����4o�ޠ6��o�ygpFG7��h�7>�����P��e4͓)nl�[U�҅�NT_x�R�J_��&����tJ� nt<��B��|P�����-jr5� ����Q�vVhH�ʟB�E��wm�\�X>VjVm�� � m̀�bǀ�DP*�� ������Lј� m
\wi����� e��PF�5Q9���;�Ѳ�! ��ɲb)���B`�� ���6\�N����hXv��*��*�n�~�SM}��|�c�P�Wi	���i��b�J#�pAcDp��5�m*&�����=d-*�a�����o��\��Di�s���!�0S0���܄&m�����"߾a̋��،"*M1꺍;b*V�g��~	y��@�����j�w!��G{)�:&MDԚ��Z8�(�8�/&��t9�Mt��(r�D�>��R�8@����F"�� �����*HD���HE��<��m=�uP��'M9��+�Ŀ�HQ?�&Ju\֩2+���;�2ɬ�.Ȁ��}�T-����؂&��Q���Xύd�����v�q����I��c���(�5�hbX�#�0�7l��@�0��ɒy#%y�dj�]odT�	��D���v�ƍ � ���~h�!�w��*cH�u���h�7]Ѥ&	FQ4c<4��X#L\{(��%���n��4-7�=/�ٵL����������mҫ      P      x������ � �      Q      x������ � �      U      x������ � �      W      x������ � �      Y      x������ � �      X      x������ � �      V      x������ � �      *      x����n�H������w3���|II�Ĳ$�)�,R-�ă�����b�d���/�_2)�=�@Q�]��`f��tC�����w�=w�+{.�����0/T"�1��)*�6�{:@�;� �4�%�wHI�	{��{d���C�4�b������gR1B[�XK��pG�NT�������H%�4�*vWT*j�J�����Ts�iT1{�BHI��������02}Q�E�T�l�b7�*��D������k!w��-�bl�U��T��*۔�j*U�������9��>`Abd�bdb�4��9�%�8�-�՛�͛tZ-��.7��UB��0�z����^^�E��Z�.�)�}cd.5��C������l����{�mT�͸Gmr�ri�e`O왽��:�Oj~&�I������5?S�Yߗ�N6��tn���S{�,'�$�H��PI��f#�l#��h��#O�����;���,�(��8S,�D��4�P$�����L��aW��l�Q�.���ώf��_s[����`��>�0!ߖM�B0�]?��vw�#�J����Zg��P^�P$],�M��0H���������Gw�ۮ�|���|e9��^��euK{�W&*�¤�����̫\*D+��	�c�ޒЪL��{:iN�U�&A����:2�8�R����j�hW�E���Dg�B;�q`o��,w9����Aa�y�3W��B~��gw*�L��Q�mJ�B��5�]�ˉ��G.u�:��r|~��O�
�0?Xn���6��U���4;W��b·����sǵF:P���&�2	Bk�C&W��⢅s��u���ӱ�ePF{Ug
nټ@J�λ��1�ug/=Ĳ#f��T�V�8;$�C���蚳h��MW=9 J �5�g���PśtW�/�bGD�P�Iϛk� K�*�����lO����C{�X�?r:�C����n7�x�홏��Ǟf�8j��9ƀ�SU
���}�-]���T-ʊeߙ2�;��`�eH��X��)�~p*7Q��T���I�ݡ�/É=��AU�@��F�=D� ɇw�vadvڑm3���L"�	�vW�? ��+}e�r�CFw�}��vO�[���yCoi���!���_� ݦ9?����O��	)�nɡ�7�f��4J�M��n刟R�K���{Zg�f�fQ�{�`�&�U1���)����k5q��3�>Y?�����4�,�b��q��H����V��Y�r<yD9���y�Μ?�Ӓm�}�I
��� ����NH�oC�UZ������Q��,��ה�T	w��p��ۆ}�Ӡ0KٯцGKh� սmX���{���k׾���ح�����������q��B����Tw�έlߡ�Zޒ�3�|��`{��݆�A�4���W���re�-ܤeQ%-?�Ő�&�g��ܹ��(�ä�O�B1"��ȇ���F��J����i|�8ے��U	��Y�Z`��X��?���ٕ�U��U��7gJ��>� z�j������v��mmSQ]�`4wlq���"���2Ls���a(2����E)�Y-p+A A^ �g��4�q�"�1����8���-�Dq�S-Ґ���DGD�rgO�u�^�����Q��ʝ��:j/��R"�_+EMyI�%R��l�s�1��4�����|�8E�����]���5��B �Ν;�j�]�\Jml�"��E�$ŝ�̉/쨛�]$�6�;e�'�9��p�"��Osg�^�itN���H_
p8���zɒ��{�l�����^�� �����V�
ڠ�+ch!c�1����!�xilW�m�.��ߐ} aM�`�x�X�4��-� R����؇��T�}������)[�!8 `WB���h�c�q���� �V5<��`G���xBK\}�'�w��k��4C$Q����	E'@.;!����^�!2,���d>��J(F���fZ�����`эa�b���"��&�r�=D���5�Z:O���<��	��'�$A�1y�3�n���^��� �u-��Aj)+a�{f�gtq��Se��\����[@��H܉���
M-�b>1&#O&��_������:�f�L�]r�b��f�4�}̧۞�*�@iW&ķ�t����Q� e�_eB�[� ���q�T�|�p���!o>�	��4����n�p������{��2{랿�v#�����z�{�I����F�!ad�Lw�T!�n�K�5n �	�fhZ2�
�nK���U���k$�kB7��0��T[\ߞ��;�����T�2k���-	���;Z�Z�oz�w��J���Az�9G��=	c(!B[��*�����{�f��G"���<C'^��3E(SAd����7��Ev}e Խ�+a�
���N�%����U�j��� ҹ��u�|�:O̶�R��~���^�f���������"R��g�~R]Tܫwu<\�)̷� J�Ӗ{g�d�}���=v�B%�+����U��p�L�4�m�'9eG4�%����#<[8�b��m�ɉ�)���G|��S�-��Gi��L������'����V~�r{��-��<}M����� &�u�~��}�F	0|Ƃ=��'�O����X����W�)(o���V�����Re�ҟg�|jt��2�vS�\�ix���˭G[�������s��4ب$�wՑ(��Xf�,���C"O�C}��D:�+���T�P�ps��j0sGg$�H���Sůc��E!�e�. r�̗+�e'!������娀Ji���V�uu+6�Cy�k����~ Ź��r����X�叀ٯ�L͢}ĩ�j�\Wf��;S[|�����Ih��Hc.38�y>����{��O���`�a���Ҍa�z*�)���F������f���T��rH��W�*ߚ��x�"��]d"�f2��9>C9�~���QK�/Ց���Wi�����dv�A2��8��NW[eZ}��F_����{ihfQk��� E����ˉ=�^��Le�AE��f����;J���Z����v�t��^F_e���>�dV�~�J����8<.!�п��������-9s�4z����J�E�=��C��gq��	��G�5����Ks֖�]|ӎ�Xw��![��i��*$�mf��`���δ��� @!K���3o:���F��h���I�b��yJ��*�n����"ƨ�3= �;̙�q�W�x/@�L��#C:c��C���"H�ʤCE�rKp����r`�2����!.VZ2��Me��0 ~'ߑ�'~�ȸ�}��������q�k#4��f:=�`q�$p,Q���+s����sz��rۑ$�J�P����~���ە��Ź���2N�ta��$�vp�p�t`Bz�i�g4�x�B�=w��=5u�7k�"S���$�ҝv%����вρ�"
 OB[$� ����2dj_}L�x/a���sw��H�c#~���cp���w^��I�W��=w��<�} �J^�#<���w��r�!�4{I��;��t|"�N�Ǎ�7#�L_���kM`���f�0Q�j�LR����x���7e��vC	^o���_���r:�I�_���}oX�x}]i0S����!�Af
�_`t���CS[�e�6}�&�b����:�s
��{R��my
c����:1 5�	[c��i/'�ԡ,��ڶtT��B�Je���9�4��Ogp�Y�d�����UX;�0F�q�%�����h���w�.|n)�C��_��lMN�D�X{ᮆ��cѰ�*��+F�HN���<d�����}�
�x*�m���n����T[��6F�S�ҥ�/��V��%�d��W�����뻂�Fs���c�o�y��Y �p��;���2	kt�o
5-#���_��Pڱ�����2���]�+ue�k��E���-��X��vΨ�a�ZoG6ė)�K[�?�}���g�̞d��Àx���� 6~$����f�ę2��&A�/^L��b�#{�V�uc�<��z�}X�Ic���� �  ��oz��M�C��i��X���B�A�UK�.n��r�?����\���g5�6�O�����F�����u_�bp�f�bA��nQmw��u��������z�FC7ssQ��Q�&ۀ�jm��+�k��P�r(�~_�B?�^�M�-��ӛ�=�S��"��%&Voے�	�>r���f�l���aIj��؜k��mh�L�ɕ��n���ȵH�A�rZv�.���'�3�u	��n��Rw�:�n{��g$؋�Wz�쪡/�V��V����qH�M�����D��2��4�H�g�޲����v����G�6)N�:I�1���6��H�4�������-��
&�Ǚ�҄��>��G�_�h$򦠥{}��t���`�!2	2�J�z��2��_��o8�F�a�����f�� �O/7M41唍��f�{�]Tv�]A/�kh��դ~ڑ��~�1�=���4��F������)�5ztI���Ӻ��k���~�����s˷�� 2�ֵ���Ee=�7�vt��h$��]�O޳�,��*9��7p�¼Lf���:pP&y�I0�����8@��g��A� l�����7�c_�\zҮU�Fߌ�#~���\3w�.��;�9ѣ~��=g��_=�ӤmP =����]=�\X�g${�=Ğ�\�'�V�L�9z/��T�i�֏
��������G}����+ �ֶR᛾|Zd�x跤��[�q+�7������n]V�[��4��;��O� �lW�)mN�ǆ�J�U5���P�6>4�)�~7F��6F\�O6�RD�����-�Y�q�����͖{(Ev�ƞ�R��]G(�hg��;t��cPîf�#E
S ��
K5l��])
�t�!�l/+o`�O]�N�`Y�u�rO�D���f���
4P�MR�Ȑ�����ڿw�Ȏ沬I�1{'V�ǚ����)��$W�\�-�E��Z�4^0�~�d�^gz�P��}�c����+�yE��1Ɂ�J��X�ՔrTW����d�w"���o��^���#��u��1ڢQ�����*ڝ��gإ�SE��zp�wד2�B�s㲶�xg4@ߢ�L�(���ֺ�wFk�,�,�3=����R�����$F�
Ӯ��iu�,ߡ���������d��	>d	�組
��<��Z˃JJU+�����)���a��dal	�{�C4	�\��G|��ߥ���B|�����QЖ�����a���?����a��#o/��H��x��S�D�ݚ8��QEQh��$��-w%8������S�׿ 6���5ӿ vPY-ߓs i�ӓ'���� �-�{�!N�6oX��7�f�V�� B�j�����ё�0ި͛	7�~�~���~�������ャqrG0�~����:��7��=��_��`��7������м��7��h�7}���<�j�P�0�F_���������D��(��(���}�p/�@_?�jq�\hQ���|hio�_�e8{� ��ϓ6}D�2E�������{�E�].��-O�7��be��a)iQcݕ=}�P�_ک��
�R	T�x�j���������m0���ì?rn�_HoJ�$֗�C�zj���/��Gf��k��Y�LsV���

k�>Dʸ���gߎZ���h(������/����w�~�      (   �  x�]W�nI�>~���-���?����	����.w����S�=���Ȼ	�x .JaY`�YĮv�J���A%w�/���w�z�	r�r˧N����W庌h?�A�g�LX:�	uD�1��ck-ՖƄ�)�0�Z(�[��j��t�GǊ��X?�"cղ�Σ	M`Y�K���ԙ`�Jc=�}����W{ԑ8�.�mf�W��ЙsHfj-��G����Ӿ���ktl2Y�־z����}'�R��&+�;�-���${#K�a�W�w�L�Ҽ��ZhVX;+��<T[vvN���q�5e%ZS5�߼v�I݇�^D![����~9�#��:���᤻���+�5o*�Ɋ.�i?�pһP��+vbV���K-a�Ve�X�9�\��v��L���q>B�{mz��w���>�%��XZ޸��K��)�����2�u��pd2.�0!ؾ��3�ǫ��515��%V��<uҷ���X����B F�J�)���c㰠������q;��J�L阗Ȍ�C/�ؘ͇�*�%%�^�e3' �2rz�l�8�Q�D��:���	4���Ƞ<�e�vpN҈�C���t�Dgt8Ґ�Qm���r��M)�<�����/mRÙ��a�c�ҿo���*�4-x�m��JX�� �'N�J+�%��\��D>���0�5_�}c+�IDG'=W��\�x��
�u8�N���~�W��rIPeJGGst-6R-���\�=�=�p`�KЅ��������o�9��X���o�`_߄�іʒe�E���p��4�48���+tY�rYHs�Ȣ�͍�n��.���;	�T	�⑃x��h�<~���xP/ y�o��hp6����z~�z�b-�4�Uk&u̩� �aX~��o3���m�(�Q�`���*`Y�[˪����Jj�6|���(K7D��P9�*���9Y���|�"�Q�/�=<2��]ٔMD�k��F���Ef�]�*4:h{A�Ģ\��Ȱ]��2B�����<�dsv��h4���R.Z��`��@�h<CM�����jV�Vq�s0��x��Lb�dRT�d}mit�T�I�� [�̟j��:�O��0_�YF<8��o5�+VΫ5�f��50�lG��oF�F*q{��rw��u��o��Uñc�A+C�]cleE\3S�ym#:���~��qC�u��N�͋�7W?�y����%�e!܍�	Z����*e~8��kѽ&�t<�һW68��M�L��='Pi���Yh��@�2��v�raZ�q$b�d��UE��$�@d��㩗�?U�6����?.�L �g��a�*���N&>u�np7S<Ax'.���.�����$��x��4ayh[��"������/��������!MO;8�i]~�t��s�>�Li�WO�E9%����Υ@�{�r.�QLA��K}H%���C!X�.k.z�AGp�@V`�����t�0qMlqg�*(x��i���n_�U�͗�:�%B��	�Dmo��g7����NR�f����N�-�?��bHb6t��)�2�QU�f�נ�D�b�������9���	P=j��tպ�Y�xz���x�K���'���-8��>X?�9��*n��j�=�G���5��q��Y�eJ�h���B��%���������Q~T����9�@jo/��䡒����3��o��~�O��V������צ�Sv��chW��c�?sU{,sy��k��6�a��:��
��58�l������R���z���#�����P�K�]	f����I�����9H��v/k�J�E��N�d�vҩ���onh�s�/]��+a�=� �v�t����Hv�5���\�6�h����^�RǙ�d�����V��A��o�?��o���B]01��j�[�z�xtL	���Pڵ��� ���R����M�ڧl�.++������im,uuG�Pe��xY���Y��)�'�[�Q����?���J��A{��}N�~�9�#��)VI�}�\O��d��[��~�V�d�yT;?������X�6      f      x������ � �      D   @  x���Oo�@���)������) J�ĤA�T�ՂU�ӗ�&��N^�0/3o�˾� ��3�$��M����2�0Nۏ�Q)g������U@ �! C��P�	�	EP#`���1��m�c�'l��g��.&�����rU��}����n"����y�o�'���� Tmf\?�B��k���j������ê8�]�h�}�_.����VMS���o�P�;���J��l�jy4?�8�Ԙ�ynI��?p�(�Sx���,�GW��x
@�B�"�~Q�!����Ȋ�R��Au. �w�DV0��A�eQ��nr      n      x������ � �      o      x������ � �      7      x������ � �      p      x������ � �      q      x������ � �      u      x������ � �      r      x������ � �      s      x������ � �      t      x������ � �      O      x������ � �      6      x������ � �      N      x������ � �      a      x������ � �      &   �   x�K+͉70�21q�p12s7��	75v�p1����/JI-�1�rt���224	sq77�4�����嬮�"##]s]cCC+SK+CK=Ss#SK3ms�Cr�Js����q��qqq �(Z      %   L   x�K+͉70�21q�p12s7��	75v�p1��,I��G9����zD��XF����sr��qqq ��h      $      x��M�+M��,����� #&�      :      x������ � �      @      x������ � �      F      x��Yr�X����^MO���̃�83�$�Sr�,�� �r�KC�{������D/��rW��( �$'����*�"1�sp��� \�|�$�ԯ�l��2�n%�$���4
��jɂ���)q��3�]���|d$�#}��	F/�� 2E�V��D���vV������9���/�{�0ߥm��Uѯ������r�88�q�i�W>}u�	n��������><n��p��(�8��5�F��������{u~v�x}���!�r����ou��b�-�$�h��h+�.�3��^=\O6[��{7�vZ���&[�}p�[g�'g�������~�~{vp�wW���9�>�m(�MJ��=A��*�Hkr����F�|���W����h%>%2׮����^�����9�����ӿ���ߖ����߇�w�K��\���ݭ��-�����)5h439m���Y*r;�|�����/��:a;�u���?����Cz^_����s�Z�:���d��3��:;Y�t��mU�i�����|n�/�c�M[f"<��_�n~K�gۊn�_��wܧ}{w�������Ο.�6�_P�2VN��\�o.ڃ�ϯ̎f�u~	�ƥ�i��\��e�rͽ���_��8����������f���~x�z��Ӭ�N���\}q�S�<<:�M�_��޸ާ��/����/Ugtw{��z��������8ӱ�5���=kck1���޻���v��6��	^����Ab��:�%܄w�}�^ד�5��^=|N�>�%�ۇ�ۛ������~O��C8J�-�>qs�����-�K|v�7���;��ƽ�������z�^�4���߮Fa�<�pn)�սw�x��'��p�8�Ի�������k�ɢע]ie����뷥ȳ�No��ӽ�l���l�?�}��t-���˽����y>,ݹ7���%q�~�^_��y9[pX=��R�qo��yu�GX����̊~����~ws�0�%��j������[]�����.��Q:lw�������<��.��9�f��ܹ�������⚝�d�ߌb�]��7?,�k;)STO;�Ǜ��˯wW^�TZ;Z�ү�␩�������x�7)���ى�LV�/������l�X�������%��m麞6���zXi5a�t��r�5�;��ښ6��sYkY��>����Ng?xj'�)�����]j���L�h�F��a~���c[kbw�ӡ=�a�WO�v��d�6��O��iu̇�������Ԕ�RZ4;U���Lk�z�������vw�O�.�iWr�2u�vi��t-�KO���%����|�ϛɡ<~��2�8��}O%,������ŎÞ�wǳ��a1���럵���D��n�[+��5�/���������*�D+�܆���n�&��]d�&F:e%{��������]p�}��`xΓ)���p�W޸�KW��Hñꏫ�q�H\�qeF�%�a��W7�~|u̶:)�q�q9�7��{\�L���C8a����^\�I�xE��Ne����W��)\'�ҽ��o��O���Д"g07J�-�M��&�_�^�`X�z�$�Nq��K�Ԯ�#����=H�p<�k"����K�)l�)2�_���ns���4|v�KU�_�?��6�����I8���w&��)Q��2�3����䙗�j�~������p1r酫ƛ�zy�=͂k^���u������k����n�׭>6G��t�����t�<�.�60n����G��6��k|>��|8���g��߅��^ݰ|�z�0�~��y����z�z�ȳr3��M��f�Vl�����&�ˋ���O�'�~��Ӆ���䡹��j��e�\u�sF��Ͱz��zc�kMg�K��z'w.�V���t�N�s8=��rC��Y�+=+������wJ�{vH�r��[�%�>�>u�kW�Jo=;\���:��K<��������q6
v���_WOQv��V�U�5�o�d�W��N4#�P�{���z�8�'#�	"�"�Q�$)�)�℣�󇫛�����<�H�6"mDڈ�i#�F��H�6"mDڈ�i�`��X!?�s� �����hW���B��ٲ����f�ܼH�Y�ü]�3)�dRŷ�����wOK[w����B�y?����<�����j޿Gc�,`^��O�*�\M��YS��
��Ns�޼��s7�t�7������|��s�|'}��d�w޹
��|��ƦW]l����|�����?�=r�C���v�I�HǶ��Yގǁ��#%!�|1�x���P
s2`��AaN���t{�ܶ�ZF6i+����nﵺ����>���ñ}˳ș아,�FKUm��۬r&�
{.aw��rǚ`�h����ZF�3+(3���������������������#d��S!7��rr�n����g�B��2�LC�ѮT��З�PױR�1R�&!3����䌧,��2�3�3�3�3�3�3�3�3�3���<���1GE�f���Pp�	���������3C�Ύ2C>>t6���Y��t��:{��^:[���$���\a5ՠ2=05R�->���yp0�V���$#��i�t����w~6�Y+��}�$2݉K6���,�{;��,���i.�(�l:��ٖU��d�g[���Y`0YI�X:��{��6^*���He����5��8av�/W7��7�ߗ��sK�Iۻ�3�ѵ�0��/�v�GtW�#�%�Y���}j������J�jU�fSWK��i�|�!�*�s�dC��9Jp�ȐW�������~8686868�k�8686868686868686868686868v�Z�(�8��p�����F������.8���ҕF:ׯ�\>�/��3�3-��Cu+�_8�>�R���R�[�4868686868686868686868686868686868686868�ip�Sᨛ����n��9v��+u�dm�fR�{�B�Ri��gC�z�*�C�:B�3��8�S�I��5�8��ql�.�N	-�V�=�eŨF�,*�v9_W�l��ı��i��8���`��"��`��������] {�����L�4-��R��Fk��?���q�N�1������z���˜��4�&�^FJ�tNgx�1x�.��N�9&G�ǯ_o�>%ؿ�u���)�	�s,cc)�[��$�{A�==�L} t��v!��pJ:�Z�C�C]�m��3���褛^�2��X�k?�X{O�}��|�uBrs����蘆�\|�a�''_�܍�uI�*�oN.�p�C��߮�߂�l��x3��7�6���l3�m���Һ��:����.q��aYy�b/\�L�9!����ӧ�[Ͻ�΃/l8���������?Q�(c\i͸�\K4�_c!�v�n�%"�x�g��&Q���JD�^-��
)qu��RvVH*��#,�q�81���>�K�����s��㽎�~{'^�y*Q�
��}�'�1���ӵtx���ۻ1�OL����������,�S]�Uj}^15���s�"#lPS���ۆ�����q��<.l�����i4���Bm��&G��]д_��b%���~Q<�!��q�~��l7�?d6v�+��n���pg���/yS�bb|��������9�)m�B��x�]h��!y���y�,N�J����'�O�?lyϷ�tu��q�������5�g��g��'ia-<��y:3Ħ�Ϛ���:�J f�����e��1��z�J*�z��+5z=�{ž���J�$��X�L��Ch���/I����9ܦ���2Ņ���&�5�*�n���ڼ`	5e]Χy��8����ٞT>�
��w����W �k�0�B淵/��#����k��[���ټ:�Et���V�VD'k��\f	��lU�y�f���%r6_!,1���Xt_�uy��E��A��=x٢LVaY8�8����iޛE��Z�sn%�κ�t�oʒ�e�Udg�Q�yı�p���q�8>��i�����̤,��^�9�g��N�g'e�^N�����˴���    �7����N�f�i{���,a��e�K�%��:lIO�J�����v��5)�x{:�y�[.���z,���3��#���.=������Ǝg��٪q�Ǳ%A;R�� �(��;?&���S<4퍒��F���Wak
�2��j^��z7?��*��bRgH�Y�"_�Ś�RmW̡�|�*Fj�?9y�l
��O{��\҃ON*\�\�5"��^��S�h�2�!M��rZ{�Ek��q_W;��Kc��z��VJj�N�D������Ry�j~�*��!�(�UQ��߹�m���b��t��^=̮�y��s���a����������sg�iT>Q����{u���x�'������L��+�=��B=kE�k��j|3���ԧU�����پ꒪�ԇ�=��b"|;�M�B����[�f���w'��t���fO�瘌�T��n�\�h�T��b'}���.W�3�q�k�3���<c��VJ�gl����1��]�*y#'�l���MD��^�آ�r��"w��t���������"Ӯ�J�J']+�:��l�?����I�����I���ӄ�4���4?yة{��S�"'�懓;�b2���'�_�������<��~�4�&<����ǻ�G����ؙ�/~�ʨ�JO"Z�Gd
��u�6�>�R�,��R,5�ֶY���nY�L�J]�|���B8 ���6��~8M&rwt���������x�<�<:�t�x`�g{�L_Wk,��:��~����|8r�Ҿ#<=r���3Tb�
a�O���$�`���2���]�n�@XI�uC�{��U��6�|e�6��"��l�˧�R����f�^SGū������:��SmAe�3��3R�L}0�d���l��";��N�����Ós�wT��!�$ZGmw��A� 
Z/�|��V�>6ݾ^��m$ۧ�l_�?3�V�������.��l��o ݞĴ�ʶ�Wtl����<ˀ��I$<%	�e��<�`6V�M�;�x�p{��bQ��鞶������6��_o϶��/����ʉ=�`V��y�N�7"���?�oW���Hj\�1G���Y�����P�H|�����|��7x�))o2�^��r������$δUʆ�ű�2G�s\���V�l��>=�V%�7'�S�j����g��"'��Um�ee屶�_����1�H���;���ʽZ��i�A��j��J4�[ag��z�m��>�9��n��49�.�j�@H1&�j�����Y{rZ�����Q�I˵'��O����I��4�K"=���$[<�O�}�O��q��<��׾ғl�d3��/�}ɇت�~:gUTGD�v�Cl#~��!����a�aS�SK��|�y��D�#F"�:��>���B|�$sy�"<�ԣZ#�ui��K+�y���N�֬�~��ne�͔�F�Y�R:BQ�3:���}�˄?�+/�"�W\��Q���%\�.���y�N�n�ʲ%V_���^����ϥ��6,W�r��Ҫ��W���|Z�H+�V�H��DZy@i!�DZ��i�K+c�Po�V�qN�v��VF�i%�J��H+�V&?NZ�4�-��}���>�V"���i�uZȗ��A-W��ӹpx���gB��ϵr�+�c=f3�z���<��L+O	����Ji�A�REf���%2�#.-d��,�Y"�Df���e�%2Kd��,��,�Y~��r�^&'��s-R"�� �)V��j�tj����ᤋKa�ǓnK�v��q�gՖ9s�7��񰨁׬����J����f��u���6�m�-���\��Z;�#gh,u�#�3���21���єP���|�K�u�_�iQ��^��ѫ�>���2q�.�/����N�5�<S��jPj����e���������M
��(�����Zc𜜾�{mq�`3lϋ�]K��֔~2�FJ�Ns�$R�J)=Rz���7��q��<��^�WJ�ilL=�ڈ�'G��]д_��b%e�Q��x�>���G��vG����N,�_L��6��7�=�����)m�B��x�]h��!y��w����w&��E�SfO�B{&��.��o'j��J0���J0��͗�`\���>��փ���%j����3sAlJ*�	��?B&�zodS�z#u����]�f{��+8�s�=�r�zc�ax��ǼE���=���E7��*��.�e������'Mge1��{���͊��7�ҏ��=���E�e[�G�^�+}�ޗ�|������x$[_�MWD�5�f�HkʾO8<�/w�4-�z9�ɒz!ס�ʙ�>j�;#)���w����\�FrH����ss�e�
A�����,T�����2iݫ�W#�ȯ�G�"��|��F&�[�zQ��b^�5�+���n��c�<B�����(-���¿��ë��!|�$j#���+wA�~y6��{F��뿇/p��m?o�{����A�1<b��m��7�x�^1��s�5Ɗ���s����g�$��q?o�,���t�A�P�h�xY�E�b���1�����a�yU��
/fL����2����-�R�c�c��k�]w֪u�\�p4!�xBw���-�&+t��MN5�k&|�W1�#w�|a�\.r�oU�-YRia����c1<b�	����(-�����#���1|�$���y��ό�W�1<bx�����#�_#�������q�G�:6�8�+������$�j[���w_���+[|�1|lxF�5�^����߫���Ͳ�Q§�p'\�1��j�;��\}JF�_���e)�I8��&�o�Z=Q�du���lk-����!1|�.�/�wM�*T��r͘�ȫz��Dw���ßH��D@i!�G�1�G��#'Q�2���c�~n��{�����#�G�1���_7���Â"�G�*1�8�c�rI�-zdЧ��b����1��?@���U�+�h�k�X:(74���D�p�r�iG8F)߱���XcFO1������M@�M���Q���FV�Ks�)Z�f]�>>�+���5fGɟ{m�x����z�r!�f�:������wvH:���������I����w�����y��W��O��zqk�,��_ܪ��JX�\�}F��ƍ��aRDQD�ϋޟ��f�{��Og�W��խxu��D��_��t%�ѻ[��)��$����[���[�!]E��d�+e��\��H�39�=��t-�����8*���y
��W�F|��_ފ*x�*��[w���^'Kʕl��(�\ٶ*�򙫹+	:����Bh�1t$9TVɀj!7d�	Gf��v���^�6�R++K�^ZJ��,��Cd��]$_X���zi�!�~�)T��S�Fi��~��[�ooEV�sY����Y=���������|��W��u:�����x{�������z���<Dy������['�H�~MQ~:
�(k�<�����8��(�/�˵mZ��6&M�DD�������?�(���Z)-;�W�nZ����r����#��v��q�`�$*�Z��eQ��"ǲP���۟W3�e��2V�^���Z�o���_�?���E�E#��N*��DIS%m�+����w�>���#�?�P9����B�<"����L�~M?qg���-�E��G�>��Ǌ�5"xD��G�p8~�;	�Y�E��"�ID��t2�R%�)v��z�ӈ�����#���#��px_��^������ �V����3j]k��s�˅#���;�h54D�@�gՄKPq!x��ǳj�<��;�������;�����Y5xV�U�g��Y5I<�Ϫ��j^&aƳj�<(Ϫy/U�g��J����j�|[��Z������� �pܡ� Z8C.�3�fB���k��x��)�$�rGJoK6��x�ت�f��iP���G}� Q>zɗ�Ý�Y�)�m4
�rAv�{���E�؃�(���$��$��JY=�zd��7��(��GN�~�(?��Z�LQ~���!�'!�C�?�X�<D�����D��I�+��uy��<D���']�Imn    ���n�a�M�4D��ᡢ��߿(���k�*m[��:,#I-�E�xƸ�{jD�h��g8t}Ƿ�74����&�}Ah��i+���֩t������-��LZ�F�_9 ���E�e#���x�[Q�^��kfX��l��̗/G�T�-|���wx�U�e�ls��T�X�?'�?a��-�5��N���5;��j�����u�����o;�y�Hⷜ
���fl� �|3��ac��gi����'��C\���!l��>�o�#���o�wߧ?��M���ոJ��A�5|/�p�<3v7��'�ξ��d)���%cwyAD�Q�%v����}bi�,Ұ,���'���� HLB����YP������o��ޏ���4��ߓ��s�q5|�������[Xt7��H�vw*��ZO囧�ѳ��4~rd��3�b6�eQ���x�%�ߖ��M�>�=?�%m?o����A�<y<���m��<~1��d?�w��$e�+=;~i�6�)���2����w��O�lƊ|��ʓ�*v���������׷�������<~� U+�T򼕍n����(IFG���9§ʱ��z��6p����bǣ	3B�A��A���>W����AŴ�ո�� %���x(�[�J����P��C�G%�c)��S�_�ċ�,��J����4%~�x;�v���ہ�o�Ή,���d��o�/ޕ�c����x;�v����ƚ�v&�c�}uo�\H��T�����μE��I�ہ��©,3"�m�ʕp�+��h2�37�\�s�P	GI����m���f��Sj\�o׃,�)�n
�λ̔��u(-�:�u��__�h�w�n
��:�������)�n
���v�uSx��u��M��*��vg�Vo�2�f��-����:��RF}���Dg8d��E�T#����ަ�lǭ���#���s!����!=Bz����#�GH��!=Bz��[����#�?U��~wH���lڔj�̠�ldҥL�L�Hzs|9r���c=��������RQu�X�Z��R!�GJ���}��I���Rz��H��#�GJ��)=Rz��H��on��#�GD����TR��)}�͕M�j)���\�������]S��é�;B����
�2w�2殥�㇧�� �GJ��>�$��GR�s��H��#�GJ��)=Rz��H��#�ߵ��H��S�H鏳
���N黍����B�F=ScՆm��+�C�(˘#�P:���1LK�5��$"�W)a��)=Rz��H��#�GJ��)=Rz��H��#�GJ��)=Rz��H�""ެ ��o\H�w��U3๜*tX��E�+*�ʙ�#���u<)�#F�r��5Nຖ	b�a�͔��T����S��7�#�?Gh���=B{����#�Gh��>���=B�s���6�_,�'�m��j�Q%�b=[���ܽ�����fRr�
%�T�G_g���âi�#�P(L_����V���ni�����gD���)S\L�����Y"8���H�|��I)u�~���K�K@��i�i6�D���b�a��%2�Ѹ�F�F����D ��F#�tQ�L7�h�נ�F���\�.W�3"�8��ܱTpG~��9n�IR��9�Hhhh$	4r@i� � � � � � � � � � � � ���$%�942/�y�g��A.��W+�v�U6���T�t\?w���1..�y��7�/D�G����_Zt�+�~�S6��J��{|s_o���v��m�����d���re�7���N��lV p�W�K⨘n��ε��e9Ckt{/��� ��^���L���\����M�ڰZVτ/�72�q=�8�i��uF�(�=;��	���
��$�!�!�a����<<<<<<<<<<<<<<<<<������f �q ��n�pk�@]�귺�t!��e��3O��8wq<��#�OW�QC��УC�"�JQE�ĝ���������������������T�Hx���$D>|xd9���Ō�H�մ��oj�Q�!� ��]w{Q�p1�Y�5[�7i��tҹ3f���c�y�0�V���B���9�t���w~6�Y+��}�$2�[�����s;��,���ir�(�l:��ٖU��d��[��YP0Y��X*���{��6^����k�Ne�J��A������ۛ���e�S��I���c�ѵ�0�/��GG|��
~$�d2k~�Oe����_�J�VR*]'U[���֙�~��uN�vѾ�r�O!��yڏ �:�V�J��$�?�?����������?}��^����KB,�?�?�?�?�?�?����?e@����������aߥ�B���������E�r]L�-STU3�t���gc��P�����_@����U������m�/V�ՌTe�mV��ͳ�������%2�������?*�W4�Y��.�t��Y&Sꟙ@r1�ԑ.�a��1�N�z�[PjL�7)m���?	�����?������������O������7�������������<;N��w����?�G����no?�/��ݫ�E6mK&�Θ�
R��7�G�	n��Ǎ�oN���l(I�d�̖ˢn,93�%�7;���g���Hk�2/0��u�Oǣ���u� � � � � � � � � � � �ɘ������������T��	Q��
 ��* ���?�?�?��i���@	�j�A)�h�:6��������u��M�3d�v|��@���[��xu�I8^)��$�?�?���������������������?B�B�y�@�߸
@��E������������T�2����?B|�"!G�1RG��K�I�J�o�.h��9����?	�@i��������������������������������!�?!�Y �o\ �������?e����5�����bQ�-��8��g��X%}Gx�8f$�#���B_�ȿ�L�������֩t������-��LZ���ȯl��p���컇��2����r��2:Cd�V��m���⎠�IG�����2t#O��ț���!zGɗ�j�-�}�HEu냊i5�{��2ccǭ؃���&�^FJ�tNgx�1x��P�������^ǋݮ�r��0��2�S:���p@i�e�� ����<�ԓ��e��]�f���U�2DO�6��#{�.h;FE��6}�E�l�OV��g���������Ͱ���0o�1B��/7�N�w�5�e[�f�e�͖�����u��M�	�fjY1����/V��Y'�������j']�嚝B[�c=t�|�󽭯���S����S�z!bl�j!b�����Z�M	��?��>�%,���� v|��IfX��$-q���1��N~NR'[��j\%��� ������Up��\fՓkgߵ�d)���%���z��`Z��<��Y�aY&F��=N���p�6^I���V��� <��x�u�~<��2��O��{<����}8�`��K��-,z�7��X2,��T��%�o�d��Mm,&G��=�lʯ/]t+K�E�l]2��~ے!n�����,�h�Ƹ�m���P	�Hi��6�;�B�n oW$��U��w��eɄ>_��'����L��]�=�N���i�	����ɧ��p�I�{V��������w��	��)�ĳ�e����q���a�w?�I��N"n��O��a#I��%���[�M��~����r��Ir��*�J�]�G2q}�{�(� ��D�����e:E��K��Q���~���tfm�9�f����;��F�cI��x���fa��$F�/6��-b�j�v��[�K���l?ݗM�,7�mV�v�!Vt�r�b,������]S�R���\���뵨�W��׵    k'���X�/7[y�V�Nڭ�L���[ȵ�K�%�v�^�k�>b����,`��fe��ctY��^��LV��pFg�ƪy��[�w�-�9�݀u
�|�[%<S�D�mτOِQס���Њ:�"�����!��Q!���2�Q-	Q�D5�j� �AT��Q�D5�j� �AT������jհd��Q�D�#Y4@T��Q�D5�j� �}xMj��!�AT��Q-JT��A�h��v�}+j�t��=��G�e�R��#�����ZΤK�_^{�^i������Q�D5�j� �AT��Q�D5�j� �AT{��D5�jX2@T��Q�ڑ, �AT��Q���jS�-)D�����M
��I� D5�j'$��:�ѯ��EV��39�->s�p4r�0���`(�\�#�)�8D�$D5�j� �AT��Q�D5�j� �AT��Q��� �ATÒ�D5�jՎd� Q�D5�j� �AT����5���Q�D�(Q�P+g2�չz�U��^��r�gZ��p��=gX�8�O<ϘuQ�]H�
�-��՟� �AT��v@iAT��Q�گ�N� �AT{�D5�jՎr� Q�D5�j� �AT��v��j� �AT��v̢��"���Q�D�w]� ����V�dU�Z�穭�ncP����Hx�0>r�d�$��˔u��U�2��_{Z��;�j� �AT��v@iAT��Q�گ�N� �AT{�D5�jՎr� Q�D5�j� �AT��v��j� �AT��v�ZX�x���_CT�&Q��k �D�Sժ2�od��.u&S��˃35��id�Y�D[g��qF��#:Zrw]T����4�P�jI�j� �AT��Q�D5�j� �AT��Q�D��]-@T���%D5�j� �ɢ�D5�j� ���6�ؔ
�jՠIAT{�5 Q���j�󃪶��׺��"gR��uw�ړ���1*,n�KN�+��1��Fr�jI�j� �AT��Q�D5�j� �AT��Q�D��]-@T���%D5�j� �ɢ�D5�j� �AT��Q��kR��Q�D5�jQ�Z+]P�N���zE�z=[�G���k툀Sǎ|��\�@�#2
�uQ͌�1)	�;D�Bf��5��[�$S��ͺ���j�_9XT��Q�eE�p'�+�j�B��u���cyǊ�F�����أ�����M�풪v
��3���v,<%	W�҂�W���uՎ<��*xZLL^�<ł��Y�xzO���d�S*
:�%�:1ΆSʊ}<�ș�G�N�x��iO�D%!���
�é)72��hv�&����TK�MK�,]|Q��ۥ-g��"�^�L��<�f�3QϙbOe�3e�n�wϟ$��]:�������v��o�^8�^>�YF�txfr?�O�?�^ ��qt�ga�y�NYɞ=K|��G`a��O$�D� T�z��$U��z��{P�B�"��$%IT�J���*�PM��&�ڌ���� �oqի�D��*�V_-E���?=��%?��iF>�Bt/���ө�SD>��{��)�m��X�}[L��ww�쐟��#���Vףro2T�<��^E��d�+e��\��H�s�z�q폥b����	{#u�e�r�K����D�^�.�t{�t�5�^�-�Z���{�n/�.��Y�Q�ɮj��i�Mےɶ3�YY��&��,W�m��OR�����n���x�;?���>e��-rb���az��ù�OV�t�49m�{6�V�l�*�s���-��,(�,E~,�F��=�����tݵ%&��yME�kΠ]����������2��u�I^α���}��Iݣ�#��h?�[2��
�ܧ����}��oJ�c{���\�-�[��f)_ʝ��P2�Rg�,?�f�k�2��ǌ����.5��������������������������H��	a��
 ��* ���?�?�?��)����RZ�u
,c�f�[`��'"�/�#�!�Pp�(OZ����]!�l���R�
�@�� � � �I��J�������������������	a��
 ��* ���?�?�?�����Z5/���W��H{�q.�\���#<o�ߥ����q��\Rũ�&��i�������������dL����������*�����f ��q ���n�������:��آ�e�J+R���|_��g�#�$p����/�\�{�ћ��ӔR�P����O��PZ � � � � � � � � � � � � � � � �G��@�O;oV ��W�����@�A�A�A�O���zm%t׊^��n�zmy�萺�9.|G(9rl �c���ȣB[I���` �I����$�������������������������f ��q ���n��������v���U�����iRO�ߚ��g�8���c�@8�K�oI����?%���L���֩t������-��LZ���ȯL��w�|Y�_4h�_�sE*�[TL�Y݋�+ˌ���c�9�M
��(�����Zc��_��6���6�E�lװ�܊�'���;�I`�J�����bw��_����P��~i�Oc��jc=89�WI�c��n�/�g[Ұ���?rn��2;1�-��7�����ˍ�S��nEz�V��a�~�%�&�|y�@�|�uB��Y�ZV�6��@����s�	�"w�e�p-�I�{�f��V�Xe�/�|o�k~����c���T�^�۰Z�X-�1F�fS������O|	������8���l����8tJ\?~{��������ó�WI��:�&�o�e}�x�3��YC����wm Y���|ɵ�� "Ũ޲6��t8�ϻwiX��Qxv��e��� \��W��G���}b: ��1�hݽ�槸��ߓu�����j�~0X2��aw�^2č';�K�;Sxm�@��/"gSK�ɑ�r�4���B��ʒaQ<[�+�߶d���}t[x>K>�Eü1�!e�9�.R�0����N�����_�s<��=oY�����I�q�0lyϷ�tuڀfn�7���?'����j�Ǟպ�;>�D-<�õ\f�%{J*�y��?��[��w���O2E醓��?��v�HR�o��%�����_�_��n0�\=|�\��J��RjW��L\_�$�A8��5��|w�%�D�N���-wvz����=*�Wkc����q��=�X��:^
�Y�W�0�"��/��-bC ���[�K���l?ݗM�,7�mV�v�!V̠�b,�_�����]�^0����� W�y�&*j��j�uE�I!f3V���V��U�ӟv�+����;��j�~IC�/��DԵ�X���5�w�Y����du�{(��2YP�u��k��W4o)�Ŷ�g�j]�T��B�2�d+�q��	�H���爑8�y�	������Ɖj��Q-	Q�D5�j� �AT��Q�D5�j� �AT������jհd��Q�D�#Y4@T��Q�D5�j� �}xMj��!�AT��Q-JT+v����uZ�A�T39Kϔ4F�u��}G0�;.�C�Zō`������(� ,ŉ�OT��Q�D�J�D5�j�~5u��Q���� �AT��v���j� �AT��Q�D�#_4@T��Q�D�c�&�	Q�4)�j� �AT;!QM��t��\�T.Vm�~�zA�`��#��s��s�����v#�YAD�$D5�j� �AT��Q�D5�j� �AT��Q��� �ATÒ�D5�jՎd� Q�D5�j� �AT����5���Q�D�MQm �ڦU/S*WҕR+-�M�8������eG��q���X�-��,=Q�&���!RJ��D5�j� �AT;�� �AT��Q�WS'�j� �=��D5    �jG�^��Q�D5�j� �AT;�ED5�j� �AT;zQMQ�4)�j� �AT;!Q���d3�L����J]��<K$g�q�5�#���P�p�D(�R��X��&-3�Z�D5�j� �AT��Q�D5�j� �AT��Q�uW� �a� Q�D5�jG�h��Q�D5�j� �AT���f�CT��Q�Z���H6]ig;�Ֆ�n��l�L��)���pR4QG�WH�1�P���\�Ẩ�/�x�ĩ��E�Bf��5��[�$S��ͺ���j�_9XT��Q�eE�p'�+�j�B��u���cyǊ�F�����أ�����M�풪v
��3���v,<%	W�҂�W���uՎ<��*xZLL^�<ł��Y�xzO���d�S*
:�%�:1r!MJY���93���i� ��:�I��$D�C�SAv85�F���N���6���j靴i铥�/
5q���l8^��+��sW8��ެq&��9S쩬s�l�������^�K�������\��N���'�ˇ7�H��L�����g�~8�N���,l<��)+ٳg�O��,��vu{����H���UO��*�"[�Pw�R�W�TӁ��$��A�ޒRE�)�dT�y����-�z��hw[e�ꫥ��ܽ��G����8���_�.⥐�|:U{��ǿr�?e����o��W��Nß�sxdP���zT�M���Uޫ�r�r�LՔK��u�RO3���Tl�_?ao�.�LY.wb��z��� ���׫��%��n��ε��e9Ckt{/��E�Ÿ>�4�5�U�^=-�i[2�v�4+˗��z��
ӡmu��I*���^��M�0]�|�gӝ���ܧL"c��ENL���!L�pq8���ʢ�n�&��rϦ�j`�mY%yNVz�������ȏ��(���o���8ڝ�����P6���t������������\F?��4��9]�� !�"�{�q�����GrK&�V��T��X��ϔ�M�l��߭�)��t���f�<8<L��#49bD��w�x�����U#o�����RDIev�K�����#=������������������?R�B�y�@�߸
@��E������䟉^�
�n#O��Z�U㥳@��w���#\Iw44
�K+�#n6ɿ�)f�/�I��4x9�?�?�?�?�?�?^N���07��i�����4�@��i�k|�z/���i^sm���|�%^Ns��/���i~��/���i�r���/^N�<�׎�j��	7��r��LT���� ^N��Ӝ��i�l�^S�� �+W�9�V�lĥ�?r�����S7�h�[ät���E5y!mJI�	�����Q�D5�j� �AT��Q�D5�j� �AT{��D5�jX2@T��Q�ڑ, �AT��Q��ыj�(�jՠIAT{�5 Q�ک�j27�J�I̠]��l�]ΜQ�G�H�x����w��s:y����]��x2f,U�@TKBT��Q�D5�j� �AT��Q�D5�j� ���j�D5, �AT��Q�H� �AT��Q�E���V��b��Q�D��Z� ����֧E^��N����Y��d�LHAW���:b$�c��9Č�!�V�d�j�B��J�������O�<5xj����S��O�<5xj����S{��<5xjX2�S��O�ڑ,��S��O��1{j*����f���������k �<�S�Ԕ��/7�]n��~����3O��4�uF�����v�o���P%f�S�@��T�Q�jI�j� �AT��Q�D5�j� �AT��Q�D��]-@T���%D5�j� �ɢ�D5�j� ���&uJ	<Pm�!�A���v�5 Q��Ɉj��2�v[�A����t��1��\Z߱�O!�p��H:�#d$���!�Q�"�Q�D5�j�(-�j� �AT���	�D5�jO��Q��Q� �AT��Q�D5�jՎ|� Q�D5�jՎYT�<oŚ(� �D5hR��O@T��v*��NW�P����f���gD��H�5~�g8b8f(�í�1\m�j��#���l�
�A7���n��LyЪ6벲*�E~�`Q-zGɗ�x�ܫ��6�i�V��+��jK�b��9�Z��k4MN�K��)R|�
�ڱ�$\�J�\5�j��U;Z�ē��i11yi���gQ��-<56N�(���n��ȅ4)e�>�Z���C�E<Z�'q��IEN��Ԕ�RZ4;U����
r��wҦ�O�.�(���Җ��x�K�p&�]�L�{�ƙ(��L���Ι�a7��O�_x�.�?ko�s�V;�ηV/�x/�,#]:<3��'�a/��8:�_����<O��dϞ%>��#�0�����'�b"E ��
T=��{��؋l�C�=(K�^�R-n����WS�HB5ţ��j3"�W{�\��U�V�n�lZ}�������(�������E���O�jO��W���l���c��m1�jc��i��C~n��[]�ʽ�P��\��{Y.�A����r��#��!T�iƵ?���Z��'���)��N,5[P~`U�zU�dp���ӹ�`@{ݶ,gh��n�廽(B��g�F�&��ݫ�E6mK&�Θfe�2�\��\a:��t?I�6�Ks������l��V2���Id��ȉ	62��.�v>YYT����Q��tZl�-�$��Jo��8��`���T�� �m�>G��u�B����5��8�v�/W7��7�ߗ��֡�&y9�"�k�a $_$u�>���7��Hn�d�*�r������R�)����E������$/��%Y�Δ�R�:�3�.3�	�tFA�
+��� �|��Tm����?	�@i��������������������������������!�?!�Y �o\ �������?m�k��5e��Z/oy�3�Θg=�u��=Gw��%�+=�QBu�W)F��?	����?��@�A�A�A�A�A�A�A�A�A�A�A�A�A�A�A������vެ ��7���w����������6���Ҋ�[��
�Z�7[��W4 JZG���\ǌF���0j8��_�(��J��$�?�?���������������������?B�B�y�@�߸
@��E��������,�b�_6���J�f��3���ϭp��1��q����2��;Tv����69I	B5�
�ʔtw�δ��lU�AW��W�1;J�(��$����.�B��o��H��03_�r"G���0���4�Pˊ�� ��~���ܿ�-˅�H']�嚝B[�cM�|�󽭓~�����o9���&��s���1F���������ėp��}|�OA�':C�a�?�ǒ���ǻ���n�&[��j\%��� ������U��	�I����ɵ�/�,EX|�$�D��[H�����c���HòL�³{�H �� 1��ߏfn�}b:�c�Ѻ{?f��U�տ'��s�q5|� ���s��-,Z �Ov K�;�������1�����wJ̎Q1���Q��Q21qC������G���R>}�?;�����w@��]������O�~
�O�A�X������*���]�X���f������A��0/6'K[��jS��c<m��<��-����pP-�n%�j�Z�ש]��Cϳ�io�����d�H��<G|���?j��j�U����+w�$��|�Qm�~f����{�~/
����Ǧ�d��-�9wI���F�9(�f��Θq��P�1����w\�?�x�#���w��0��Jw�'h3x����Q���x��`�Ra��6K�L�gP!��%���o&�\��B*�˲d�wD�{]7/t��t��aK{�|��F�g��r�T��K�̴�~�[��^y�V����guōow���Ɵ8O5u��p[�1[������Ѣ�6o�����Oa���J������[�P�    �Ţ�և�ٴru��>� ����!�
k�K�^�����Ӽ4�7��I�f#9t��=Hv�H09�p�u�ּ<�kx�n�>����miR���
��p������)-]7k�ڛd�+�5'7S��������>�g+���8R�����q¿s�s�T"�E��t9��^=�.�y���S���˛ۇ�ѕ���l�A�>��׾b�.�wI�Oxee��R�ګ���]�����56��Wߴ��r��R�2b��l��f��~5��.��N�����m޹7��Dٛ�sS�i�����U�n����ʚ��Pg^ز�Qʓ��:V��c]E�]O��8WI.��}Ͽe`|u:�H7�f�,p�|7�f�,��p� n���Y 7�f�,p�l	7�f�x���>p��I�,�^�ϲ�M����Td_�t>Iy�`y�9&+�j�A�We�t�Um�l6s��Ñr�ñ*��1�����k�ZJ���Ȋeʈp���x�$c$�H��#1Fb���1c$�H��#1Fb���1�#N�eJ+����%��x�	�s�j pd'��t5��6)5�٩�LZ�3-�w��G�#�a���P8���*2r)�x�>��4%�l$	66666666666666666r�l��?A6�G�n���:�����K��G�?1Ĵ��f��fm;��)W�O����G�qY`ͭ�5z�E4C�L0
��DDDDDDDDDDDDDDDDDDDD|a: �� ���DDD���QWri[m��D
U�*�=yF�#e\K�u�fұ��5b}�y�o�Z���^������ݵN���\5]�4o��f�j��ݑ_9"��(���Q4h�_�sE*�[TL�Y�cV+o�V��z�؃΋�ۤ�ˈB�����5ρ����k��׿Λa�_DVv!ʭq��a������X��� �� D:ǯLr7=d�� �t �p�Z#���_��Q8J\����������o��o��ͽ�>!cao6�t���g��l���֕�x��֙Я���p�4��3���� _��S��O!^(��,
(�K�B��m���B@�~�)E�øad�ƴFyܩ'��*�J�ơØ)�:��+wAӷ�;�f��m��E�l{�����ø��n|x�l����bb|��p�c ₁-7�N�w�5�e[�f�e�͖����ʆZ��:�!dÓZ/@6�l��!d�w*nY2DΦ6��#{�i6���.:���È��8<�8�ϒ�v�0o�{X�Fm���6L!ms��.�z��v�:�\�G�[�����x�i�}�[�����D-]�6��������|���!,~����g�n���.QO�p���pɞ�J<k^��� �Uo��|��L��_��$����D�6��["�@��%�)��D����+W�$�)�����$�W��b`Md?��~	>Q�Sd��D�����'����ƚC���+x�s�lt�1���ֱ���!�\��&p�C8o��A�f���˦i��6+�N;���T��|o�*>��vuH:��,e�t��o�Іx�xU�mZ�ٌ�r��'iU��KB��g��[�l�K�%�m�^R��>b����,`��fe��>�Dlq�mQ&�[8�>�b��h�PT�o��t/[�t4M��ї}iϸ��ڵ�HQ��'�P�!ZIh���.����rQ-	Q�D5�j� �AT��Q�D5�j� �AT������jհd��Q�D�#Y4@T��Q�D5�j� �}xMj��!�AT��Q-BT3�����g�\��;��2gR�Cu<�a��}�8v䉀��`(Ț�6��&e�"�BTKBT��Q�D5�j� �AT��Q�D5�j� ���j�D5, �AT��Q�H� �AT��Q�E�)����_CT�&Q��k �D��������p&a�ݳ�5vhx8)
��O�����\�<�R�g6NT�����Q�D�J�D5�j�~5u��Q���� �AT��v���j� �AT��Q�D�#_4@T��Q�D5�j� �}xMj��!�AT��Q-JT+*9�%g�L��Ͷj�����rD=�9�0�P�z�s<��o����E5s!dJi�	�*��)�i)�٪X���j�_9TT��Q�EE��N�i�J�-dk�F��t}? ���wf��$Y���[��hL��w�$�xs� 	_���
%"���(`^c^o�d��HqqI���w4
��$������}n�*`dM��'  uQP�      ��z��`j�?�9{Z֬��ἤ�>�=e|��t��j�eOGr����j,�m*�����Vw�-��+DN�q�e�&�6~��.��l
�-���v`���)�RvaS5��"�����Bo������kW#���G[��Fޛ��P(�8=�|(慧����.���Kv:[Dz��v����� ��?o�~�BK\�(h�YѪ��v$�ʽ�v��#Vd�Ľ�T�4r�%�H���(�^�|��qk`��dν�pN�SQ�(�_�?"�~j\����/�_g7�F���>F{,�o��f�|������sO���xx�x�����b���^����r�~u8��ݦ�tʺ����5���4����FS���C�*Ye�BS�<w8�x�xS8�����h�Y�>t|V�`�{�y�$Nx����1�<"�h6J��9T&���3*h�ӐA�)"��%�+NL�tQq��Z�%D4�j) ���������������������������������������������x9k��1�"�"���V�7��˞��A!
i2���	�Fs�'6$��0Pqhy��CD%JL�4D,""""""""""""""""""""~�b: �� ���DDļ����s�l��;H/��i�^�	�.b��$J�C|���E��>�6�DTt���F�`�E0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0��PKC�����`�`����_���2Zԍ�M���*�1+��"��0DZ�рH?��pI��.C�%��!�!�!�!�!�!�!�!�!�!�!�!>�=""""""""�%���/�`��?""�=0�0D'��f�޴^yҗC=���L�y$��(�D��#�!�ZP.�V����x�ڧ߈8�;���պ�au�]�R�[1�#�BĜ_"z�k̚3�iGO���ẙmBD��uy1��O���y�1��FkR�����ρ����w
V����a:��%+��Փq�ؿ2B�X�?�fH�ר�Ƹa��'�c�v�D��r]\�������/�xx�����h�����O�h��6]�7F:7^��[���㿦�����K2��f�����g���3m�����?�Ȓ~=������L��|&P��p���ұ@����!�kŝ�e�U��H��T�������lr���?�vȡȻ��y�C�߈�<t�B���噽���b^�nQ�M���͓��d|�)|��Ƈ�Dcׁ�����P��k�9��]1�t�|ZM�^�G2/0ݖ�z�<�!dË� B6�l���'��H2����ayfo<3=��憲�dq�q��}����(�l���`<�:��{�u�dl`eWc�1��?Pw[���6���svܲ�^�Iţ|���C.��!�R��z��� z0����տ��]��gh���{U�����z��.�q���%����o��{�?���Q%z�o�4���Ǐ��������/����?������O�s��%LI�봼�ū�o�;�j����W���~����M�.�\��$�����Ac�=�̽�7'����Ғ3&�_�*���J��~�C�Gz��#������:+������+�):�z-?Z�ʯ�=uw(����O�T�<w�=�v=�B�}#V+N���Q��us<�om�3|XuW�Zg�M�7��U:������^���    ��l-�O�.�x�ȶn�m�-��O��V�;�j�#�y�Zc>����֦ƺ�Z)DR89�H�DR��Ǝ��j��4��L���f�Պ� �AT��Q�D5�j� �AT��Q�D5�jo�-@T�����D5�j��$i��Q�D5�j� �AT���~�CT��Q�Z�����]�M�j�C[�r��[*.�a
��LID�L(�������<����"j�7������BT+BT��Q�D5�j� �AT��Q�D5�j� ��m� Q�R�j� �AT;���D5�j� ����&�/�iWq�jՠIAT��= Q���j���5y��Nz��|�(�\��h&��%$��!��h,b�#�qn,��V��Q�D5�j� �AT��Q�D5�j� �AT{�l�D5�� �AT��v&ID5�j� �AT��Q�ڗפ���D5�j�2D������ش-G�f�_�y�B�CAu�-#2�bC�D3_�܄J�]Q��0YRJ[����ڶ�d�U<�d��F��-Q-�#��j9*����8H��t�k�F�W̸,��P�F�T�� P PU� P P P P P P˪w�	���ӛ���[ 5+^RV�Ξ2��t:{Z��ٲ�#���BN�N5̶�VY�][���w�"���ٸ��x�p�\M�Zy6��l
�o;���|ؔ{)�����q��h�q�7��?{�굫�W�꣭�K#���{(�n��]>�����tH����%;�-"=Sr�?;N|��W b���w?~�%.K��h�zJ;�V��c���+2��^���Fn�� ��`Ru��+��u}2n�ל̹���p*�E�k�G��O��~��e�����(�_��h�%��,�/?�5[<~��=������Y,�����~�<\.կ�4�۔�NY����tܡ�U����ֳ��h*��zhBR%��Sh*���o�o
��^{<-5��G���*�{o2��	�Y��"揔gA��@6�#o�����t^Hs�(�."~3"�I��"2�P�"d�eBDͨ������������������������逈������ � b�Wt�2j�6Ӳ��L�`�T���8k"�P��1E�/|��	�e@D]�i@� b�AD�3i�:DԌ""""""">"��7�#�W=�9�*�:�����d�8"z ��{Yq���m��z�2S|04��d6mwכ7��\U�׷��h?ߌ��q�o}�%�����fɬ���:9Յ�B��%���n�����1J�L�٭v+J��d��u���i�<��)ɿ6����w\����˛tkR�?���+��vb(�G����ݷ����H/�G��� I~����R��>��)8c���Dif��;����U5�J��`��nt���c�ɤYJ�cY�I�%~+J&B�X���� 7�)h Eh � �@�   4 h � �@�   4 h � �@80�/�A����� �`ރ   4��Iӧ� -�G�6�]9l�`e^�~��,I��D����ڐH�Ds%��� L�p'��P�   4 h � �@�   4 h � �@�   4�#�Rp4�ˁ���  �=h � �@8�4}J`8��2뷤7��akޭ�
:�Z8a��Ч�\Hk�IT������qR�՛�W)��߹5遼�E͔�:�����ΰ&���K����NWb�~r� :�yRt��Ӂ�8���#�t�YZ��]�_���)e���tՇ�򣒌��>p�=N��-z(�>��g��Q�U�28k��{n�m-g��I���U� ��Yh̓8�
,��ĺ�v����r�P�?���Nm�S�{�V�v#�R����^폑SW�ë@z���ˋ�ƿ��#�u����'w(-[���[���+�k�lwFڸkv����:�m����X���tn�����8�d*Syݔ�DD�����דL���>�K��o>����?���X��v�۷����m�?,�YX5L�0ߧ�y�4��
�ꚷR��pX.w��ZL�V_=+5y�dc�'?�������d�����U��:�����y��C��)�m��w�����/�+��1��.����֧57���7���eN8*�eD���$#wA&��H��/	%��O��C�LO�{�N۵�V��x�]����/���,+r����>D1S�vp�t�Ak6��s��z�N�
�l� ��S�ܓ?� 豚�9ӝ.:�ᐏ�{� O��a:��ɸ;���W����x�ҟK3��kTLcܰ���ݱ}��O�,?����Y����v������ć�|^P��s>�њ����ߓ8�yu��r�#���~�-����_�������#,�l�,��xV����,3�g�Z����ܑ�c*��,�#�����o>��m�yG-�c��a��m~���O��,�ɟU��H�'��ꔃ�G|N�^<���N�2r�`ڡ:<�ҋ����:*y�G|�#�W"%��>��i����Ϻe�_����e�b"��؅�u_*ٻ<��|.)�<�����zJ{g�XOy~��|v��|����{v{�Y�����kq��Pd��Z�� ��k��<��S�m�Ueƶlw*ǣ�k
"�a�y@h�DR����S�Z1�2�êĜoV>uK(�Q$F�E�h-�Q$F�Eb�Q$F�Eb�Q$F�Eb�ߥH�JT)��X�x�_V;ᔍ���t��J�(m�&��[^��;�o���ʭ��3T�Sy�7��ɳߋ=�f= r��+����M}�ڮ�3n�
R��7AB�	��Q�[FI$��PQ����u:���� �yg�X�i�j<xȧ���<dl���0:N����\��G6v���i�ؐ�$�'V*��x�,qg�b�!E������������"xxx�5xx�9�t���T�3�z�O��!y��u�����6ڍI�Y�M�%M�hKI`X@�R��,㑯�H%���eo�(��W�� � � � � � � � � � � � � �\� � � ��+YV�$��!�!(��|� 9�C:����rwޣ�q��MA)_2%���I|g1�I��8��!���+&pH888888888888�rrF8�ْqx:8����8�� p�A�83V4�uլ͚��<n�4�l��-+�D�'�����0p6�U�}"��S�,xH<<<<<<<<<<<<�rrF<D��}�&��T��C>c���!�F��1�]������-oP��Db�58	��q�[)Hh�.�e�%�����C��!�!�!�!�!�!�!�!�!�!�!�!E���k��3�!J��4�!�!�ƃ�|� 9�Cʮ#�Q��ް3��<�X�B#|G���R
�kF	����&~��.q7L���m��!�!�!�!'�xxxxxxxxxxxxx���e�>�m�!�!�ƃ�|� 9�CZ�z���Y_{�ru>�Âf6
M��ӈH�(���#�B[��>�䘣
<<<<<��y�y�h
�j<xȧ��<�b�j2�Z�V��vc�/� `.2���OdB�.��桡Q̕0f��ȴ�m�����C�C�C�C�C�C�C�C�C�C�C�C��!�!�!��!�!g�C�*Q��C�CP���= r��4��W�弣[����ڼ�K�tbJ�χ��$q����ʪ�����&��j�C��!�!�!�!�!�!�!�!�!�!�!�!E���k��3�!J���!�CV����Rf���D�?hTYOh��G�W�����l����-�{�ƍIv/g�o��[�[�ݟ�W7���>�5c,>����tk<�66���a��̻Ŵ�^H~���G    ����q�	�+6h�������\�7�Mg����.��~��[N'��cV�����gQ���k�(m��90�nT�i1��$�#2��BD��F����("("("("(�	�����������������x�etP��aX�������5(b������Ӹ��m4�HMm�a�jG��qı Z�8�"�4�\"�D\F��k@�/����R`ĳ���F\G^���fW%��|~�� F�"�_F\��[6��W�h����Rk�v�~ZޘE���n{�{!���7���#�'�[�yi�g�e~;�M2k>yYON�a��p��ӹ[�/�n�{W��+���=եuA���͙�<��ɿ6Z���w\�s�0.ʼ���jb�?���+��vbL�G����ݷ����F/JL�C�"I~��W��R��>��Y8c���D�f��;����U��YW��w�'�lI]U�D�R"��LN��17	�Y�}?� ��1+� � @�  
  ( P � @� � 
 ��B�  
 �f`P .@�? ( ��� @� ��* ]V��F������l���G���j��)G�� ��P\�I�� �]����. P � @�pBkA�  
  ( P � @�  
  ( P � �)�p9 z��� @�� 
  ( _Uh��PyC�;�F�9��ѠW��NpK(��H�G$HtDb���~9�� pv���]�) ��t�M��Zu��&c3�Q �>��bF"K�g������u��~�4k���nZlz���I��w�ς��1��FkR�����ρ����O���I�/�������?7�y�^</���J��gFP�X#����e�*0l���
���S����6�t��������ˇ��)�=���z��������g����n�?>���k��P��̮��7��'s����9��isL�r2m�����pM�҂2����Ě��nyx��\I*&�|�'�Vw�Cqx���ǥ��jMڜio2�5��Lk��R0�{���.�f���H��(uӼ�����=f��5jtؙ6�݉'9�N���ܷ{���%v������Y<��=N�;�!R|��Y�<�b<��UyX,D�~�{�a�8���X����T�,I��Y�+�w�sĺ�v��hr[#��f͎�Uu.E{\|4�jO�1�Q	_폑S׸#� �O\�C�[��3�B�����;���ܡ�l����o���Fk��;#m�5;Sڻ��[m���-�$�٩��c&�9/�S+�\-��2��軟^��z��1����{���χ�}����'f���~�v��6���U:�����;
�GM���_W����g�c&�Qʧ�Z�ƞ���C��ߍm㾾������<<[�ܐ|7&�t��mD_���W��3	n��w���f�/�+�1��1As�4=l��v�V:�5�.C擄-6�
tH|�$1	��,�%C���LГ7��
>(|�Kh-���A�^(ہ
>(|P���A/-���E}PQҌ��b>�F����i(6��Sm=�妠S��Aؙ[�o�X|^��Н!J��
g���z�6#����U��ƶ<�F�\O�B�8UQ��`�i|N|�b�|���Z#��7ԕ��S�C;cT�͆�y�j�ﱙ�5��6���);cd���$�2O�Z3��9,�lX���Q$D>�C��sH�h2mMz-�7(m>��d����G�=^�ߌ�b�IB�Y�W��OZ�/����Z`!`!`!�B/���Fڒ�2����K/��s.�(D��{12C��B!��U�(D������̸�Y�<�]�����ޅ � � � �\>��f��U���![� �:0�cW!��rՍ�i�ު��Qy4�w:��0&�
5��pė4 <R,��
c��
1�%ͬ1��*�'��N�:1�ė�Z��N�:1�Ĩ�N�:1�Ĩ�N�:qubԉߣN�xII�:��_gH�U^����Yۘ�hԒ��6��*����e;��w��X�\�;�lo}���y� ���C"ᵧ�YS	ӑ�A���UQ��D�@�H�ibïN��c���^'���+Y�.+�6y$�]�ὒ@"(�g��@"���D"�zE��y~Ҫ�Y]L�f��Bb��~$��4�H0b�fDZYF�HJ��^nJL:��$R�p��3�f[��GyY�$���S��<D�aH�"���p��xm\J�G���u�0$���F���(��BNh-����E!x��a��aHf�C�g��S�z�E�3�ȱ�U��>^�p"Y�g�CVC�W+�.�$�dl`eWc�1�K�n��o��?�"��㑌�<4�%�<�_��U�������~������ͧ#�W��Ww�K/�t����r��ѧd��y y��7��^Y3���Oj^�-� }�8���yOƫ��nkc[��1|O5�ȴ+ˡ������U��_ŝ��l��{�o��{�x�\�d�r�M�5���[]��˷�m����4�{��Ǘ��Ϩ����r��ܘv�ުi[�o��8�9�V9�h�Hi)���{d��^r�Rj�Ǜ퉱>�����=�.���x�GNd �@�W��7۳4��ƝN�N����U%W�=U%�;y<2�:��T~�����Z���N�:�������K��1�^�|yfo<=$|Qn1�>�����㹁�����l��xD�|}1(��P�B9
�o��U(_�\�@-�[ʗ#�Q(��B�jD|����O{3=����30�Ʋ����	�x^����!Kƚâ��'�_�G\������F���3��X�����`B�5?���{ac�<���L�����ͫ�����}��'�Pt���OYa�u7���ai�$Fס��@�^Տ]�NY�7���.�#����/�卑gP�f{:h�j�1��-�=jV
�h���%'2I"�'A�v/�-sҺ]jt߱NIyh���R��� ////���////////////���h��E_��ǃ��g�`�iU��r�����,���j\�N�V�ʪ9�q -��&�'��(��	:�E�A��,�ԛ���`
�(�o���]�-�P~Bk�P�B9
�(��P�B9
�(��P�B9
�(��B�,iKQ(����k<X�+�P�	�	]
us���Wݾ7���
!UA'�8���$iLbDԷ6�27B����	��������Nh- ! ! ! ! ! ! ! ! ! ! ! �O���#��6;� �<=��{m���������x���f҇����_�����kk{���m��2X�z�e�L��R%#��[k=�;Ѽ<ꎛ^eV���c^��f�~��xd��("m�I��ʙ�%�j��i'��2�1@"@"@"@"@"@"@"@"@"@�k@"@"@"@"@"@�"  �C�Hb����$� $���Y���,�$�YN�F��ڃ����n̨c�g�q�P�Ib'�%��a"���S�$�56]�JRE��F�޸3��]�[nVw�u+e�E��?r*5�9P�U�Qz���L:z>����
�̆#�)�&5bF�S���?��E�w����p^����ٝ}fj4����ܞֆㆧ����:���v���~�Vx =q)`G��B'���>9�`� Gx��������o�Jwu����x\Fk+������br��������1�������o]r���8��*�3��oӰ(~&'��Yf��α�H������H�PY��<���[���Ղ�lҴ-������DH?��{_-�R���,����@->��Ѿ�cAv��Y2����#����H���������Gy��S!)37̕�����K�Sr��=|�<�7���^����P��+��Ѻyr�A����GyQ��G� �l��j0���UF�0�Ƭ9�v��?��Ѱ{�i����c    5�6��hM�5S���99C#�����Ӂ8Li=:�NƠ��$}���ٹĿ'�
�����3C�py�Y��v��B:N_�)h���Bf��),�썧��H�-Ԃ�p��ºy����@4ˌ�g
�Dc�'���VC���jk,43hf穙u��'��/�D��m��w��q���AR��q�����q����~U����Itn���V_�[��u-^�~���U3N���������ſ0nJt��j�'����lge��쫛l�=�JKΘ�f|��vO�ӿ����&�jD|��6Vg��a{�ݰ3{�<ţZ��G{T�e����n�*9Ɵ�2>y�&z��z�MM��F�V�����:-��x6�0�Vgx�;`�ޜ�v�/~���G��<��k��0c�_n�ʕꤐ�@��$D0�iMlR�Q�|����OMSO�<5xj����S��v&�	�<5xjƟ��S���\�<5xj����S��O�<5xj����S���Ή�~dO�<�K�xj��.�S�̆s�w��dR���|0��
:�NH���H%9q2X�H�$�Adw�S��Fɒ�"�\���S��O�<5xjg����S��va�	�<5xj���S��O�<5xj����S��O�<�W�Ԥ^4�b�<5XR��>u�S��v9��H�x���eڝ�j�U)h�L�UL�$��""�
,qT��W�	��9a���S��O�<5xjg����S��va�	�<5xj���S��O�<5xj����S��O�<5xj�x�G��`I�S����O�R<�)/ۙnY�W�������$'R%1	b��|�������-qI��Ozj�r�=1v����]���e��e�TO-�@�W���5��ƝN�N����Ŝ�t��)��ÜF��`hk�k��Ai�3{j�N��Q��N'����ӅR�E��/Qi�5����K��t��rb�=�<�7����U�/*���}�n���]��? �2��/���c��N��xvZ_����a'��ۻ��4w/Q0��bB���5��j�:� j�ޖ	)[bԂ	}0Z���eBi؟�fzVt�)\g`��S��z�=�H����d�9��~�ܙz��z�M�вm�;��C�>���t6��u˿���n����K�j&�GC�c�/�s����M>t��Ϳ[�Uo���������?�6��d�j�ɈV�~��(H<����N�y�Y�Z˛�0�Ԃc$%ҏC0�$������h	괦i�HT$$$$:�� � � � � � � � � � � � �>-$ZV���1 � ��( �>k|0$��i4u�K���N�k�h��w�n���h���#F���ׇ�u��;j�\~$�zn5�=�;�Ѽ2kv��&֍��L���v����T�c|Nd+b��
�@Y!\�O��*i���E쀍��3���0:����-1v����;`cl�}a�;`c�p;`#W�f��4���̰6v��د�'`lXf�̰6D6��2�M�Úa�������;`_t`l�});`ϚKk�I��NO�=�2(p'LhM���D:���T����)�Gy�S�Z�<5xj����S��v�	�<5xjƟ��S���\�<5xj����S��O�<5xj����S���Ή�~dO�<�K�xj��.�S�J>�f���5ܤ���u��K�Bǈ����ЏH��O��ꀅ	�q��)���YɄ��V��O�<5xj��੝~��O�څ�'xj���!W��O�<5xj����S��O�<5xj��^�S[PlSrx1��o�S�%O��{ �<���&��'��v�:�Lt���@&:�$�6&2b��J�1��I�G!�<5#8<�"<5xj����S��O�,�<5xj��.�?�S��O�<5xj����S��O�<5xj����S��O�����,)xj�����]�������t��E{ �Tvi� ��2�"]���,'���8m��qq�멱��K�r�����AS��M�45hjgA���AS��va�	�45hj���AS��M�45hj�Ԡ�AS��M�4����؍�%I945hj����}���M�r45ú�z#[���dԭ�k�Q�%Z����H`G��D��$L��vj+M�8l�O�<5xj����S;�O�<��O����SC� O�<5xj����S��O�<5xj����S{��s?���K
�ڥ� <5xj�⩹����ޠ:��i{8k�[��)�'R��H�Ј�%���x�SKyQRJqi�����f{b�&�i�&t���f�S��ȩ�Z΁���-2k8�;�f��gs+�9�9)��S��?�9�&���֤���q���g��@�΅�A�Nh-P'P'P��N�2_�Үk�����B'��:��P{�iyfo<ݗ�8_T���i�<O���� :eg_\O[��g��V��촾`'`���N���w?~�%.KL謘�z�yM&���/����7oĄ�#���3�Ո�X&����io�g�A����u��8�H�ڣ�D~����!Kƚ	��'ϝ	�ޮޔ	-�ֺ��l0��c9��Ng�	]��4���W���j2��C׿6���~��6̞�6@����>ey�E����ׇ�u�]��29zU?v9:eU��M��F��c����/�发gP�Q�k�ӚmLgS�cfXs��	}��"$.�� �Ć� "���y������F��4ֲ��v7���� ��`w�n����v7���� �`w�n ��<3xf��>�g����v7x�<�@3�f��`�aw�g�l�b3�a�aw<[&z��z�cw7�\��9�e��4X�%�����h�����.��&c��z�cz�z!I�$gĨ !�1F,�}����2L���&n�+I��50ي0�`��d���&L�� T0�`��d�0B�&L6�
0�`��d���&L6�l0�`��d���&�k�lK���d;�m�l�`�]t|����zw�[+/�钶�������kK^�yޞ�V��Y�k�޴+���۳:w�kKqm6lt�tZ�Uho\.�i�I���8"��D�_�D	��I��4�ל��Z��5�k� �A\��v<
��5�k� �A\���\��5�k� �A\��q��5�k� �A\���Ή�~dq��ĵ��k�.V\��T}`�*�FK��h^��
FX)C'tDd(q��$`���0��޻CՍ4i����������Mq-�#��k��2~Eqmq�Y�9o��4�?�[��Qj�v��^��5�LC[�^Kw�J��Y\�:�R�:��������.C-"Q��n�]1?�W3/�Pҽ7�ʉ��(����x��9_���j�<Oy���?@�2��/c��P��x�Z_88��q(��ۻ���%
HtV�h�ؼ&$Z�\�@-�[B�eň��� �{B�Ո8�ը��yӓ�ܯi�u�����٬Q��kBN�Xg�W�X?1��+�O�#�y]������U�k
��f�Z��y��E��C�,k�f��<w^�x�xS^�lD[��;��Ы�弯;�c.<&,����$zw���h/�<�Y�ս�W��rGT��� h��ԅi�!"� "��)��񅒜�(�D{Z��^hhhh��������������������`i������.a.ڻ0����f��Ӯ3�M+M�:Ղ
Ek'	�"dD:� T��R�X'��x�)Zb�Z��v�@{@{@{E�=�=�=�=�=�=�=�=�=�=�=��k�=�=�=�=��s(g�,�}� ���h�F�^�N�C14z�����?0&I�D.�D!O�qY+Dq�=��o�-Ya�ċ��x�4^$}�qm�{��^$�I�%�Ë��$�Ë��"i�H��^$�Io��x�4r��p���h/�Ƌ��"����"i��P�"i؆x��KlC���1�`�E�x��(n職��H��_$��i��O�֔Ҽ]    �7'5p�R��ƴ��4�ԗ$M��A���D�?%ND<P!��^$m�����Bo��V��q��5�k� �����q�څ)�k� �!W��q��5�k� �A\��q��5�k�^S\[Rle ��6�5hS�.� �A\�dq�֛�y}^m+ݩw+N���֒Ъ�H?�""�N���.�y���Z��5�k� �A\��v<
��5�k� �A\���\��5�k� �A\��q��5�k� �A\���Ή�~dq��ĵ��k�.W\��k�5��4�F�1���݂04��a�&qB$��9�s��5�����[����[�kE�k� �A\��q��Y�(�k� �]���q�r�k� �A\��q��5�k� �A\��q�5ŵ�*l,��q�ĵO�,���4`��W��ώ��k�h��w�n������g�u�_��-�-�ع�l�F�R��m�=�;L���֨8���v<jνfA�I�(":P�H�(�Bj0儠lo���Y�w��d���&L6�l0��P�d�����L6�l0ِ+�d���&L6�l0�`��d���&L6�l0��9�܏,`������va= �&��1٪]�;�f�?�u\�S��+���T�X9"(sDR���T?L,�	"'wL�4bS���4J�d+�d���&L6�l0��P�d�����L6�l0ِ+�d���&L6�l0�`��d���&L6�l�h��Sl.L6�l�`�}���D?X\Ks>��|ǋkx�覸��fj�^�_�7;�ްR0I�Sb��DqH|�;�ا�W:�.O\cR@\+B\��q��5�k�΂GA\��q��5�kא+@\��q��5�k� �A\��q��5�k��9�܏, ��@���va= q���k�^Y�ewb��r�4刲���<�$���H���?Q�&��*��1��M�5jK�q�ĵ"�5�k� �A\��q�,x�5�k�.HA\��q��5�k� �A\��q��5�k� �A\�����ڒbSE!�A\�6q�S� �zf�]x�6y����lU.%m�G�ɴ=R�q��l@�P����H���MtLl�T9�x�lN�ݡ0�`��d���&L�3T0�`��d�0B�&L6�
0�`��d���&L6�l0�`��d���&L�wN<�#�l7�`�]X�d���yL�v�:��A�����TK��� �a�N|�%��G$�QL�������z�d�K?@q�,L�"L6�l0�`��d����, L6�l0�.�P�d����L6�l0�`��d���&L6�l0�`��d����&����d����L�O�0���d��j��&۳L�y�]n����ѽ�p���T�0q�H)��B!}��
eD9&�T
{��d���&L6�l0��P�d�����L6�l0ِ+�d���&L6�l0�`��d���&L6�l0��9�܏,`������va= �&��1ٺ�i�ç���:�~�l��s�ӡ5$��%2�qAh�0�e��0�t�d37\����a0ي0�`��d���&L�� T0�`��d�0B�&L6�
0�`��d���&L6�l0�`��d���&�k�lK�̈́���L�O�l����������x���hlc�/����ڒ�z��'�U=q.⚾���x�j�-�=�;ĵ�����y}4iu�=�Bb�I�fQ&D�ڀ0e��LT,��5�ĵ"�5�k� �A\��q�,x�5�k�.HA\��q��5�k� �A\��q��5�k� �A\��q�������)�k�� �]���kW��s�!�T��Z�lā�>�|�YB|��'�+Y����tqM:���6/7�c|0�O�5�{�]6[�Z�GN�rT|Uqmq�Y�9o��4�?�[��Qj�R�*���F��`hk�k��Ai�3�k�P�V��P'�000ԅb�E$�ѭ��"��j�J���P91��Z���@��!�R�at�B���)oq��(Tfp��}�ul|�j5��P���:?��y{��Z�D��
��ׄD�����%{CHDՍ4%� �>�Fđ�h�F=�Λ�t�~MK�k崕g��f��\^rZ�:c��N�����]�~�!���҈�?����2�6XS���4�Тu�s4-ʯx��d�Xs 7����:�������e#�Zwޙ�^},�}��s�1a��υ'ѻcְ�D{���ho����:a�nY��J�7/D*�H�D*�\*���L�A�h���iL�8�eJ@{@{@{E�=�=�=�=�=�=�=�=�=�=�=��k�=�=�=�=��s(g�,�}� ���
ho25��x��+�T�!������)'�r�����OcL�HE��!7��E{�F��A�S�4�K�G���6{���eo�e~�EM�,)�!��}���B�� v�jɩlVeS*E+����=y@=@��TE@�ZPPPP��A���à�\���%8��~PPPPPP�"��jc:?nz9��>���@���,��6oW^_��<:j�yz��{=E��l��W'�0�zu]T��A6*��}����W<{.{2y9�&ܚ�^x�e��mr��叀g�ȧB�UZ��n�ݐMݱ^�(�G!Ood5qH�X�Dk���A���.	��t�J�>��B9
�(���B9
�(��P�B9
��(��P�B9
�(��P^D���(��B���#��0ZQ�A�+�!�7\��o(�����$�!���g��z��z LL�b�P_ͭ�vk�F�%;�z�l�7�jg�%�
"U,H M�TK�g�L�/'#�tL�&&&&tBk�	�	�	�	�	�	�	�	�	�	�	�	}Z&��i�����@$��>u|,:�m�v�:qW���Q;q�/?�a�}睸.����;�wF����fv��6�b�BC�8e�2��OML"�$ca쇾ܥF����TjT5555:��@�@�@�@�@�@�@�@�@�@�@�@�>-5ZV��{t@��,@�>w��}jT�|���Ѵ�0�f:O�ʼ`�/t���X��H�(���a��c�y�]j�n�*q�ԠFEP#P#P#P�Z��������������R�eňR�?jfj��{ ���Q�J����e51��������	��6�"哀�����e�O�-i�sOR�Ao�O��-7�;�ޢF�9������(=HWL&=�VG�a�WfÑ̃b���s�Q�ɟL�Ƣ�;��fu8���z���>35�k�~w\nOk�q��^��Y���h��H\?u	�<�������~���z��t0f��<������q��t������t<.��pH[��b1�������?￘�}_�zzշ�.���{�q���ַiX?�Y�,3�{�XN�x���|MN�n�,��1�ݷ�폫�9ؤi[^%���}��~���8�ZR����Y�qu_�Z|b�}�ǂ��G+���dD���G�s����.0�G���s�������֓��4���s%&���#�R|��{㣜`j-��'&�s357���-|�n��q�����Q^�����:H>[|��9��x��3��1k΄�=��;v4�e�i��%g�Xͣ�iE6Z�r�TDo0N��H�}gl�t �FZ�N��1�'3I_?c�gv.��ɹ<3xf�̐(\�g�u��DA�G���ӗf
����B�e
�3{�)�!�w�n?SX7ϓ�����f����L�h���u`|�y�j(��Ym��f��<5�����#��E��տM���?�z^:HJ�?�ҿ��?����߯���{<�����_�0%�������~�������׿_U������_7%��s5�t�{�
L��2ٌu��M��Za��%gLn3��ɖ�b�,L�6�V#�cM���:+������+�)�z-?ڣ�/�=uw(v�U�1��G���s7��o�oj��7b��d�=�iY7ǳ�����zw�[+/�钶�������kK^�yޞ�V��i�ڑ�����7T�    ��m'[\{8�����ĵv��e�6�SS��VD��>cB�$�aH�bc�a���M�#�i���� ��5�k�Q� �A\��q��5�k� �A\��q��5�k� �A\��qm�C\��q�ĵ�f��q�ڥhS��q��5�kG�kU�h�������Jc"h�gL'�F�g��L@;�Y�}��$�aD�qM�宫�i! �!�A\��q��5�kg�� �A\��va@
��5�k� �A\��q��5�k� �A\��q�ĵW�[��d� �A�����{ �ĵK�ڬ�:�vʵ&�4��y�Y�'�̓�Hh�\$����8Q>���d��[+�[��o��5xk���G�[��o��x�5xk�֐+�[��o��5xk����[��o��5xk���9�܏,������va= o���zkuO�횙ab4q���?(���A$	}f�T��Č����2'��v����u�
ˤ��V��q��5�k� �����q�څ)�k� �!W��q��5�k� �A\��q��5�k�^S\[Rl���@\��m
��g��k�.V\k��@�v�ՙ�vZ���ւ����x�PK�PK����26drW\K4Y2V9�k� �A\��vz[A\�i@�k�Q� �A\��v^@
��5�k��/[���6�ĵϝ(@\;1S��q�ځ<��5�k� ��������A\;�m�kЦ �]t@\��v���p0�S>����7{l�
�N�y�aNE	��X���>�ޛB�5--��"�5xk����[��o�,p�5xk��.�G�[��o��5xk����[��o��5xk����[��o�������)xk����]��6�L��}=K㴦tޤ5��Ł�&~�-���ę�_Q'V�齼���J�r.ĵ"�5�k� �A\��q�,x�5�k�.HA\��q��5�k� �A\��q��5�k� �A\�����ڒb3��@\��m
�����k�.Y\��^�8%���g����1��^�)ԏ��$26��.�l��'�Y�!�!�A\��q��5�kg�� �A\��va@
��5�k� �A\��q��5�k� �A\��q��5�k�x�G�n�MA\����q�Rŵ�zeØ��t��+�z��Z����O��3"%�ĺX_�0��;.쎸&ō�%ᄥ�Z��5�k� �A\��v<
��5�k� �A\���\��5�k� �A\��q��5�k� �A\{Eq�b3G!�A\�6q�S���k5?��{ac�<����ڼ�/Z��ݷ��Ŷ���Yl���ׇ�u�d=v&&�L�V�'�l��mi�U=5�39���T�m�]�U
&�1�D�@�M�վ�&�0��l+�M
�`�a��d���&L6�lg�`��d��va�
&L6�l�`��d���&L6�l0�`��d���&L6�l�x�G0�n�Q�d�������l��k]>U&bb�C5h0�`�3a1�刌F\��tM�	����]�M�p�ޝV*���&L6�l0�`��d;@�&L�#T0�`��dC� �&L6�l0�`��d���&L6�l0�`���ɶ��R2�l0��Q�d��= �&ۧ2ٴWo��`ܟ�VS�$-He��H1�t2!�G�~H���9&����d+�d���&L6�l0��P�d�����L6�l0ِ+�d���&L6�l0�`��d���&L6�l0��9�܏,`������va= �&��1�Z3�m��S�ZI�מ�Z%"HlD�t 2�p?]�B�X*X�c�)z#M�Z���&ۼ6��Q�9�w���|�;�y��2ٲ?r�ɖs�⫚l���Y�%��Y�M��8z�R��S����M����I�������l��K�i)�K��Z�R�R�Rʥ�(_D�Ү��"���b)��K��P{Xjyfo<�g�x����-,�n��2����R����ֱ�ق��`<L�/`
`�������ݏ_��J�(��YQ��b��h5s^ �Ώ�^N��+F
���ߘ�Fđ�h�h=o���#��ߦ�I����9=Ǣ�i�a�:맆�s*֯�浩0ZQ�A�+�!�7윂��1���(��yh��%!́�l�����o�o
���Q���5~��)*��̅�Â��O�wǬa���GϳО�4M�5dv��ewfx�.v�|N|�S"CII�	I"K�L�*�9Ņ{�uK@{@{@{E�=�=�=�=�=�=�=�=�=�=�=��k�=�=�=�=���(g�,�}� ���h�)��ߪ�J�g�=:2r�ll�22>��N��6&���<`Q���6��7��V�T1�4��������a�y�?����<��������c�y�?���!B�2�g���<�����'`�y��p��<tC�?����uIP������mzspA��ܙLGb.�f|��ͩsJ�@}�ݯ��� b+��5/�$=���e ��a�Bv�o
X:���,����a�5��B�����I�u�$���Jk.i�s���<`��!8b�!�C8�p��9<"��s��|Y"�C8�p��_� ��m�8��;Q�sxb� ��!��y�C8�p��9�s��!�C8��c���?�C8�p���s8�n{<	��=��hT�L�JE"g"�6�E2!��6��-�;����i`mWp�p�^g\8"�C8�p���9�s��!���0�!�C8�p��9�s��!�C8�p��9ܘ.��9�s��!�Co�p/���9�:�a�Uul_fڸ���Bb��4��'����8?�$>�X����J����9�θ6pD8�p��9,�9�s��!�C8��a8�C8�p��9�s��!�C8�p��9�s�1]�9�s��!�C8�0ޮ�^x�9�s�5��֔Rנ|L�5;��k5���CG��H�>��V�1m��,�FG,1b�9�F��P�8�E8�p�3��!�C8�p�p��9�s���f��!�C8�p��9�s��!�C8�p�nLp��9�s��!��k8��p�~!�p��厡�Ψ�j�IA�����D+�	q~#� �L(-x�s�������C8���E8�p��9�s���`
�!���e�p��9�sx~��÷��~�D�቙�C8�p�	p��9�s��!�C8�p������p��9�s���l2M/b�tK�m�מ�Z� u���1��8�(s'h�:�j�9�7ҕ7��9�Vp��#��9�s��!��#�)8�pϗ%�9�s����ep�&�s��8�'f
p��9<�'�9�s��!�C8�p��9�sx>��~��9�s���8�s9�n�2�
ֱU��Ƹs.\�bB����F��M�P������(S��H����9�θ6pD8�p��9,�9�s��!�C8��a8�C8�p��9�s��!�C8�p��9�s�1]�9�s��!�C8�0ޮ�^x�9�s���Cӑ��z�4>��T�|E}jE���D�8 ~z�$L|#�U���R����9�θ6pD8�p��9,�9�s��!�C8��a8�C8�p��9�s��!�C8�p��9�s�1]�9�s��!�C8�0ޮ�^x�9�s�5��6k�F�j�HNk�I��lP�V3C��	�*�$� 1����Y_&v�9�� �ZK�9�Vp��#��9�s��!��#�)8�pϗ%�9�s����ep�&�s��8�'f
p��9<�'�9�s��!�C8�p��9�sx>��~��9�s���8��ck�Qc�f��jo���Q$�#I$DJ�����j?b܏��PђMc����9�θ6pD8�p��9,�9�s��!�C8��a8�C8�p��9�s��!�C8�p��9�s�1]�9�s��!�C8�0ޮ�^x�9�s�u���[e�u�B)>ҽ��6�r��'R    ۄ8�r�lL�(a<�9t�(�E(�P�3��!�C(�P�P�B9�r���f��!�C(�P�B9�r��!�C(�P�nLP�B9�r��!��k(��P�~�p���j�[�[�v��[��*���D1�6t�� $NeT�5{��]uZK+�t��T�j�A�;l��#���ޖs���S�Ü_�9\��Z-9�ͪlJ�h�ѣ���.���s��h2mMz-�7(m>�^�s�x.L��xBk� ����n7�,M��1})�HԊX�9Gl_��T�"4���lUVk�Gji�ƾ�}%l��	ll�4��w��ʕ+��޵��_HI�qU�ƫ�W����PC�� Q�� v��w��3��v#�V�?��� q3<���.������������d#�ۇ�q�<��,"��E�ɟ_�~�e9ݩ� �;�|o��3��B�G�02����{Z|V��UD������Z���-���#���t�Q����i?�}kv����;�.yR�s����
��b&mG�tmP�Új*9v�/mʞ�����O�U�*�}b{�)�ס�|܁��o�]�X��v�\�罞�L��������²toS��6����M9�����#Uד��������~��:�YoR�W�6�{��_��yś�z�̃����q���ϛ#�=ۣ={���(��c6���m���[_o�Q�~n'��U�=o7䰩�U��T�=[�����.�_[#�L�+o��i�����I��d��Gge�`�,���_���ׯ���c�7A�+������������-��fk�l��}D��U�o���O�%O���}��Yv�=�n�렀~_�����]�<�߿�$�����t&Ec��^��N��E�
�fY�J��J�q�&Q:�担[铒�^V#E���������������������������������> �'�'�'��Ab)"zb"��������џ|D�R͉=�=;����L�n%�q.�<�D��Y�:JC�T��"�\V<��U�9RUyo��"z"z"���􌈞���������������������������������c)"zb"��������џzDߩϺ�I��.�t0��N4�t*Q���l�c�L�\$B���ߒ_؅���F��.�_�N{����|Y�vD_�#ύ��+�#�=��'�r;��|o�Q���m�Y#����Šߝ��g�IslƍGo��[�}��!�<{�n�����K!�/Y��W?� ��ˇ�$�_g������o����e?}���Ve��B���r��X-&�~�ǟ����7�a����?}y�_V��ӷ�����?��/�]O��P���E���sh(�㪈��1C�e��qd	�oF�˷O����!]��byu�����������u����u����M%�����O��b���ȗ����۷���m���CV_:=�4��	+����'�7�����j$��e���Y}���Wf�S��C�Ҭ�����K���\q/��ϣGRf9�T�|:��W�}�~S$�lV�0���O%{��o��S��c����=þ/p��9_�~[��GwJ� �=����{P/���F��C�e/�`� ��Fa���v�`��S(-�vv
��썧��N�����vw
��9�Na_m��N�9���O��'�O�}0��xc0����4�ݯ��|�_tU|��鲄����>��ˇ�*�������4��?������<�|��-mU�O�ֹw�W��/��j�����?�������b[��>��b9����I�a�;:�^�G���,NT��{���lX�ϱ��5!���~̂O�l������Ka��l$�jn''(�;��=�Ǳr�=����������a{�ag>��=���ZݔV������MV:�몏���uᯢ�p�܁��o�o�^����ܴ&W��o��ç���L���-���~O:l����@G�G-�����m��鰻'��;B2�(v��Ke�����e�~5ܴb5m�9����~;����@�5����ן�{3�ɘ�H|����;��g�������d��VF��ՠ�#��ubx���B1\��#]�f�Ruk�J����X�I��P%J��7"��]�"7�����F�1 ��g%׆@#�È� 1�F#�È��21�F#�Èa�0b1�F#�È��1�F#��G$r���Uw�1�F#�Èa�0bx-�/T�?������H�z�]�*q��Kd�L�B%m�"O�(��0�t��Ű[9,c���1 ��g%׆@#�È� 1�F#�È��21�F#�Èa�0b1�F#�È��1�F#��G$r���Uw�1�F#�Èa�0b�N:Qg:���`ގ�~6�d�/|�a�����0�*
s�S'�$�f��R!��0b����P �a�0b1 �Èa�0b1�]�#�Èa�0b1�F#�Èa�0b1�5] �Èa�0b��D1�a����#�Èa�0b1�Fߊ��tL���UW�Z]���B�4�-o�BeE�^� q�x+�����e�;����b1|Vrm( �0b1�Èa�0b1��.�Èa�0b1�F#�Èa�0b1�ޚ.Èa�0b1|D"���^uw�Èa�0b1�F#���p��fkzY��H���Jᄑº��2U\䡋|FN��Z%�D��V�1 ��g%׆@#�È� 1�F#�È��21�F#�Èa�0b1�F#�È��1�F#��G$r���Uw�1�F#�Èa�0bx-����5�멋������e����I���e&TV�a*R&Q���x�G�=1,?�y��7�{��b1|Vrm( �0b1�Èa�0b1��.�Èa�0b1�F#�Èa�0b1�ޚ.Èa�0b1|D"���^uw�Èa�0b1�F#�7b�22�~wtժ��CS�N*r����05�"T&ab�(���޺XXY.�e��E�a��Yɵ� Èa�0b8@#�Èa�0bx�G#�Èa�0b1�F#�Èa�0bxk�@#�Èa���b��z���G#�Èa�0b1�^�ᱜ�]�ϼq��(�MZRU��i$"&F-B��E�LlB�ba��qf�����FVz����̌.Z�Fw���G�3������y���B�Q���E��奚�V]��֢��A�V~���Ϳ$�Mg���P�Kӝ4�h�$��Q�0���$���3F���������W[�x�mUn������������jgCx���x�9*���ZT�/��o���3(������g
oj� �� `�<��,   pz  ����o�,�;U��'��o�c��Z�H:�� Ff���t^���V��H��9��]�v����qp<9��;j�ۢ1�ǽ�o�N1�z^U�'�z��?�p~~1��#j�6��aM5��'"ODÛ���hx���Ss��Ji���o��5�8�p�;�vw�M���A�Q�Η�����B��O2>]��\xP2�f㦜���G㑪�I�̯ۗ��Ͳx��2�y4�_��;����K����z ���s;i7�j�y�!�Mm�Z/��G�������r=���YEUm���/��U����;�0�/�ۇ%�����%�7�����%��d�]L�T9�G환�J���T�n�W��ЋD��\�b�/l슇�Y�*"�c��+��M��J����頞�^4���M�h�ES/�z}쬞�^4��Wn�ԋ������Ш��^4���ױ�	4���bzi���M�~6LS���z�R��^?���M�h�ES/�z��넛zM��vn��N�187W���;��L�"N\��$��0OTGY��4�'���k���͈a�0
 @#�Èa�0b��b
1�>]	�F#�ç�[@���1�so���) �È�'�	�a�0b1�F#�Èa��)y���G#�Èa�0b1�^���?��m3�麻l��@U��R    {�B�]*#�0I"j��$���x(����ˏs�È᳒kC �Èa�p�F#�Èa��v�F#�Èa�0b1�F#�Èa���t�F#�È�#9�������F#�Èa�0b1|'�GQO��a�7�Lu;�Jj��B��
U��0�Q�TD�ʹ�M!��a/<b8@#��J��F#��b1�F#���e8b1�F#�Èa�0b1�F#��[�b1�F#��H��֫�?b1�F#�Èa���u�K��t����6�7ո�&���i��P�];�p����k��HY,��Ն�U��c��b1|Vrm( �0b1�Èa�0b1��.�Èa�0b1�F#�Èa�0b1�ޚ.Èa�0b1|D"���^uw�Èa�0b1�F#�7b8�W��t0Sͮ�f����m�|.�Pg�U�/B/s.r��<�ll|�6�?N!��0b����P �a�0b1 �Èa�0b1�]�#�Èa�0b1�F#�Èa�0b1�5] �Èa�0b��D1�a����#�Èa�0b1�Fߊa=�w��r���e�OZ�HFZ�B�$T�0a���r'��p�z~Wǲj���"��0b����P �a�0b1 �Èa�0b1�]�#�Èa�0b1�F#�Èa�0b1�5] �Èa�0b��D1�a����#�Èa�0b1�F߉�Q4�w.�þ�G�V�V1��y��7*ri��wa�V{!�<Y��ڢ\+!]�È᳒kC �Èa�p�F#�Èa��v�F#�Èa�0b1�F#�Èa���t�F#�È�#9�������F#�Èa�0b1����:�89��@��oZ�U�_D^Q�.Z�PY���pyh��ǅP6�Ӎ�ѧ�/���.��\a�R�� 1�>+�6 b1�F�a�0b1�Fo��a�0b1�F#�Èa�0b1�FoM�a�0b1�>"�CX��;��a�0b1�F#��1����E<\��0�Y��J�x��.�b�7�B_HJg�J�Β\���H����f�0b �Èa�0b1|@1�F��@#�È���- ��f����7
��g�Èa����0b1�F#�Èa�0b������#�Èa�0b1�Fߊ�֨%��h�}����^�-7�J�6̲ą��"L"�"K�_���e=���U*r�� 1�>+�6 b1�F�a�0b1�Fo��a�0b1�F#�Èa�0b1�FoM�a�0b1�>"�CX��;��a�0b1�F#��wb�|�\4�����T�aE���Q����8T��a��6�R&v�t��E�^��#��0b����P �a�0b1 �Èa�0b1�]�#�Èa�0b1�F#�Èa�0b1�5] �Èa�0b��D1�a����#�Èa�0b1�F���ю����ΰ=�L����]ISe�8��Py��$s64j���B�8{(��jv5Bk���̌.Z�Fw���G�3������y���B�Q���E��奚�V]��֢��A�V~���Ϳ$�Mg���P�Kӝ4�h�$��Q�0���$���3F���������W[�x�mUn������������jgCx���x�9*���ZT�/��o���3(������g
oj� �� `�<��,   pz  ����o�,�;U��'��o�c��Z�H:�� Ff���t^���V��H��9��]�v����qp<9��;j�ۢ1�ǽ�o�N1�z^U�'�z��?�p~~1��#j�6��aM5��'"ODÛ���hx���Ss��Ji���o��5�8�p�;�vw�M���A�Q�Η�����B��O2>]��\xP2�f㦜���G㑪�I�̯ۗ��Ͳx��2�y4�_��;����K����z ���s;i7�j�y�!�Mm�Z/��G�������r=���YEUm���/��U����;�0�/�ۇ%�����%�7�����%��}Mu:����؈���e��O+��Vȴ��HC�pq�:�C�r/��k'v�z���F���^M�h�uVrm�O�4���M�h�ES/�z���cg�4���׽r��^�@��^P/���F�4���M���O����KS/�0M�h���a�z��8�ԋ�R4���� M�h�ES/�z�ԋ�^���k%��y��j8���U�r2�W���S��8�Z$y�b����2U�.����a/�D�a��Yɵ� Èa�0b8@#�Èa�0bx�G#�Èa�0b1�F#�Èa�0bxk�@#�Èa���b��z���G#�Èa�0b1�^�a=�����R���U,G��i%1��\����(TE.B�z���{��=�1�����F&R�#��0b����P �a�0b1 �Èa�0b1�]�#�Èa�0b1�F#�Èa�0b1�5] �Èa�0b��D1�a����#�Èa�0b1�F�Űi���r8�^��A�u��*�p�p�8��)B�I��7a2U��y���U�a'�1�� 1�>+�6 b1�F�a�0b1�Fo��a�0b1�F#�Èa�0b1�FoM�a�0b1�>"�CX��;��a�0b1�F#��k1\��"�����^4�GW�T\.�"JU�Fy*�0a���0R¦�qI���bX�İ����� 0>+�6 `0�a�0`0o��a�0`0�Àa�0`0oM�a�0`0>��X��;��a�0`0��w`Xy3��Y�=���dܭ(W2��0^�E���BW,|��,�]!S��^�ao�F�a��Yɵ� Èa�0b8@#�Èa�0bx�G#�Èa�0b1�F#�Èa�0bxk�@#�Èa���b��z���G#�Èa�0b1�����������������J��"6Y�������<��¸ha�弬�1,�r����{��7#��(� 1�F#�È��)�0b�t% b1�F��n1�6���ϽQ@?s��F#���' �Èa�0b1�F#�ç�Uw�1�F#�Èa�0b�N����ede���K���+Z
�M�2Z�^�y��L����r%��.�F9��b1|Vrm( �0b1�Èa�0b1��.�Èa�0b1�F#�Èa�0b1�ޚ.Èa�0b1|D"���^uw�Èa�0b1�F#��b�7hu��j�Τv5n.d_T��Se�r{�	U�0��ӅO���4�C1l>KW�ʪ8F�a��Yɵ� Èa�0b8@#�Èa�0bx�G#�Èa�0b1�F#�Èa�0bxk�@#�Èa���b��z���G#�Èa�0b1�ވ�F�֊eo�k��l�m訒H������F��'>tE!�\K�MEf�V�i!��0b����P �a�0b1 �Èa�0b1�]�#�Èa�0b1�F#�Èa�0b1�5] �Èa�0b��D1�a����#�Èa�0b1�F���&�é�ӫh0kי��BJ_X���\���bz���_�.��K;�P���V#'#!�b1|Vrm( �0b1�Èa�0b1��.�Èa�0b1�F#�Èa�0b1�ޚ.Èa�0b1|D"���^uw�Èa�0b1�F#�����v��nƭZ|5�����e�����ȇ*O�0��s�\����1���1 ��g%׆@#�È� 1�F#�È��21�F#�Èa�0b1�F#�È��1�F#��G$r���Uw�1�F#�Èa�0bx-��ӱ�m՗}�W�ڬ6�]U�"R��I�D*B�#�\Ea*q��_�,{(��rg\u���E�a��Yɵ� Èa�0b8@#�Èa�0bx�G#�Èa�0b1�F#�Èa�0bxk�@#�Èa���b��z���G#�Èa�0b1��þ7hN�;��h���b]�Ĉ�.�,T�0�Sކ*   "�^�H�=b�H��b1|Vrm( �0b1�Èa�0b1��.�Èa�0b1�F#�Èa�0b1�ޚ.Èa�0b1|D"���^uw�Èa�0b1�F#��bxVk���6����0�����d�gy��V�>TRG�/\�Xj��Og�İ�����Kg�b1|Vrm( �0b1�Èa�0b1��.�Èa�0b1�F#�Èa�0b1�ޚ.Èa�0b1|D"���^uw�Èa�0b1�F#���p${é�k�����5+�����MB�&2L��a�D��LdƖ��XH!��0b����P �a�0b1 �Èa�0b1�]�#�Èa�0b1�F#�Èa�0b1�5] �Èa�0b��D1�a����#�Èa�0b1�F߈��W�#����5o��Ӌ�P�"�yfB�FQ�p��V�ȹ�B��bX���Ϊ�s�È᳒kC �Èa�p�F#�Èa��v�F#�Èa�0b1�F#�Èa���t�F#�È�#9�������F#�Èa�0b1|'�Ms�/�ͨ��74+*v�U�"�cB��Y�8��$�qfu�P�1��DÈa@�F#�Èa���b1|� 1�F#�Oo��~��b���( ���S@#��O�Èa�0b1�F#�È�S��F#�Èa�0b1��f&��c?���5y!��W�4ʥ�L�P-�S��P�B�����C1lV�B�J�È᳒kC �Èa�p�F#�Èa��v�F#�Èa�0b1�F#�Èa���t�F#�È�#9�������F#�Èa�0b1|'��㋁�5F�Q�6oկz�"R֨$	�S"TJ��9����Y�m�3'��a-�E�a��Yɵ� Èa�0b8@#�Èa�0bx�G#�Èa�0b1�F#�Èa�0bxk�@#�Èa���b��z���G#�Èa�0b1�^����;�����|c���Z�VI�6�H|�./6T���D�$TY�rkld�z �u�YʪPV�È᳒kC �Èa�p�F#�Èa��v�F#�Èa�0b1�F#�Èa���t�F#�È�#9�������F#�Èa�0b1|'�gӮ�f�o^��q�';�ܢpy&�&�J�E�&�4���'�/�bX�b8@#��J��F#��b1�F#���e8b1�F#�Èa�0b1�F#��[�b1�F#��H��֫�?b1�F#�Èa�������c[�6���t�b\����¸HU�|��4^�R���q�%b�T��&����̌.Z�Fw���G�3������y���B�Q���E��奚�V]��֢��A�V~���Ϳ$�Mg���P�Kӝ4�h�$��Q�0���$���3F���������W[�x�mUn������������jgCx���x�9*���ZT�/��o���3(������g
oj� �� `�<��,   pz  ����o�,�;U��'��o�c��Z�H:�� Ff���t^���V��H��9��]�v����qp<9��;j�ۢ1�ǽ�o�N1�z^U�'�z��?�p~~1��#j�6��aM5��'"ODÛ���hx���Ss��Ji���o��5�8�p�;�vw�M���A�Q�Η�����B��O2>]��\xP2�f㦜���G㑪�I�̯ۗ��Ͳx��2�y4�_��;����K����z ���s;i7�j�y�!�Mm�Z/��G�������r=���YEUm���/��U����;�0�/�ۇ%�����%�7�����%�}G\��es�i�ƴ�z3qyQI��E�Fa*2Tz��ޫ$�DT�8�.ˊ���U�]��"��M�:��鼙�ŵ�Q�B�L_��A��������>/��LhS���'�1O$6}l���ܼ�o��n�M���_�k��Q��7��?�OQ�3�}�uϹ�'/���X�#7g����9��c�2�S�B�ժ��{;	�� m��]u3��H�,�Σ���bnf��m|�v�K��gJɦ��Ĺ��]=�b�h�5��P�F�s��ʂi�1y������gM�ϜY�,���ӕ%_~�w+����G�z��קX�i7��:���y0��}:T6^������<�rw.�yz^{K���b�}��t�X��,/mw}ٛ�l�y�>S��|�c���}��G�=��o_���?�_�d�x�%d{r��~ǞM�/9���{�����/.烦�_���;��[yg�oq�w���u��x�I����ּ����ۧt ��g����[r�ioV�[@W��N55�]���j6�����XUb�+s�V�P9����06oT��"���HU�^�U���'�FgҰ��)�Q�a{��5����i�O����|��P�;�~v�9 ���9Ng��I��v��ﺣ˾���8�����3���Ħ�^��n��4��w@����Ӿ��G�9�? �}5���-�/l_��f�-�ߥ��_���E�9MPK�����6·F�Zy�Eq�'�=����zoQ��D�����E�N�?k����l�ي�l��vj�����U�٤q��c1o֮\gt՘�Z������K�gf���k�Y�hf��n������N���^ff�'3�����[r�m��cdf�ǈ�h�G�g��;h�A����l������j��\��{c5��Kd��m��}|���oО�,/۬/�]�&yٛ��{i\�����_�?�,f�      -   d  x���[o�F��ͧ��
3�o�����6�m��"/!@ŦQ���j�D�N$K<���93g�r=П�<'��в-+�)[N�|[4Ͷ����Ӯ.{����r�[����6jl�v��Y���Q�˿�M�Z�jݯ_geS/�/M���i��{~�6���̿!�H�"�@> ��`�D�c�>�j��R{"��;�mtO��r��W�f����*WA4�ҫ�ͬU�Z�
#N :�}K��~�Ź֞��pH�w�/�V���bN�j���雬��esr�ހ%9G㔠�j�r-���y�e��\Ƕ���]��KS�;`��-��É�S��|̒�x�/���H�C�L�,��طM�m�i���×�c���R�H3�ΐ����n���Z�P��p��R���a�d���zZ�OT�2��A�[��-BG��-��믷��彞�m�:��<&!����ϻ�c��VxK��~P�I!��3�S$�ۭ��z55�Or��ȵ�jt5uZ=?���z7?���9�O�;��	�l��E���)R�ɭ`�l��jZ�U�$ ��ۮ���C� B����  ��o�c���hWm�6����cJ�X2G�HR�>Q�g��ٲ�Qp�*/f�{�<ls�%�G5�3�(�ߔ�w6�60�@�֧��%3_۪���8����ěY�Os��E���1�����X��,�S�k��KT0�`��$@bA�~o�,���A{�d���%(L'���&��}� �/���&XNQ�0�D��4L�P�}?�0��0���=�;�̲�k�Ʊb�#�L��8�%9�r�b],���:X��Y?���� �`}      e      x������ � �      ?     x�՗]o�6���_a�v���o�N2�	D��Q`0gɐņ����IK�:��X40�^�&<��f���W1Q_�1	�L�r�ǭ�]�v�/yX�P	ї�iӒ��ޗӲ�빾�4�`����?�����v���s�����].��z}q=W�f����_,n7���͇��B����fu�aƄ�	;�v���o���~�]�8V��?W������PdA[�!��.�"$�q3x<�0���s��|�|*=L1��$^I��{���q������\ ��L:�HX�jRX���ئ�%oK�L��-���mv����a�vn�V'��F��7P�Ǜ�����4T�Dя/妮qj�
�L�#�O�GP"������AyL`���LM�R햪�!c�.�Y��8�*�CJ¤�I�&�x�*�y��D�HE���<��yYE��rHS��dI�
:Pq�y�uR���������p4�f	���}��v�]��_�,��`�3:6]oj��My��%'��	ݸ��$;�Q��Dz��C�H��e��
tYE�>���fɺ��0sMQW,?�q.2�<Ǳ4]�������g�%>A�
���bꝌS�_��-H����˦�CuC��m�vN�"�D
�"�a�(��HbM��G\��*�� &��)W`'��$�9(�,k�Ǉ���S���A<�;V�@=
c(_��C2�r�U.�M]�h�o��NP��@�}��.�P�i0���e�Ӡ:h�c.:gCKb�16�d��z`�.s�v�[kZ�o�ևB�>���y�.�"�|�
����@QR5j��sk̓Xj�yea�:Q$=5����dB����d��o��/��B��<V*�۠�,%��[��j���E8��Mޔ��3}�)q��	jO���PEl��DG��D
�!�
���^���o�K�3��$���$�'�ؒlE�m�'�'	�ClI�	i��>ӄ��⍗)�)� !�����{�����^�      x      x������ � �      i   ~  x���K��0��u�+�/c���n�Y�lcc#_�-1P
��@�K�3)�4�^6]i�.��O������G�jnܹuS[6�������������D@z���3��tJ�Ï�V!I�|��������r�X����C[��g��]r��r9���ZHo4v5�/�BȘʘIA��w�kd\+��=Q�&υl��U��ƀ��[���n��~[�o��1�0)	���.U0 ��b�Ĳ�M�@-&N�_lWQ�A��+�r��b������Qf�<�Ҥ�Vt[���砿��mסih����� k�V����֗^�s�a����g��!�ѥ;�!��kϷ��q/�}�h�4ӽ�A��\>I�׎�_QY��%tr����'�i�$? E�ڼ      #   �  x�mW�rܺ|&>&���Q^�.%v�H�9/�J�$$1�:���ߧ��%�A����t��Vn����P�};������>&&OP��UU=,�<�i�-���
 S� ��A;!yUw��O�;�3FŃ6�a�&���_2C %�x�d�s���qn�~*L�PU��C�����K��9=��}|,�s�Iy���i�f���ؤq*�g�5�g�u�<��������T�X ��^��p�����9�΅�	NHヰp7�Ӽ��m���&D�ǅ�Ѧ�2?���v���3�9s�Kɝ�t(LLd����jk�������.��i�=�Mae���J*a�6J��nh)lL�RK��$�Q=ַi?�J?���%�P &l���+i���4<̗�K3�}�B4'���T@� >�1���R?-#���#�����k�ϯ�4P&�b��AN�W�i.נQ0��
D���媊]7��ut����e* L�
�}0����ݲ��l����n�#vK*pL��(-��`5N�0���>MSafRf�A2�W�b�6��x�0�W��T��s�9�+|yN��F�S`R<�Vރ�j��L��)b#�$	%�>��Q�o�2i3�K/"��4�.�����S��=\��Qn�_K;�}ʂ��0I�P�K��\THB����x��F&}F#I�r�`g�e��}��T����F+c8����}|��^����*T`��* �HBp<�����Y�bcd��׹pύ'��������u�*��ފ��'H��qXH�SĵF�P�}*H��]Ϻ�3��CF{��P-/N�}���Ş</��fl��-g�����H�L�0��t�3\4��6W7���I�7T��JNE�ؙ"�up�b:��S�맿?�Qae�876� ��*TS��؞b�tca�x6�5C1���|m�]��1�S�טm`L��'�S��q[��i���=��%�Q`���8e;֛���W�\5�iR �:(zZ����9|�\+�*ýUAsT�jB���tm��us2�96]ԇ"�q`�DA5G�
Z�	��?���q�n���>�$��M��J6H�I	��skm����.wu63MB�>W)<��p��涞 �����3MR��d���_~v��D����03Mz��G"�\sa����}l��L�S`�!Q8�C�j�ݩd55fHN87a�[��6������y#�<t��
#3j���5w5]��m��1C�;$��[����?��>Uʍ���(��K�M���i�BU f�t�5�x�V�����0C�;c}PJ�e���D*@�����X����6] �!8���A�YǍ5U�-������0�'yʀM	<T��l&��6�1W����Tq�3�YytC�Jsvۍ	���S�¬*|N�� ��j��_���U3�?v�Kq�����C/҅�Nhn��9U�6u�{�#R+ fm��( �q;��-M��f����7`f�;�#��3��.Nul�1��'|�	u�a��C�SQLg9�sn��eu�j�<o�?�����G[�\7���#i�(a=�V\�?T�\�7V�H;�ŸҕIW��g�)�6�H:���򀻠�v���|v;��9RM����5���nGά�Ĝ�^ō���ð9�fD��KC	���?�HH�#n7�=Q�qΣ�>P��pq�UJ�����ܜ{ƖD�*X�<9<h0|u�a<���w��\F�B���X�z.�0�8��)��~���n�[���c��;ih      .     x�řˊ�FF�3O�}pS���Ju�(��.B*	C$Ko����mǓ�{a\ ���N�K�?��+���Y{$h��닫2a�ç�~@���D���w>A�D�#N ��/)�;�Б��p�zz���x��=���̺N���4y��ӟ�`���΋�L:�hK3x)�.��˶�X�Ԍ�=�#AK��453��2A���\ו�x�K�����h�"7:753Sm�B�+Xm���D�Q(�T*l1���mE�,��q�kYtS32$6��u�M�P�^�@�^xu��j<[-F '`�umi���]�x4������0�M����r6Jfg<¨ͦʞ�`Lo�`�1<�.����7^mċ���Qn�ʹ�A[�(9��RKd���*,Q�2�� j��1���<l�vioj�S@-;Qș}����LG���81�u�mM#��D�Y��Lɱ�X&Er8i`{�3��$�ދ�F����a�ԺG:�?`��`z[}�$�9�y#���iM�w܉��UsS3^g�'����GVස�,]E%��}'P�����FzД��ۚ�و���ز���f,H��Ja����'�����pE�1>aBo�|���(�,ٸ4E�^�W3�`�ʑ4�(jj��傄��Y\S3s&�nf놱NMͰ��MG*Ȼ����ǥ�.�Z��nFa��X�z4S_C3fĢ_��`��
_�30�w`(c�||�������,^���'�}�fZ��U��7�0̢��& �&
��ijf۱
di*�^J���HD�(�ഷ5��Qȉʕ�M�$�՜���rM���P�Z����e$�'f����'�/@!nW₸������[����n[�m9��P�: N
K���v�
���u��
�"�a�X�������PF��$æ������&
9P�\�ʠzȻ���ۧ��V��f��1�NqJ�
|�����MP����z���-����)J��P��g�
�\z�＄���eL<p�K�1�zz#�ZVA�cg������φ��׭�I8U]F��쭥//�|��OX^0��������tz>���������w;�	ݬ��j�([� 	�N��:��o�����V�Hc��Tg9�׷�� ��f��'�),2,�BlQ�*�@�����'b�o.�>�b�H
��{��7:�֣@g)X4�q^���n���ӛ����sZ����F$Q�㵓������%����d � �c;��1(=�C�^'��n�I���py||����      d      x������ � �      [      x������ � �      Z      x������ � �      G      x������ � �      �   �   x���K�O,J��K�70��s3	�v17qs36���s��4202�50�52Q02�24�21�3�0�60G���2��352��0����ħe�eg����V�ds�p�@-t	�0�
rr1�pv
3��44q����� �)�      C   �  x���_k�:�k�S�~4迬\M�e�6�,#$YW�ڑ�������ٲ%'�!4]?��xy��]���,G�1!�c�t�I?����q��x=>�|����٬W������5�����~��Lk2�N�D�]����>΃ci��4����̭s�4�������[�X���Ou-����

���4���$��]�SVG���>��Xۤ��uu�)�t���*�dvD� �C��9��4�	��  ?����~����u��&�&��s^��뛧��Ɓ��"RU(��Ж6��_��<	CfS:$:tu��j���%�^7�UѤ�/����l��x�m�9F�6���0�$����i�ˬ���:��z/2�C��9�s�(#1b��K/E���hM�T�+U���s���X\�!�IO(�9��Yxr`jp��}1��6��cu�kpIG�:[[4&�!#0�|�������b�Ĕ�F����
Ό���| ^.���n�r,9��a�0t�Mk�^,��TڍX6��T���G��ƠV6EbӼ�*~�93
���bow=!v�tWWl1!YQ"�*�k���\��bz���uYaU�&t��A�� ��T ��@2�(�Q�����'m0�r��s)2����<J���c����� c�N��L/FvS?8�es�FqC�9dv���Un"�eΡHԉdW!Ǆ���|�	����D��N�
7��/E�ʀ��
7~�$}����Ϳ�Nm      R      x������ � �      }      x������ � �      S      x������ � �      |      x������ � �      9   L  x���]��@�k�+Bn��|x�qQ�#�EvZh�K6�hK�{M�Mb�؂w���<�3/��� �ɴ y�� j#�arܛ�a��ގ(Y���_Oǥ-:������T/��1M!��|� ���1 ����~��\�����u-W�~��y��������wӇ "w��!�D0�"�"��SI> ~;��-=VX�U��kĪ�P���*�s@.T��Ļ�^S�1H
o�fC˓�O����D��]�׉ ����\BRD$�g�Uʈ@�,f��p݋�\ױi�E6�y&r�|����8���6��lL�T�*U6)�� 2��B �<�2�jH�\�.�-Wbt*,T!��Nad��+��r�:�(Ҟ�u�53WbrW �Zץ�3S�?�!���a|���G�ߎ1\�k
�x���#�<$�	�.�������3���� ���*�I���*�sl�zfS]����[V�>n��c�ĶL�fZ�
@�J�����	�"<����k�)eCt�թ�f-�Y2����z�MWv�˴�3�D�Jb6su�Fv��-�0����$c��֏�x	#7\ǔ���]��>\,��T      ~      x������ � �      �      x������ � �            x������ � �      +      x��M�+M��,����� #&�      8   d  x���Kk�@F��ޖ�yݹs��#����HB/�4��iH�MK�{e;`���0����y|/o_Ϥ-d�C��1J��di׳�u�m_w�<�.�!t�dA6�E�����}~��tv��}����ӟ����m�ݽ�����i{��L�[��B��I�IpI����'����B�>�/��ܧ���[�uFm�Du��ˢ�}�3L���3�)vc4
�C]���+u�<��@�̅�$����r���:�qH�����G�븯�t�X\vzS�l|�Kݖ��eQ�!,��j�#�t9�)�r��< W�6��m�t8	��ۄ·Y�9b\ש���&��D�曆*JH�'���燧��g*{�<�,�Ղ��g��t�"�s����C�{�O�g��7�E�ˌ]����핼��P�h��"=�N��ɦ/=��y")���s�$��Xa�M�ER�<��J^�)�A$\�H��0���F�Ĝ��@�J6��|���u�ػ�Jʱֹ������])��SK��� <95���u�H�O�ml� ��2+��Ƕ�i��m7RT�1�;T���H'�o�B���W�+QO��,sP���F��{�{w�Z�<�"      v      x������ � �      w      x������ � �      5     x��Z�r�J��<�l~���"�H��68&���!�mR� 0�B�j$c�J�y���/���r�d�g$�1�1v�{�*����L��u�8���a�w���5���㝦[��91��f��u��LP�Ӻc��[�;[ǌO與��cF��<�hH(�*�`���:9��DYB�(M��%®X2��0!X�rF$��KȘ^������4��[���*[íq��b�\��lpOC�Ѕ��L�2�j�N'�cҩнhRN��.�a������a��n����Uͪ��6�튩ۖ[1��n>�j�K,cۂQGw̪�����؋������^��b��W��,��n�s�1������*���n�{~���*�����^�)��x���|�m�-�6��b�#l��]�0���6l�\m�����V��	�W3ϝ���A��h�/�����4L�W�w�tr���c��Ni�H�I!�(����V��nUCwM�^Y�t7F��n͝�V����߲���s|<��8Jֵ����^��f�R�?�NR��ݫb8���X� �ٕ�fZ}3�ԬWg����ٴ��R�i?�|�֌�c9�������>�P2w�����f�:��:�U+�������'0�ic���^e��<�7[��^a��p�"`p�k�*�/�m���F&[,���H��8�yG ��[�;�>�`{�n�qvZk�ϻ�Ɯ#�FC�9�F(���L`)��Ʉ%/\�H�0�,��-O��&0{�+]y�u��m��xm�0 ��v��ϛ_�k�h�̝���{l�{{;���^��b�of��4s�J,A�|w���gd��>��"6\�_�b����A��PƱ�����(�b2ĥ4���H��,��ti��?�8AO�P����+ꬵ�p�U-��P'�+�:,&���|�Y~Fm@�]�|�%EC���0<�hDP~��i���4J�ω����
ӷ��Z�W��	���ƑH��a��8��/ʦk��e;�k�U����G c˩m��-����*�Eݪ�V�mG��m��;��iVs���|@Ð%Ϸ��O��?Oy0���6���%�+(.\��C�r�Gp���S�_�e-�X5���HY��l�-cZ���D�v�eӱ�rߗG֔J�~�渖n��e�]���V�P�����{i�j�Lx	��:�r���u��@=�.o�]���;r\�z��,	����(��6P>}.}!�u'���Il��%~���D��Q� \/bD�<�H�j"�>K49-���n���S���j�8����}��dx�������h���O�D,Y�����Ƙ0����<���0�2!�z��� 18�B+�	<�b��J��IoL�K���|)�(��UAo>
���O���� c�c����|Ah�&�S�|�
a�Y��vFW4���V,O�3BL�/���a�J���d�O���.� �ۗO0>�{l��p�Y�4piò�%MxZژ%:#���-&�٧4��m��upx��y�"��#r�hމE��s���P���T�|b���Ā)K��Y�$a1�(&�@��<@؋LP�IL}B}�&�&�DD�4�'Q �*����>ƀ���,���X.r��<T�А@2Q%57W<�� GJF	�$�����/�Hb� �\22`����<�)���Bq
��h�p��U�V�Q �#�ɕ#�'q FS9}���!��'�#l4�0����9%��&E�ۓ8���[��/�:�	"�Y^P4�%�#�l�yB�� �rz���gѨ��B�(�Z�U����������.�H/,N�a}W٠���<v������f��O��V�-�=��ڝw�����t��۝W���_u�t�C�'��H��"D��{"Q�V:�p� 4GP����KM�U~�Eڿ)���dV�T�`X8ϔ���4f�m�)����`/!я_�S$�Q2��f��K�-xf&��,"OC����A��T(d69_�\����C cx-�d1A}��&u�IÀ]s�,���X��T�� B��1�r�K�~�p����ac�8�����i�t@-���btl4�<� ���O(�c�Au�W*�X����\ D�< ɀȒQFper٘� �U�����'�G,��R�#u{AA扗a�"��L�<�c�$^����2�z�?M,����ʆ�_����]N�_!��U ؐJ,�v/��;S;r�q�pN�-�{TH���̾_��>V�.9XL���_���i,��e�j�4�|��.�(�m�)�9�_�CiEJy(9�nB�鄆@�;�6��8b��@_�C�3X�1��#�ɦKL��/R��ǜ�L�(d�946��p(�T��ID=�t*8@��16�5��|�d=X�$�O_(�Ƌ~A�o�a�,��>Rjv�s	>�l��1��l
%3�~?ϝ_(W�}N�Q����Xqc�J�n�G�Lr�N8i�}�Y��~K��V���{���鵎ۇ�d�q�"�N��4�ےӾm�"�����^�N�4e�F&���c��.s;�(6$+,���0�z�T�@CN� yaћ�Dr| �t�RN?�(�goqOM�8Η�P�5@(I�y�ˢ:"O�5��V0A�h��ɤ������-wh�f�ˇ���;���V�y��w�t��7�Nm�s�<}e��xb׭��G'��g�㓽��k-w�/;�6<[�]ɻb�2��QM�)�g+B��:�0%����,������ټ�1���!$)Jw�X�EUuAN'�_#�yzŚ0��zzDF�!X�����{��uۈ5�^3]�D�W��W5��nX�z��e�ܖ��cYu�MD4��o�D�����66q/���۴�?�,תV6�~�ߟ1���5��n�l����v槻m�Sl\@�����4�_��� [Lv�dI������	�#��FA��FI4�[s#�2��N�z� �|@/sf�wr�t�	e �꺡"�	�t���q��loa�:��v�����B>��@B�BV.��d�G��G�n��ݷ)W��0�.=׊^�0MV�K�m�R�_or!Q9��|>H!��vӜ��_Y����������y?�q?�q��~�S���?�+��5�~�3~�3�X��{|W1`:@��.��'�w�}�����䭁���@�,IWf�5�m$q��M����c��ߩ�
,,�:`<���J��/�2bʪo�seM�B�1����lR�YI������/�9�G���*�I�G����"=�dn����rj( �*K?����iN[�B�c�@�1#H��B��xj��G�X@���C�ҧ���6�\���j�>\A��/ܠ�9f�2��/z�ө�B�IU�'���r�l���cҺc�f�fT�K����+WmoX�\^�d�˳taڵ�-2�Ŝk�G�h�?QQ'X[-��C��l�uMfS���Zu0d�6A��%5ZMAzre��ꐴ�K�?�﬊Zj�=g���x��^J�U�;���e��5V��m�4�ԀA�%aM2[�w��kN6{��^����,��      �   �  x���_��6 �g�@�Za��ۼ���@��H�N����!!���w���k�[�NE_�D��/�d�ò:�d�  t�����I9L���x�[�>���^�G{{��L��S1:�WD��6�6Q-b:LtÒ��7P�Uӡ"��˪A���~�]/ϛ���z~Y�V���翟���ƃQ:����Jު������ܡ?�'���F�$7�Âr
�K��DJ��e���v�[�DQ�T�'"*"-P�^�V���d/G6���ɽݗ�`
�����%%g'���Y�g#Cє��ü���ri���f}Bջ�&��z�C8֊���Z��"�A8���D� ��^�i�=U���js<���۷��Km�3jKn���!s�L��"�#����ۜߎ�}���%��zR�4.ʪ��-���Q{�\c��O�\��&�80�%�E�eE��Mx��I4A���:ݎ�\��\!0g
|���R����U��Ǹ4
�HǑ)T>�R�T���� h����w膤ZԚt�����^4�X1z{�#�T���,���Ԏ&�3:/`�낚ד���XhA�{6�P���بy�47*�z�	�t����@:��/��)����R}M��y{I7!ɠL{E��8u^���5�'��+��h��~�w���Hϐ�xgt4�%aS-'´L���پ����x��
�Li�0�h\I��m>͵��~�\�Xv�[��l�z��R��b�B�x���R!]�zDMˠ�H�	#�#��A��`8C�u�z�W��	}��5o�w����X)M|f��{�su�<I����{�/��-�1'��$zJS�i������=�w���/e6��������B0���/y�b�7qh�Q�$�;M���ie�|�ڇ�C�}It�g���U�v��L1!ݎN?B�������P�      �   t   x�M�K
�0 е9�������"JM�i	�����w]?^>�w���Os\�R/ɹTfj�?��ߍ̤��_e$LCk�o>���<hica��D��̇�Be$GY��B���#�      \   �  x��X�n�6��<��k���-����gg:��M��x6�AI�ņ�$e������Iz�>9�'����-��%�9�^%���8���������>��?\܎�w;���%SQr0/>=��XN��:�s�n0츶��}��'�F�u���ް��ݠ�u��G�F�Y����`pusz{�ߜ�xף��wyp�brELk�8�!�-���d�`�v�A�=��OF�F?m�໓+���g��ӻ�Ww�t�+�[1=�< ٹ�����������ҽ�it|9>��_\�*�&W�`��ڊ�w��������n�n��{����w�Q�t4>����<x�0��������F��G��9t}�s;5����&��ѽ>����;2����/ك��a���܈z�}���Ϸ6S��<�4g̥b�$4%���J��Ԙ�H��p�V�1�d�36yk��p�`	�#S�Ȓ	a�h�Ic+��27$f,#Z৑�
!�d%sEB��b��a�E�"4��6�n4S�"ySS��S�	<	Sr�����P�����wn�������>�L�3�K�*^�4�����>K��$$��FC@.�s ϐ�dʴ]����T �^�r������Ʈs%�I�8�#�^���L�9U+������ǥ�$�dz��Xv�dl����R����3!C*����6���O-?cm��"o����+��[y�A�Vƹ�Z4M��0���؊�4�������%�M����Ϋ��Yb^�������HɬJ1����B����b��������)�>��)U���,R� �	�V�cX�� �le�F(���Y���R�W��
nV-�(�	��)ta7Sħ�*�n.@Q�E�UG�{��#���2�p���:Ă}�YZ0�1�0�x�ck�+43B��R�*�X�ZEݾ@���MS��V�L�ش*:���Ӵ��!xZ�..�����P�Ev����i�^��K���L��^z����DqB�M
�"IQ-��5��l �s��{��]�!� W�\7�w��QR(e��
��r�f��7^�Ot���N
�}S�>����M���+�j�dH5��b�+��1�\�lYz�U��@�2�.y��5�T�Z�Q �l?��j���#�z���ٟ47�r�tA�f%8�)���dV�H����Q��:���2Ph?�9j��P��3���B��f�\ڐ� �A,m����g�D!��\
���v�N�4�8��Q�9��b����$`�<���ljև�7:=/t�7��6`~�u��0��^����.C�&}��OjJ&��C ��KH�Bs?>==��������ފ?-dQ�'P-�Ͱ��3�U���\�J�`SiY��!|��7�lMwq&@ف�OYdȔ��{*���~A�ag���Z�5��vHl�_�zr�Zlq����٨���ٍ<a�? �{I�f1D<�R7��
)i):���*|�Kݣnq��t�[,�I���DS���pD���We���u�s�Z���l�W�p�:��Ͳ�o�E	4)�֚QJ.�F���i ����~hQ�k��� ]@��K¹�*�eW���~#�)༂SK���%���ɉ7�8΃��w� �50�o�����^f�����d�&!%h�Э�	�)�K�m��%t��)�Ƅ6�e
s����"�&��[�p��GBN�U)|Q-{����]�V6�p����o'B,�ii5S4���ʊ����U�n���{�V��:b�������}xx�F�rW      M     x��Թ��0 �:�c��K�va!#�B�E M ���E��,~M�����_~���y�ܜ�{Zu=�D��U��÷�_���]�Vyؽg<���w�7R�5h��98�{�}1b��^����H��J�&o�
ّY������܋2�k�� �+��*!�~��o���a�2bt�Ⱥ�d�ɩ�S�[�Lor<<��D�X�Oܨl�\��HAK��<f���v�6z����o�Ak��7��i
`�[@���n�������u��3o��L!��y��su�5���Q�<j�LwK�&���r��4m���NB3�q�i:r�u�KqB^����~�>� ~��W��
T���ET��k������:��'�����P�&�Y���z�{�i1,�!T���7$��sjr�4Wi��C��^wq�b"�{��EQ��k�D-��%����$��(�ݵE���Hѡh��E�䜀�LQXe�A-�M� ݉�����i#����YE(�Se-������x�uX�;      1   C  x���[k�0���W�~4�|�-Y6�,dKȖ(�e�R��l�~�I�%�����>�>i����&Y�G��n��P��Z�[AV����
D� �Bd��5��n1�7��!��������TCjT�cr"���z�R���+r��5��dQA&f�؉h���f
ɔ��OS�֐WQ�����czN�r?��UF8IH�\���-�X��dvAA C����B��*li�
�B�a�e�P�'�h�+�\�����k��Nzק���Kyi%�1N.*��9E���,�F�����=&�K�)�X.(c���<��c�rk���5�J>���Z�X�Z2�]�O�3��8�g]6�W-�FQ��e�s#-��,G�%N Ц�@5��
�?�$G��R�7�h1�TV�p[yj�T��Y�w��O����sy>�	�(�IΦ3����e� �)��F�<�8f�j�6v��Z��{�y�������;=�%�DD!��$�_��_��T���K�5sha?m�Rг�Y���P�t�X���	,Ts��1��!v��ʅ��g�@v15�����~���f�^�����t      0   �  x�͘[o����_!�S����5��L3l�`��cc`�������ێ��=��G�4�^9�:��9��~���o/��@���_C�Hx0�Т6^���}u�^���ջ������e�K�q(�\����/�~��QІI�"؅z� "�}��5�/ A�g�7�?���_#�� �0(�>��?{�5�F��Ɓ�8$��Ro^���0$#�
^���6^Hy�k�3�V���T��b`�	DG��lJ��>��ѵ���:GN򤱸J:A�l���C����
Nu�V�=�ݢ��@Q�Y�B�Cd�F��H��@PX�֟_xuW3=5t u�=kDo�j�s%�`1���2��/��l	Ӯ�I
���b��H�y�FK��'k�S��b���쌆i�0�^�2.��N�]F�xbt�}XI�ı#W�s%�/���PW�xa3��V7������{f�i1:!#Ҋ�����A�[q�T���`������lDuNnCD�eM'0�)n�>����#2͠E�G�Qfb}���|u�$	��E�Jļ�lyl� � � t,+���)�xqa�55ȝ�!0���}U��@K�=�#�Lo���e�LG�,�f��S�[Y�	��#_\h-�J�p'�)
n8Ē��W���p37�pLu�s(�@n�h�v����H#�@�]ٜ��cX�p%1y�x�-�#���i�����V�a(k�7NF�X";��=C	�v,`��G%�p��|ޓ^�uJF1��km?k�d�1@�<����F�޾0�'�<=������+)�%u�&|g �N���C�C����`�Hf���)>NJ� �:��2'mĉ0<Bm1�J�%�7��a8���i#l�)V�t�.ʠ�@��w� zT�<�,�i�ݲuF�ykG���yP�UG'��-�(c�x���3)���98=�P��3�3C���0g ��3sQ7�;�.�  G`ߨu����O{f<s\;��\a->6���f��Vp+g0���`v?I�OR_�!4�H���q�/o�aX5_X�))�(N��ڳ�GN�5�h"�M��Vc�Ds7�Kɾy�%�E��y���RIծ�6��ڢ?}�����9�}7������Q�'��� >��p����;Y�&�v�3��$�i�[�6�[��UЋR���.���T߳
� .R��^G���-��o���2���T�(�.G����a���g�l�^G��gNA\&���<��z������ �\ �������q�D�m�yWm�W�����[�����)dgj�:�4���Kc���}����	ܗ4u�@���f_�<ѽ�`�^�	�1S�~�k��H�㠳�$ACJ�x�JȾ��8���K,�	�^��F `���Ѻ��5�Sc,���sv�j��[��R죘�!��mb�~4���f��!��=�s?1�y$�t�CA�,�U
�f+j8R�Xq؂���qY�=S�T�!�~��GS�����
 ����^�������������������N%c;$�Yl2_޺�<���I��x��|D�A#z��=<��S�nnA�!,�m���:����������ڀ~�DJ�~"�p�;ھ�5�*�����Z�z�����p���_�_�	�~��EAy��!u�81�����m嗴�%��d��20=�x���l�B����/߿���=�r�`��}s�2��a�r	�������k�����쒳ܷ��[bD	����}��Qo�5���E�F�$�w�����~����E��W6�[��W�����7��0VEF�v=W�/�1�Ӟ������x�z5/ �t_�e~@�<���;(g����#��q�}�,�gh�V�c`b��J��>�}���&�my� D�8����ϳ�MIT�y��Q��z�%�3��Q/�Ho�w�N���8��}�#B$�lO� �R�O��Gt-�Q�<M����hұ�[c�4o�!މpY�mM�Ɩ��r�c�F��	�,~X�\�S>���)Y��v�`vasʱk�f/��u�i�S%�96��w\/���$,� T��H�iEgz���md �69�t��o�-�yc�$&��X)G������x��TG�,��+�[����-�t��ǐ��ͳg�� Hj�      {   �   x��ѹj1��:�0A��h)�]	Y#�aH�6��C�4�bՇ�8�ϯ���0���:��S�H�ý}��{��آ6^1Ǝ�[����Ӡ��1L�S��kR�q�
n3���V��v)hJS���Ҳ��dJW����~���u�U.E?�|�ې�X�AXB"�bP���.�X�5�"]3�@���b��eY~ �Y�6      �   �   x��ϻn� @�<L6�0?�Bـ�)R������|��������na	�E�_NW_�����C��ƲΩ{&�r8��Мtt��b���l\Q�ε*�	BaJ�:��fݤ`1N�[�~�Ť�)]��R[�y�S��~�-�[�R�$��n�&u�G,�U�-���.�X�:}��A,6�l��!��ߛ�      ]      x������ � �      _      x������ � �      k      x������ � �      ^      x������ � �      l      x������ � �      /   G  x�ՙkk�F�?+����g��4	i�J�A����f��%�lZ��+;i���un��|�0�}�93��������' ��Ҫu׏j�Dtg������ˇ�W����=PrTU���y  �����o�? r�1"W��\bL0�? ~�ǐ/X!��`�!���N��߶��,�uֹc�m�.N�����lq��1��"�:�$$�޾�|<�"��	[2H�c݋N��V��uBz�PS 2�V�����QXOJ�Kq�9Lr�Ke
Ã�I��_���KӚd����b���+���^��i񰣙�+ 5޾�|�9!�A֔�1]6\�,_��Ť�`mHU�������K��њe"�6nL8���W�1>o`�i�ʶ�ˮoy�n��ضCɤ#6�h�`WC&b�%Â�z;W(S����j�JBMP��y�
Cf@.KS��P�`{`:`�y�
C��\�Ҁ0Sy��	���<`�qÛ�G�墘�'Z������9�.o��@��1���dVK�R4�����c��ŉ*㪐�� ��Lo*����t�`Jf��y`�߀(�Z&t��Q���B����8Qʪ���ǣ��;-L\�Z�6��\o��ћ�ҁ�T%R���p^��s��ʕI�1W�4�E���	�:[�*����y(c��b(Y�ij&x�k���c�벋r<Vq���@��9�wU,�X��Faf:`�ټ/h]g��d���`n��hu��t��̐x�T�9-��F��x�5��3�����<���p�1����%�R���?��y�iQEC��v��X��m;es�g��e�<
4u�Z�iQ�ݺӺ;��ˣ�F�:- �a�D��a��.�K�}��Q7{PgU!���4�������7������}� O�h������z�P�(\N�w��G�����u��b�sX��ǋ�E{���%J9j�&9p�������(|��ޚ'V LC�dL�n����BUWH����t`u�@t`��_,��_Z����_��O�������":;{�i�	�o�ƾYh*��O�/�#�'���C�9�j��u�&_"��`oGo��f�p:����rvv��Il�H5Ӕ�N�N[ft���6Mz Q)���^t'bekM8���C��p1��/���\�*�$�ˁ����@�����".�\x�3k�Խ8�Ecj�|t��z��G��ty-�䦘��K
�lw�&��w��،�� �a��˳��甏ɺ��P4k.��bI�7�ҷ��8�����0�!-�'��U��C���� Y(�]����������P�W��h�=Q��=�o�b�wˣ��� /�t	      �      x������ � �      �   
  x���K�) �u�W�~蠖�2;oe��XZX*M/g1C3����$ͩ�ҋpN|���-ߋ���~��7 �}j. ����&Sf�O#�W�M���@h�?����������_fe��>�~�J���5�� ¿ ��?#��/~�&<M���}��7�:�mQ��]%�
��O� q�HV�@*��4	0����\��T�6FIj�< � ozqV������T�x����]�۹#'�2��V� ���� 9P��T2i��5F#��=p98^��O`��	�50�V�)�iO��W�4�+6���7����7P��	F�8g�-��b���N����G+Xή��`)�ַ
�Y��O��xP?�@#J��Տʑ�p����*� 1����Q�&
����.�n�7��V�̞���`*s�=�N�y��l����J�� E`ɟ~5��f��
D-2�/��Rs��An���jj9&�f��R���a�j!�
����
v8cq� �TαR:j�#�\�گ�k+�i"�~4Ƿ�7������zT��=�ys��A,�c��׶�T�Ɔ}P����B����2o��̃S,H9��[b�NI���� l�V����+�O�֧ܰ���)�x`n�P����0|�i���<	���oP�nFZ=�Rͮ<J~
���-�R'�T����2>NO�6{�� ���4�LmB�k��EC$�t`��`��`q+�M=(��[��:I� 8ȴ r�e�i��;S� �����t���&z�>���y�rW%��@4]�Ly"�o��Xܩ�m&L���8�˜������;9C�($�:E���)ni?"
i��)��a��'1��p��N�7�4�5-V���5�ɚQf�F���@s�}]��(���Lb��b@�1:��hČ�T�\4
��<Qc@z
���(���e�D{Y�(�bpc\g�Xet��\�.������H�$�{���sC����=!϶X����oR%����=�~_����2���8�| P�,Q�E�����W���:�e�������eN*�ȏ��������]o��3���6��f�O��}��|���,pN�у��M�Jb��h��FK1�{`��aj���9��$�x�4��"�]U0�_�ˁ��x�����@[��N�a?���^ҌE3�0K��������W�"R1��ҵ����ρߢw��+�S�v��^�����(N���n���p�$��B��G.��VT*�E$]��%@I�d~�$�p�o��%�u���J>U�˘�X�yP����.��W Q�+�+���B�����@h��6"E+)����w5a�U�?��n����2�A��{а�;�,�~��h6M]���z�U����� ���W�u��U�Q�����)��7�b�N��)`0����� ��D�!��zD�X�������x
e�Ӣ�5���ͷ�^�a�&;�����(��9���w��`�#����m���6��c0�=���7��5�#m��=��������~�bL����f�>����Ld*� ����R��	��Hp=�+�=����r.aL8��6����	t-Ӱ�e�. ,f�jG�1��if� b�:R��%(ӥݲx�i	��1������t�<�\�aHnol#�f��<������Y�e��҃J���+ݏ�wDz@�L��n�6�<�K�����w����V��'��B�>�1����������u`l�zrw�s�}L�iQ�����u`���l֮����-��Յ�Ϛ�	Z�r���޽��AҚ������~��g���> �����F���Ӎ�Mfr\�!���v֖��M����}�eC�f���/�G��q�sg��1�����_�y4�Ck�ʇ��|F�{}y�$zMn�^�ݽ�W ����7Z������~_���I���� 3���zF��C�@>��e�^�Z�٫�rR� `
|�v)���'GJ<L�W1΍��d� ~4�̨y�+=@]w����lq�Z�!�s�ۚ�-�G���#�G[� ���#�5z�������s6�ߜ�YD�r�s����z?�DVƚ.���ڮrx�_����ڲ��[���x��n��1 -� -���/ ��/����	��^���W��J�dg�?V�2�
8�Zp��,=�J�=0�uO���J�� `�)��S���-�i�Mukv��}g��3(�-I�<�Ӣ}�;>�C��SB���.tO���=�{X���F!n����͜��.��K%�K�xYO��O�����o��+�
�P:?�ĩ�4�_��D'�b�	D��X&Jҋ���a�G��+ �/� �_�L��eFo�	!��0��غ��{��H|�Q#��Q��C��J]�N���S �����o�[ 7��5Z6:RR�oo�_�#U���G�)> �-I�T_)+�W�C��� ��.am�Ʀ�Y�|^��� Ҏ����+p�@X!^�֨���g@
�O����_?�����_      �   Y   x�+Ȏ70��s331��s��4662�6
�66�4202�50�52Q02�24�24׳45263�6 $��B.�e�9���y%\1z\\\ �1�      �   z   x���=�@ ������w��[&!ɽ'��������h�Y�m}�I�NYg�_�P�H��)�����`���'f��|v[/��3�1�:>2�9��쁰B��,�<��#ȟ]�,�1f�%�      A      x������ � �      ,   �   x���M�@������~讷5�$PHk+"ȢCL�K��C����2����X*+������fun$�H�%�� mE0���1L�'�Z2���?���u����Q��iaD�J��:mHe��<�O]"��5:�nc�}� �q�nx��o�p�t(#�"�֧�DoCJ�DTQ�      L   `   x�+JM�70��s33r�u4s6sq
2
ru45��M�+M��*BRelh����h�k��j������0������8,�-8������*F��� V!�      K   `   x�+JM�70��s33r�u4s6sq
2
ru45��M�+M��*BRelh����h�k��j������0������8,�-8������*F��� V!�      =      x������ � �      '      x������ � �      c      x������ � �      z   y   x�+N�70��s3�3��2pv�u277������4202�50�52Q02�24�24Գ�4525�60' ��钚�X�S����Z����������\��X����T����RZ�șT����� �%$H      �      x������ � �      <   �  x���Kk!���9?�x?g�:��2:��J�eWIw�����HK�����W�Dx=�6�O֑ 3�ǀ6�_�WY�ѶI�S��#E�����ׇ��#A}l�a�M�_>z�񼮦��~8B�Ͻ�n�闻�4F�.?=;]�8��-�
�mb�Ŵ�s�cr�ɱ�7��H�cMk���s^�e�K�Y5I�w�6����B���x0�h�ao8�+�g/XZ��# lJ���R.-������k�2l��^���9��瑖�Mj�&=Oh���y�k�C�e1B�k���v�P�.��K�GKZ˚|��>̬���s���,x��8K[E�f�0��aXΚR�na6�B���R싉�'�.v�_��<@i�F60�,����5����5A�S�oTk��M�0����+�O��c5��K���p�^�E�      j   �  x����n�0�u�ُ���;j�<EE��*Yu���Miu+/������7�jvE���{��^&ʂT�;�{��������"C�3�G�AH@'B����S�S���)�s��ӿq���A'[vю����/R�l�C8�
'�L�)G��܀I�JH�dH ��|L�$�r˩y띘���̚JgC��fñ�}�u�6Aei;�_s�%�01�h���J���u���r�4���[M���4j�{0��ͿY�i�I��Ih$~��
`�ּ�)�҇��:�u����a�lQ������v�é�	_�R�m=�TH�߫�xja(���j�=eb����x?g����h�x�B(�~�x�R��v��gEN�l��(%�`G��Q���մ      3   �  x���]k�0�k�W�܎}X��;˒����8v(C��$�vXG�/ݖ���u4M@w/�x8��w� ���#9�,]?f���d���w��U�k=����VZW�{y�r�<A�tXh��!��p�KCÊ���B�T�}�jM[�]5� h��0^�ƶ>��O�}۬�vSo�� 2&�L��#hClC:ea~��M�|��/��̄�"��X�����w]���f�k0g�$�-/xj�#3��}���a�VFq��d��2�3i_��vЇ���b��A����93�
�X�q�%K2���<Oy��Z*�3�H�������57��ݐS�EF�y��7BtdA=/���2W�<�������j���*]?+�$��������Z��ԣ����"(4W�0��Z���&p�yiA- ��5�N��#dC`kʐ�,v4�H	�21&�����uh�d��RI�x������Y������
`�V��A ����f:�� $�o�      2      x������ � �      4   �   x�+.�70��s3�3vqt16��5��rwr�tIMK,�)Q��,(��KW(�O��I�L�Hp�����(Z[�YX���i����"�b$��FD9�D�8�E,�8�3�J��R�6�EⓁ"T�;F��� �+@�      m      x������ � �      H      x������ � �      I   {   x�+.�/J�70��s3�3�4�2��
3v�r6��MM)-NT��,-N���4202�50�52Q02�24�24Գ�4525�60' �A��pk�����]|����="C""}�
�b���� Db'�      T   p   x�+.�/J�70��s3�3�4�2��
3v�r6�,-N�*&�(������D"LJL%FQZ�rr�P�K�uE�D(*%Ƥ*"���K���"�c]O�L����� ĦJ      >      x������ � �      h      x������ � �      g      x������ � �      b      x������ � �      J   �   x����n�0���S����RC�?�quDJ������!з�xr�ݜ|��]?1*X�j9� T�s����e�'�W�T��>�!t��9���� WMc6P�����]���L�1�[����k�70*�nz��n���@�`�>h��+�e��T�_�h&U[�E՛h�I��7Qޣ릸�g�����1��){�dJؔ�6q�C���A����ۖe�L}J|     