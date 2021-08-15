--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-0ubuntu0.21.04.1)
-- Dumped by pg_dump version 13.4 (Ubuntu 13.4-0ubuntu0.21.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts_account; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.accounts_account (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    patronymic_name character varying(150),
    birthday timestamp with time zone,
    city character varying(150),
    photo character varying(100),
    description text,
    phone character varying(50),
    telegram character varying(50)
);


ALTER TABLE public.accounts_account OWNER TO socialsite1;

--
-- Name: accounts_account_groups; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.accounts_account_groups (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.accounts_account_groups OWNER TO socialsite1;

--
-- Name: accounts_account_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.accounts_account_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_account_groups_id_seq OWNER TO socialsite1;

--
-- Name: accounts_account_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.accounts_account_groups_id_seq OWNED BY public.accounts_account_groups.id;


--
-- Name: accounts_account_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.accounts_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_account_id_seq OWNER TO socialsite1;

--
-- Name: accounts_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.accounts_account_id_seq OWNED BY public.accounts_account.id;


--
-- Name: accounts_account_user_permissions; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.accounts_account_user_permissions (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.accounts_account_user_permissions OWNER TO socialsite1;

--
-- Name: accounts_account_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.accounts_account_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_account_user_permissions_id_seq OWNER TO socialsite1;

--
-- Name: accounts_account_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.accounts_account_user_permissions_id_seq OWNED BY public.accounts_account_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO socialsite1;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO socialsite1;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO socialsite1;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO socialsite1;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO socialsite1;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO socialsite1;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: blog_comment; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.blog_comment (
    id bigint NOT NULL,
    name character varying(80) NOT NULL,
    email character varying(254) NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    post_id bigint NOT NULL
);


ALTER TABLE public.blog_comment OWNER TO socialsite1;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.blog_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_comment_id_seq OWNER TO socialsite1;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    body text NOT NULL,
    publish timestamp with time zone NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    status character varying(10) NOT NULL,
    author_id bigint NOT NULL
);


ALTER TABLE public.blog_post OWNER TO socialsite1;

--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO socialsite1;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO socialsite1;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO socialsite1;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO socialsite1;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO socialsite1;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO socialsite1;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO socialsite1;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO socialsite1;

--
-- Name: orders_order; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.orders_order (
    id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    address character varying(250) NOT NULL,
    postal_code character varying(20) NOT NULL,
    city character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    paid boolean NOT NULL
);


ALTER TABLE public.orders_order OWNER TO socialsite1;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO socialsite1;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders_order.id;


--
-- Name: orders_orderitem; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.orders_orderitem (
    id bigint NOT NULL,
    price numeric(10,2) NOT NULL,
    quantity integer NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    CONSTRAINT orders_orderitem_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.orders_orderitem OWNER TO socialsite1;

--
-- Name: orders_orderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.orders_orderitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_orderitem_id_seq OWNER TO socialsite1;

--
-- Name: orders_orderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.orders_orderitem_id_seq OWNED BY public.orders_orderitem.id;


--
-- Name: shop_category; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.shop_category (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL
);


ALTER TABLE public.shop_category OWNER TO socialsite1;

--
-- Name: shop_category_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.shop_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_category_id_seq OWNER TO socialsite1;

--
-- Name: shop_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.shop_category_id_seq OWNED BY public.shop_category.id;


--
-- Name: shop_product; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.shop_product (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    image character varying(100) NOT NULL,
    description text NOT NULL,
    price numeric(10,2) NOT NULL,
    available boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.shop_product OWNER TO socialsite1;

--
-- Name: shop_product_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.shop_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_product_id_seq OWNER TO socialsite1;

--
-- Name: shop_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.shop_product_id_seq OWNED BY public.shop_product.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO socialsite1;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO socialsite1;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: socialsite1
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO socialsite1;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: socialsite1
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO socialsite1;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: socialsite1
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: accounts_account id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account ALTER COLUMN id SET DEFAULT nextval('public.accounts_account_id_seq'::regclass);


--
-- Name: accounts_account_groups id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_account_groups_id_seq'::regclass);


--
-- Name: accounts_account_user_permissions id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_account_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: blog_comment id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: orders_order id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.orders_order ALTER COLUMN id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: orders_orderitem id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.orders_orderitem ALTER COLUMN id SET DEFAULT nextval('public.orders_orderitem_id_seq'::regclass);


--
-- Name: shop_category id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.shop_category ALTER COLUMN id SET DEFAULT nextval('public.shop_category_id_seq'::regclass);


--
-- Name: shop_product id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.shop_product ALTER COLUMN id SET DEFAULT nextval('public.shop_product_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Data for Name: accounts_account; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.accounts_account (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, patronymic_name, birthday, city, photo, description, phone, telegram) FROM stdin;
1	pbkdf2_sha256$260000$Dm32OSvMh7ua8BoQ3XT9vs$tk5G0Aa/l1LjMEYf6ItysYkAG8XjVmJNi90El+jNc04=	2021-08-02 18:57:14.330157+04	t	dmitry			morgoth89@mail.ru	t	t	2021-07-31 19:32:19.486955+04	\N	\N	\N		\N	\N	\N
\.


--
-- Data for Name: accounts_account_groups; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.accounts_account_groups (id, account_id, group_id) FROM stdin;
\.


--
-- Data for Name: accounts_account_user_permissions; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.accounts_account_user_permissions (id, account_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add account	6	add_account
22	Can change account	6	change_account
23	Can delete account	6	delete_account
24	Can view account	6	view_account
25	Can add post	7	add_post
26	Can change post	7	change_post
27	Can delete post	7	delete_post
28	Can view post	7	view_post
29	Can add product	8	add_product
30	Can change product	8	change_product
31	Can delete product	8	delete_product
32	Can view product	8	view_product
33	Can add category	9	add_category
34	Can change category	9	change_category
35	Can delete category	9	delete_category
36	Can view category	9	view_category
37	Can add comment	10	add_comment
38	Can change comment	10	change_comment
39	Can delete comment	10	delete_comment
40	Can view comment	10	view_comment
41	Can add tag	11	add_tag
42	Can change tag	11	change_tag
43	Can delete tag	11	delete_tag
44	Can view tag	11	view_tag
45	Can add tagged item	12	add_taggeditem
46	Can change tagged item	12	change_taggeditem
47	Can delete tagged item	12	delete_taggeditem
48	Can view tagged item	12	view_taggeditem
49	Can add order item	13	add_orderitem
50	Can change order item	13	change_orderitem
51	Can delete order item	13	delete_orderitem
52	Can view order item	13	view_orderitem
53	Can add order	14	add_order
54	Can change order	14	change_order
55	Can delete order	14	delete_order
56	Can view order	14	view_order
\.


--
-- Data for Name: blog_comment; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.blog_comment (id, name, email, body, created, updated, active, post_id) FROM stdin;
2	Dmitry	morgoth89@mail.ru	Пример отличного комментария	2021-08-14 12:12:01.75889+04	2021-08-14 12:12:01.758928+04	t	4
3	Dmitry	morgoth89@mail.ru	Замечательный комментарий по django	2021-08-14 13:33:05.340405+04	2021-08-14 13:33:05.34044+04	t	6
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.blog_post (id, title, slug, body, publish, created, updated, status, author_id) FROM stdin;
4	О javascript	o-javascript	JavaScript  — мультипарадигменный язык программирования. Поддерживает объектно-ориентированный, императивный и функциональный стили. Является реализацией спецификации ECMAScript.\r\n\r\nJavaScript обычно используется как встраиваемый язык для программного доступа к объектам приложений. Наиболее широкое применение находит в браузерах как язык сценариев для придания интерактивности веб-страницам.\r\n\r\nОсновные архитектурные черты: динамическая типизация, слабая типизация, автоматическое управление памятью, прототипное программирование, функции как объекты первого класса.\r\n\r\nНа JavaScript оказали влияние многие языки, при разработке была цель сделать язык похожим на Java. Языком JavaScript не владеет какая-либо компания или организация, что отличает его от ряда языков программирования, используемых в веб-разработке.\r\n\r\nНазвание «JavaScript» является зарегистрированным товарным знаком корпорации Oracle в США	2021-08-14 12:07:13+04	2021-08-14 12:11:02.431468+04	2021-08-14 12:11:02.431496+04	published	1
5	О python	o-python	Python — высокоуровневый язык программирования общего назначения с динамической строгой типизацией и автоматическим управлением памятью, ориентированный на повышение производительности разработчика, читаемости кода и его качества, а также на обеспечение переносимости написанных на нём программ.\r\nЯзык является полностью объектно-ориентированным — всё является объектами. Необычной особенностью языка является выделение блоков кода пробельными отступами. Синтаксис ядра языка минималистичен, за счёт чего на практике редко возникает необходимость обращаться к документации. Сам же язык известен как интерпретируемый и используется в том числе для написания скриптов. Недостатками языка являются зачастую более низкая скорость работы и более высокое потребление памяти написанных на нём программ по сравнению с аналогичным кодом, написанным на компилируемых языках, таких как Си или C++.\r\n\r\nPython является мультипарадигмальным языком программирования, поддерживающим императивное, процедурное, структурное, объектно-ориентированное программирование, метапрограммирование и функциональное программирование. Задачи обобщённого программирования решаются за счёт динамической типизации. Аспектно-ориентированное программирование частично поддерживается через декораторы, более полноценная поддержка обеспечивается дополнительными фреймворками. Такие методики как контрактное и логическое программирование можно реализовать с помощью библиотек или расширений. Основные архитектурные черты — динамическая типизация, автоматическое управление памятью, полная интроспекция, механизм обработки исключений, поддержка многопоточных вычислений с глобальной блокировкой интерпретатора (GIL), высокоуровневые структуры данных. Поддерживается разбиение программ на модули, которые, в свою очередь, могут объединяться в пакеты.	2021-08-14 12:12:51+04	2021-08-14 12:16:52.67093+04	2021-08-14 12:16:52.670958+04	published	1
6	О django	o-django	Django — свободный фреймворк для веб-приложений на языке Python, использующий шаблон проектирования MVC. Проект поддерживается организацией Django Software Foundation.\r\n\r\nСайт на Django строится из одного или нескольких приложений, которые рекомендуется делать отчуждаемыми и подключаемыми. Это одно из существенных архитектурных отличий этого фреймворка от некоторых других (например, Ruby on Rails). Один из основных принципов фреймворка — DRY (англ. Don't repeat yourself)\r\n\r\nТакже, в отличие от других фреймворков, обработчики URL в Django конфигурируются явно при помощи регулярных выражений.\r\n\r\nДля работы с базой данных Django использует собственный ORM, в котором модель данных описывается классами Python, и по ней генерируется схема базы данных.\r\n\r\nАрхитектура Django похожа на «Модель-Представление-Контроллер» (MVC). Контроллер классической модели MVC примерно соответствует уровню, который в Django называется Представление (англ. View), а презентационная логика Представления реализуется в Django уровнем Шаблонов (англ. Template).\r\n\r\nПервоначальная разработка Django как средства для работы новостных ресурсов достаточно сильно отразилась на его архитектуре: он предоставляет ряд средств, которые помогают в быстрой разработке веб-сайтов информационного характера. Так, например, разработчику не требуется создавать контроллеры и страницы для административной части сайта, в Django есть встроенное приложение для управления содержимым, которое можно включить в любой сайт, сделанный на Django, и которое может управлять сразу несколькими сайтами на одном сервере. Административное приложение позволяет создавать, изменять и удалять любые объекты наполнения сайта, протоколируя все совершённые действия, и предоставляет интерфейс для управления пользователями и группами (с пообъектным назначением прав).\r\n\r\nВ дистрибутив Django также включены приложения для системы комментариев, синдикации RSS и Atom, «статических страниц» (которыми можно управлять без необходимости писать контроллеры и представления), перенаправления URL и другое.	2021-08-14 13:29:48+04	2021-08-14 13:31:49.995695+04	2021-08-14 13:31:49.995717+04	published	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-08-05 15:52:35.166092+04	1	testpost	1	[{"added": {}}]	7	1
2	2021-08-05 17:10:26.527169+04	2	testpost2	1	[{"added": {}}]	7	1
3	2021-08-06 19:48:30.913848+04	1	Test1	1	[{"added": {}}]	9	1
4	2021-08-06 19:51:58.779993+04	1	Test_product	1	[{"added": {}}]	8	1
5	2021-08-06 19:52:47.083376+04	1	Test_product	2	[]	8	1
6	2021-08-06 20:09:28.373036+04	1	Test_product	2	[{"changed": {"fields": ["Image"]}}]	8	1
7	2021-08-12 21:25:35.01141+04	3	testpost3	2	[{"changed": {"fields": ["Tags"]}}]	7	1
8	2021-08-14 12:07:04.521365+04	3	testpost3	3		7	1
9	2021-08-14 12:07:04.673829+04	1	testpost1	3		7	1
10	2021-08-14 12:07:04.682057+04	2	testpost2	3		7	1
11	2021-08-14 12:11:02.470038+04	4	О javascript	1	[{"added": {}}]	7	1
12	2021-08-14 12:16:52.689955+04	5	О python	1	[{"added": {}}]	7	1
13	2021-08-14 13:31:50.008244+04	6	О django	1	[{"added": {}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	accounts	account
7	blog	post
8	shop	product
9	shop	category
10	blog	comment
11	taggit	tag
12	taggit	taggeditem
13	orders	orderitem
14	orders	order
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-31 19:29:05.272496+04
2	contenttypes	0002_remove_content_type_name	2021-07-31 19:29:05.309798+04
3	auth	0001_initial	2021-07-31 19:29:05.85025+04
4	auth	0002_alter_permission_name_max_length	2021-07-31 19:29:05.867855+04
5	auth	0003_alter_user_email_max_length	2021-07-31 19:29:05.883312+04
6	auth	0004_alter_user_username_opts	2021-07-31 19:29:05.900092+04
7	auth	0005_alter_user_last_login_null	2021-07-31 19:29:05.916941+04
8	auth	0006_require_contenttypes_0002	2021-07-31 19:29:05.924963+04
9	auth	0007_alter_validators_add_error_messages	2021-07-31 19:29:05.94188+04
10	auth	0008_alter_user_username_max_length	2021-07-31 19:29:05.958627+04
11	auth	0009_alter_user_last_name_max_length	2021-07-31 19:29:05.975271+04
12	auth	0010_alter_group_name_max_length	2021-07-31 19:29:05.9936+04
13	auth	0011_update_proxy_permissions	2021-07-31 19:29:06.009394+04
14	auth	0012_alter_user_first_name_max_length	2021-07-31 19:29:06.025263+04
15	accounts	0001_initial	2021-07-31 19:29:06.651954+04
16	admin	0001_initial	2021-07-31 19:29:06.885142+04
17	admin	0002_logentry_remove_auto_add	2021-07-31 19:29:06.907872+04
18	admin	0003_logentry_add_action_flag_choices	2021-07-31 19:29:06.932659+04
19	sessions	0001_initial	2021-07-31 19:29:07.160419+04
20	blog	0001_initial	2021-08-01 02:13:44.16499+04
21	shop	0001_initial	2021-08-06 19:40:39.008422+04
22	shop	0002_alter_product_image	2021-08-06 20:00:07.437938+04
23	blog	0002_comment	2021-08-09 01:26:37.165688+04
24	taggit	0001_initial	2021-08-12 11:24:13.433665+04
25	taggit	0002_auto_20150616_2121	2021-08-12 11:24:13.494515+04
26	taggit	0003_taggeditem_add_unique_index	2021-08-12 11:24:13.569807+04
27	blog	0003_post_tags	2021-08-12 11:24:13.614466+04
28	orders	0001_initial	2021-08-15 17:47:10.465328+04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
cgwaiiq6n4ayhwz9o4h2zeipwxkrazi1	.eJxVjDsOgzAQBe_iOrLW-BdTpucM1nq9xCQRSAYqxN0DEkXSvpk3m4i4LiWuM9c4ZNEKJW6_W0J683iC_MLxOUmaxqUOSZ6KvOgsuynz53G5f4GCczneOodMug_KIbDnJgCzc05ZBOMd3cEnBK2oh2BNE8gyWW88QHbaMIUjSlgX0W77_gUOujqS:1mFHg9:6VxGettGzoDmY4b09EOPl0kHTAJYNZDK7q7DyER-Mac	2021-08-29 19:04:01.867609+04
\.


--
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.orders_order (id, first_name, last_name, email, address, postal_code, city, created, updated, paid) FROM stdin;
1	123	321	morgoth89@mail.ru	avr	111	samara	2021-08-15 19:03:25.00759+04	2021-08-15 19:03:25.007627+04	f
\.


--
-- Data for Name: orders_orderitem; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.orders_orderitem (id, price, quantity, order_id, product_id) FROM stdin;
1	3000.00	3	1	1
\.


--
-- Data for Name: shop_category; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.shop_category (id, name, slug) FROM stdin;
1	Test1	test1
\.


--
-- Data for Name: shop_product; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.shop_product (id, name, slug, image, description, price, available, created, updated, category_id) FROM stdin;
1	Test_product	test_product	shop/products/2021/08/06/16282637224180.jpg	TESTTESTTESTTESTTEST	3000.00	t	2021-08-06 19:51:58.774719+04	2021-08-06 20:09:28.369508+04	1
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	django	django
2	music	music
3	jazz	jazz
4	javascript	javascript
5	python	python
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: socialsite1
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
5	4	7	4
6	5	7	5
7	6	7	1
\.


--
-- Name: accounts_account_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.accounts_account_groups_id_seq', 1, false);


--
-- Name: accounts_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.accounts_account_id_seq', 1, true);


--
-- Name: accounts_account_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.accounts_account_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: blog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.blog_comment_id_seq', 3, true);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 6, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 13, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, true);


--
-- Name: orders_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.orders_orderitem_id_seq', 1, true);


--
-- Name: shop_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.shop_category_id_seq', 1, true);


--
-- Name: shop_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.shop_product_id_seq', 1, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 5, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: socialsite1
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 7, true);


--
-- Name: accounts_account_groups accounts_account_groups_account_id_group_id_f64165b0_uniq; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_groups_account_id_group_id_f64165b0_uniq UNIQUE (account_id, group_id);


--
-- Name: accounts_account_groups accounts_account_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_groups_pkey PRIMARY KEY (id);


--
-- Name: accounts_account accounts_account_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account
    ADD CONSTRAINT accounts_account_pkey PRIMARY KEY (id);


--
-- Name: accounts_account_user_permissions accounts_account_user_pe_account_id_permission_id_9af93c14_uniq; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_user_pe_account_id_permission_id_9af93c14_uniq UNIQUE (account_id, permission_id);


--
-- Name: accounts_account_user_permissions accounts_account_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: accounts_account accounts_account_username_key; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account
    ADD CONSTRAINT accounts_account_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: blog_comment blog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: orders_order orders_order_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);


--
-- Name: orders_orderitem orders_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.orders_orderitem
    ADD CONSTRAINT orders_orderitem_pkey PRIMARY KEY (id);


--
-- Name: shop_category shop_category_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.shop_category
    ADD CONSTRAINT shop_category_pkey PRIMARY KEY (id);


--
-- Name: shop_category shop_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.shop_category
    ADD CONSTRAINT shop_category_slug_key UNIQUE (slug);


--
-- Name: shop_product shop_product_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: accounts_account_groups_account_id_52f14852; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX accounts_account_groups_account_id_52f14852 ON public.accounts_account_groups USING btree (account_id);


--
-- Name: accounts_account_groups_group_id_7c6a6bd1; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX accounts_account_groups_group_id_7c6a6bd1 ON public.accounts_account_groups USING btree (group_id);


--
-- Name: accounts_account_user_permissions_account_id_816f9bde; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX accounts_account_user_permissions_account_id_816f9bde ON public.accounts_account_user_permissions USING btree (account_id);


--
-- Name: accounts_account_user_permissions_permission_id_24620205; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX accounts_account_user_permissions_permission_id_24620205 ON public.accounts_account_user_permissions USING btree (permission_id);


--
-- Name: accounts_account_username_b5f69a28_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX accounts_account_username_b5f69a28_like ON public.accounts_account USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: blog_comment_post_id_580e96ef; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- Name: blog_post_slug_b95473f2; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX blog_post_slug_b95473f2 ON public.blog_post USING btree (slug);


--
-- Name: blog_post_slug_b95473f2_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: orders_orderitem_order_id_fe61a34d; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX orders_orderitem_order_id_fe61a34d ON public.orders_orderitem USING btree (order_id);


--
-- Name: orders_orderitem_product_id_afe4254a; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX orders_orderitem_product_id_afe4254a ON public.orders_orderitem USING btree (product_id);


--
-- Name: shop_category_name_11b68823; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_category_name_11b68823 ON public.shop_category USING btree (name);


--
-- Name: shop_category_name_11b68823_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_category_name_11b68823_like ON public.shop_category USING btree (name varchar_pattern_ops);


--
-- Name: shop_category_slug_4508178e_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_category_slug_4508178e_like ON public.shop_category USING btree (slug varchar_pattern_ops);


--
-- Name: shop_product_category_id_14d7eea8; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_product_category_id_14d7eea8 ON public.shop_product USING btree (category_id);


--
-- Name: shop_product_id_slug_68aad32e_idx; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_product_id_slug_68aad32e_idx ON public.shop_product USING btree (id, slug);


--
-- Name: shop_product_name_b8d5e94c; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_product_name_b8d5e94c ON public.shop_product USING btree (name);


--
-- Name: shop_product_name_b8d5e94c_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_product_name_b8d5e94c_like ON public.shop_product USING btree (name varchar_pattern_ops);


--
-- Name: shop_product_slug_30bd2d5d; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_product_slug_30bd2d5d ON public.shop_product USING btree (slug);


--
-- Name: shop_product_slug_30bd2d5d_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX shop_product_slug_30bd2d5d_like ON public.shop_product USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: socialsite1
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: accounts_account_groups accounts_account_gro_account_id_52f14852_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_gro_account_id_52f14852_fk_accounts_ FOREIGN KEY (account_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_account_groups accounts_account_groups_group_id_7c6a6bd1_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_groups
    ADD CONSTRAINT accounts_account_groups_group_id_7c6a6bd1_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_account_user_permissions accounts_account_use_account_id_816f9bde_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_use_account_id_816f9bde_fk_accounts_ FOREIGN KEY (account_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_account_user_permissions accounts_account_use_permission_id_24620205_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.accounts_account_user_permissions
    ADD CONSTRAINT accounts_account_use_permission_id_24620205_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_accounts_account_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_accounts_account_id FOREIGN KEY (author_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_account_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_account_id FOREIGN KEY (user_id) REFERENCES public.accounts_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_orderitem orders_orderitem_order_id_fe61a34d_fk_orders_order_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.orders_orderitem
    ADD CONSTRAINT orders_orderitem_order_id_fe61a34d_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_orderitem orders_orderitem_product_id_afe4254a_fk_shop_product_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.orders_orderitem
    ADD CONSTRAINT orders_orderitem_product_id_afe4254a_fk_shop_product_id FOREIGN KEY (product_id) REFERENCES public.shop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_product shop_product_category_id_14d7eea8_fk_shop_category_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_category_id_14d7eea8_fk_shop_category_id FOREIGN KEY (category_id) REFERENCES public.shop_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: socialsite1
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

