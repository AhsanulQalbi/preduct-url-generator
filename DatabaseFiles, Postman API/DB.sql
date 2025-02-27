PGDMP     
    1    	            x            product_database    13beta3    13beta3 9    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            r           1262    31148    product_database    DATABASE     s   CREATE DATABASE product_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
     DROP DATABASE product_database;
                postgres    false            �            1259    32827 
   Activities    TABLE     �  CREATE TABLE public."Activities" (
    id integer NOT NULL,
    user_id integer NOT NULL,
    target_id integer NOT NULL,
    user_model_id integer NOT NULL,
    target_model_id integer NOT NULL,
    user_name character varying(255) NOT NULL,
    target_name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone
);
     DROP TABLE public."Activities";
       public         heap    postgres    false            �            1259    32825    Activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Activities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Activities_id_seq";
       public          postgres    false    201            s           0    0    Activities_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Activities_id_seq" OWNED BY public."Activities".id;
          public          postgres    false    200            �            1259    32851 	   Addresses    TABLE     �  CREATE TABLE public."Addresses" (
    id integer NOT NULL,
    street character varying(255),
    city character varying(255),
    province character varying(255),
    country character varying(255),
    postal_code character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone,
    "UserId" integer NOT NULL
);
    DROP TABLE public."Addresses";
       public         heap    postgres    false            �            1259    32849    Addresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Addresses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Addresses_id_seq";
       public          postgres    false    205            t           0    0    Addresses_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Addresses_id_seq" OWNED BY public."Addresses".id;
          public          postgres    false    204            �            1259    32875    Admins    TABLE     �  CREATE TABLE public."Admins" (
    id integer NOT NULL,
    role_id integer NOT NULL,
    email character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    active boolean DEFAULT true,
    created_by character varying(255),
    modified_by character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public."Admins";
       public         heap    postgres    false            �            1259    32873    Admins_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Admins_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Admins_id_seq";
       public          postgres    false    209            u           0    0    Admins_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Admins_id_seq" OWNED BY public."Admins".id;
          public          postgres    false    208            �            1259    32892    Models    TABLE     �   CREATE TABLE public."Models" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public."Models";
       public         heap    postgres    false            �            1259    32890    Models_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Models_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Models_id_seq";
       public          postgres    false    211            v           0    0    Models_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Models_id_seq" OWNED BY public."Models".id;
          public          postgres    false    210            �            1259    32900    Products    TABLE     �  CREATE TABLE public."Products" (
    id integer NOT NULL,
    name character varying(255),
    price bigint,
    discount double precision,
    description character varying(255),
    weight double precision,
    condition character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone,
    "UserId" integer NOT NULL
);
    DROP TABLE public."Products";
       public         heap    postgres    false            �            1259    32898    Products_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_id_seq";
       public          postgres    false    213            w           0    0    Products_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Products_id_seq" OWNED BY public."Products".id;
          public          postgres    false    212            �            1259    32867    Roles    TABLE     �   CREATE TABLE public."Roles" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public."Roles";
       public         heap    postgres    false            �            1259    32865    Roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_id_seq";
       public          postgres    false    207            x           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
          public          postgres    false    206            �            1259    32838    Users    TABLE     J  CREATE TABLE public."Users" (
    id integer NOT NULL,
    fullname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    32836    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    203            y           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    202            �
           2604    32830    Activities id    DEFAULT     r   ALTER TABLE ONLY public."Activities" ALTER COLUMN id SET DEFAULT nextval('public."Activities_id_seq"'::regclass);
 >   ALTER TABLE public."Activities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �
           2604    32854    Addresses id    DEFAULT     p   ALTER TABLE ONLY public."Addresses" ALTER COLUMN id SET DEFAULT nextval('public."Addresses_id_seq"'::regclass);
 =   ALTER TABLE public."Addresses" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    32878 	   Admins id    DEFAULT     j   ALTER TABLE ONLY public."Admins" ALTER COLUMN id SET DEFAULT nextval('public."Admins_id_seq"'::regclass);
 :   ALTER TABLE public."Admins" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    32895 	   Models id    DEFAULT     j   ALTER TABLE ONLY public."Models" ALTER COLUMN id SET DEFAULT nextval('public."Models_id_seq"'::regclass);
 :   ALTER TABLE public."Models" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    32903    Products id    DEFAULT     n   ALTER TABLE ONLY public."Products" ALTER COLUMN id SET DEFAULT nextval('public."Products_id_seq"'::regclass);
 <   ALTER TABLE public."Products" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    32870    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    32841    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            `          0    32827 
   Activities 
   TABLE DATA           �   COPY public."Activities" (id, user_id, target_id, user_model_id, target_model_id, user_name, target_name, description, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    201   �D       d          0    32851 	   Addresses 
   TABLE DATA           �   COPY public."Addresses" (id, street, city, province, country, postal_code, created_at, updated_at, deleted_at, "UserId") FROM stdin;
    public          postgres    false    205   �D       h          0    32875    Admins 
   TABLE DATA           �   COPY public."Admins" (id, role_id, email, username, password, active, created_by, modified_by, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    209   /E       j          0    32892    Models 
   TABLE DATA           P   COPY public."Models" (id, name, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    211   LE       l          0    32900    Products 
   TABLE DATA           �   COPY public."Products" (id, name, price, discount, description, weight, condition, created_at, updated_at, deleted_at, "UserId") FROM stdin;
    public          postgres    false    213   iE       f          0    32867    Roles 
   TABLE DATA           O   COPY public."Roles" (id, name, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    207   �E       b          0    32838    Users 
   TABLE DATA           a   COPY public."Users" (id, fullname, email, phone, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    203   �E       z           0    0    Activities_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Activities_id_seq"', 1, false);
          public          postgres    false    200            {           0    0    Addresses_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Addresses_id_seq"', 1, true);
          public          postgres    false    204            |           0    0    Admins_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Admins_id_seq"', 1, false);
          public          postgres    false    208            }           0    0    Models_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Models_id_seq"', 1, false);
          public          postgres    false    210            ~           0    0    Products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Products_id_seq"', 1, true);
          public          postgres    false    212                       0    0    Roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_id_seq"', 1, false);
          public          postgres    false    206            �           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 1, true);
          public          postgres    false    202            �
           2606    32835    Activities Activities_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Activities"
    ADD CONSTRAINT "Activities_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Activities" DROP CONSTRAINT "Activities_pkey";
       public            postgres    false    201            �
           2606    32859    Addresses Addresses_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_pkey";
       public            postgres    false    205            �
           2606    32884    Admins Admins_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Admins"
    ADD CONSTRAINT "Admins_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Admins" DROP CONSTRAINT "Admins_pkey";
       public            postgres    false    209            �
           2606    32897    Models Models_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Models"
    ADD CONSTRAINT "Models_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Models" DROP CONSTRAINT "Models_pkey";
       public            postgres    false    211            �
           2606    32908    Products Products_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public            postgres    false    213            �
           2606    32872    Roles Roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    207            �
           2606    32848    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    203            �
           2606    32846    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    203            �
           2606    32860    Addresses Addresses_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE;
 M   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_UserId_fkey";
       public          postgres    false    203    2767    205            �
           2606    32885    Admins Admins_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Admins"
    ADD CONSTRAINT "Admins_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(id) ON UPDATE CASCADE;
 H   ALTER TABLE ONLY public."Admins" DROP CONSTRAINT "Admins_role_id_fkey";
       public          postgres    false    2771    207    209            �
           2606    32909    Products Products_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE;
 K   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_UserId_fkey";
       public          postgres    false    2767    203    213            `      x������ � �      d   R   x�3�H�I,H��J�N,*I�t��T��=�R��R�39M@�����@��R��B��������͌���I��qr��qqq a�      h      x������ � �      j      x������ � �      l   N   x�3�LN�K��,�44  	P�M�H��4�3��K-�4202�5��5�P0��21�21�31��60�'��i����� aef      f      x������ � �      b   H   x�3������9i�A����z�����F�id`d�k`�k`�``ieblel�gh�m`�G&Ə+F��� �H�     