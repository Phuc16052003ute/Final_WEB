PGDMP             	            |            postgres    15.4    15.4 &    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            0           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3375                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            1           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16838    admin    TABLE     �   CREATE TABLE public.admin (
    adminid character varying(255) NOT NULL,
    passwd character varying(255),
    username character varying(255)
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16869    admin_product    TABLE     �   CREATE TABLE public.admin_product (
    admin_adminid character varying(255) NOT NULL,
    product_fruitid character varying(255) NOT NULL
);
 !   DROP TABLE public.admin_product;
       public         heap    postgres    false            �            1259    16449    cat_seq    SEQUENCE     q   CREATE SEQUENCE public.cat_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.cat_seq;
       public          postgres    false            �            1259    16862    customer    TABLE        CREATE TABLE public.customer (
    id character varying(255) NOT NULL,
    email character varying(255),
    address character varying(255),
    contact character varying(255),
    creditcard character varying(255),
    feedback character varying(255),
    name character varying(255)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16857    invoice    TABLE     �   CREATE TABLE public.invoice (
    invoiceid bigint NOT NULL,
    date timestamp without time zone,
    total double precision,
    customer_id character varying(255)
);
    DROP TABLE public.invoice;
       public         heap    postgres    false            �            1259    16876    invoice_lineitem    TABLE     y   CREATE TABLE public.invoice_lineitem (
    invoice_invoiceid bigint NOT NULL,
    lineitem_lineitemid bigint NOT NULL
);
 $   DROP TABLE public.invoice_lineitem;
       public         heap    postgres    false            �            1259    16852    lineitem    TABLE     �   CREATE TABLE public.lineitem (
    lineitemid bigint NOT NULL,
    quantity integer,
    item_fruitid character varying(255)
);
    DROP TABLE public.lineitem;
       public         heap    postgres    false            �            1259    16845    product    TABLE     %  CREATE TABLE public.product (
    fruitid character varying(255) NOT NULL,
    origin character varying(255),
    dateinput timestamp without time zone,
    description character varying(255),
    exp timestamp without time zone,
    name character varying(255),
    price double precision
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16448    user_seq    SEQUENCE     r   CREATE SEQUENCE public.user_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.user_seq;
       public          postgres    false            #          0    16838    admin 
   TABLE DATA           :   COPY public.admin (adminid, passwd, username) FROM stdin;
    public          postgres    false    217   ,       (          0    16869    admin_product 
   TABLE DATA           G   COPY public.admin_product (admin_adminid, product_fruitid) FROM stdin;
    public          postgres    false    222   >,       '          0    16862    customer 
   TABLE DATA           [   COPY public.customer (id, email, address, contact, creditcard, feedback, name) FROM stdin;
    public          postgres    false    221   [,       &          0    16857    invoice 
   TABLE DATA           F   COPY public.invoice (invoiceid, date, total, customer_id) FROM stdin;
    public          postgres    false    220   �,       )          0    16876    invoice_lineitem 
   TABLE DATA           R   COPY public.invoice_lineitem (invoice_invoiceid, lineitem_lineitemid) FROM stdin;
    public          postgres    false    223   -       %          0    16852    lineitem 
   TABLE DATA           F   COPY public.lineitem (lineitemid, quantity, item_fruitid) FROM stdin;
    public          postgres    false    219   .-       $          0    16845    product 
   TABLE DATA           \   COPY public.product (fruitid, origin, dateinput, description, exp, name, price) FROM stdin;
    public          postgres    false    218   W-       2           0    0    cat_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('public.cat_seq', 1, true);
          public          postgres    false    216            3           0    0    user_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('public.user_seq', 1, false);
          public          postgres    false    215            �           2606    16844    admin admin_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (adminid);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    217            �           2606    16875     admin_product admin_product_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.admin_product
    ADD CONSTRAINT admin_product_pkey PRIMARY KEY (admin_adminid, product_fruitid);
 J   ALTER TABLE ONLY public.admin_product DROP CONSTRAINT admin_product_pkey;
       public            postgres    false    222    222            �           2606    16868    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    221            �           2606    16880 &   invoice_lineitem invoice_lineitem_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.invoice_lineitem
    ADD CONSTRAINT invoice_lineitem_pkey PRIMARY KEY (invoice_invoiceid, lineitem_lineitemid);
 P   ALTER TABLE ONLY public.invoice_lineitem DROP CONSTRAINT invoice_lineitem_pkey;
       public            postgres    false    223    223            �           2606    16861    invoice invoice_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoiceid);
 >   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
       public            postgres    false    220            �           2606    16856    lineitem lineitem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lineitem
    ADD CONSTRAINT lineitem_pkey PRIMARY KEY (lineitemid);
 @   ALTER TABLE ONLY public.lineitem DROP CONSTRAINT lineitem_pkey;
       public            postgres    false    219            �           2606    16851    product product_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (fruitid);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    218            �           2606    16891 ,   admin_product fk_admin_product_admin_adminid    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_product
    ADD CONSTRAINT fk_admin_product_admin_adminid FOREIGN KEY (admin_adminid) REFERENCES public.admin(adminid);
 V   ALTER TABLE ONLY public.admin_product DROP CONSTRAINT fk_admin_product_admin_adminid;
       public          postgres    false    222    3200    217            �           2606    16896 .   admin_product fk_admin_product_product_fruitid    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_product
    ADD CONSTRAINT fk_admin_product_product_fruitid FOREIGN KEY (product_fruitid) REFERENCES public.product(fruitid);
 X   ALTER TABLE ONLY public.admin_product DROP CONSTRAINT fk_admin_product_product_fruitid;
       public          postgres    false    222    3202    218            �           2606    16886    invoice fk_invoice_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fk_invoice_customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 H   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fk_invoice_customer_id;
       public          postgres    false    220    221    3208            �           2606    16906 6   invoice_lineitem fk_invoice_lineitem_invoice_invoiceid    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice_lineitem
    ADD CONSTRAINT fk_invoice_lineitem_invoice_invoiceid FOREIGN KEY (invoice_invoiceid) REFERENCES public.invoice(invoiceid);
 `   ALTER TABLE ONLY public.invoice_lineitem DROP CONSTRAINT fk_invoice_lineitem_invoice_invoiceid;
       public          postgres    false    220    223    3206            �           2606    16901 8   invoice_lineitem fk_invoice_lineitem_lineitem_lineitemid    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice_lineitem
    ADD CONSTRAINT fk_invoice_lineitem_lineitem_lineitemid FOREIGN KEY (lineitem_lineitemid) REFERENCES public.lineitem(lineitemid);
 b   ALTER TABLE ONLY public.invoice_lineitem DROP CONSTRAINT fk_invoice_lineitem_lineitem_lineitemid;
       public          postgres    false    3204    223    219            �           2606    16881 !   lineitem fk_lineitem_item_fruitid    FK CONSTRAINT     �   ALTER TABLE ONLY public.lineitem
    ADD CONSTRAINT fk_lineitem_item_fruitid FOREIGN KEY (item_fruitid) REFERENCES public.product(fruitid);
 K   ALTER TABLE ONLY public.lineitem DROP CONSTRAINT fk_lineitem_item_fruitid;
       public          postgres    false    219    3202    218            #      x�KL10�442615�LL�������� B)      (      x������ � �      '   Y   x�̻�  ����	�q���>��n�t�z���ZZ~��yO�,��z�8�x�0�~�3>�c��ْ�s�U�u�C	!>4-�      &   3   x���  �7Ta2$�Z�wAј����u.Wh�c�����      )      x�3425�4425����� �Q      %      x�3425�4�t300����� ��      $   �   x�s300�v�4202�54�56P00�#δ�����������)B>�(1/=��D�Ғ����� C]#��#�
rR9�@�s:%Ve� �7��!�S����ZTT�ih2̈́TӐ����W� ?�F�     