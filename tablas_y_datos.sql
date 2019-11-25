--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2019-11-15 18:20:43 CST

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

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 25162)
-- Name: aduana; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aduana (
    id_aduana integer NOT NULL,
    nombre_aduana character varying(128) NOT NULL,
    direccion_aduana character varying(1024) NOT NULL,
    activo_aduana boolean NOT NULL,
    id_pais integer NOT NULL
);


--
-- TOC entry 196 (class 1259 OID 25160)
-- Name: aduana_id_aduana_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.aduana_id_aduana_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 196
-- Name: aduana_id_aduana_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.aduana_id_aduana_seq OWNED BY public.aduana.id_aduana;


--
-- TOC entry 198 (class 1259 OID 25172)
-- Name: aplica; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aplica (
    id_multa integer NOT NULL,
    id_pasa integer NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 25182)
-- Name: arancel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.arancel (
    id_arancel integer NOT NULL,
    id_conversion_dolar integer NOT NULL,
    tasa_entrada_arancel numeric(5,2) NOT NULL,
    tasa_paso_arancel numeric(5,2) NOT NULL,
    fecha_arancel date NOT NULL,
    activo_arancel boolean NOT NULL,
    id_tipo_mercancia integer NOT NULL,
    id_pais integer NOT NULL
);


--
-- TOC entry 199 (class 1259 OID 25180)
-- Name: arancel_id_arancel_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.arancel_id_arancel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 199
-- Name: arancel_id_arancel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.arancel_id_arancel_seq OWNED BY public.arancel.id_arancel;


--
-- TOC entry 202 (class 1259 OID 25192)
-- Name: conversion_dolar; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.conversion_dolar (
    id_conversion_dolar integer NOT NULL,
    valor_conversion_dolar numeric(8,2) NOT NULL,
    fecha_conversion_dolar date NOT NULL,
    activo_conversion_dolar boolean NOT NULL
);


--
-- TOC entry 201 (class 1259 OID 25190)
-- Name: conversion_dolar_id_conversion_dolar_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.conversion_dolar_id_conversion_dolar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 201
-- Name: conversion_dolar_id_conversion_dolar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.conversion_dolar_id_conversion_dolar_seq OWNED BY public.conversion_dolar.id_conversion_dolar;


--
-- TOC entry 204 (class 1259 OID 25201)
-- Name: estado_paso; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.estado_paso (
    id_estado_paso integer NOT NULL,
    nombre_estado_paso character varying(128) NOT NULL,
    descripcion_estado_paso character varying(1024) NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 25199)
-- Name: estado_paso_id_estado_paso_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.estado_paso_id_estado_paso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 203
-- Name: estado_paso_id_estado_paso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.estado_paso_id_estado_paso_seq OWNED BY public.estado_paso.id_estado_paso;


--
-- TOC entry 206 (class 1259 OID 25213)
-- Name: iva; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.iva (
    id_iva integer NOT NULL,
    tasa_iva numeric(5,2) NOT NULL,
    fecha_iva date NOT NULL,
    activo_iva boolean NOT NULL
);


--
-- TOC entry 205 (class 1259 OID 25211)
-- Name: iva_id_iva_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.iva_id_iva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 205
-- Name: iva_id_iva_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.iva_id_iva_seq OWNED BY public.iva.id_iva;


--
-- TOC entry 208 (class 1259 OID 25222)
-- Name: multa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.multa (
    id_multa integer NOT NULL,
    id_tipo_multa integer NOT NULL,
    tasa_multa numeric(5,2) NOT NULL,
    fecha_multa date NOT NULL,
    activo_multa boolean NOT NULL
);


--
-- TOC entry 207 (class 1259 OID 25220)
-- Name: multa_id_multa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.multa_id_multa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 207
-- Name: multa_id_multa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.multa_id_multa_seq OWNED BY public.multa.id_multa;


--
-- TOC entry 210 (class 1259 OID 25232)
-- Name: pasa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pasa (
    id_pasa integer NOT NULL,
    id_estado_paso integer NOT NULL,
    id_arancel integer,
    id_aduana integer NOT NULL,
    id_iva integer,
    fecha_pasa date NOT NULL,
    id_transporte integer NOT NULL,
    id_mercancia integer NOT NULL
);


--
-- TOC entry 209 (class 1259 OID 25230)
-- Name: pasa_id_pasa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pasa_id_pasa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 209
-- Name: pasa_id_pasa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pasa_id_pasa_seq OWNED BY public.pasa.id_pasa;


--
-- TOC entry 212 (class 1259 OID 25245)
-- Name: tipo_multa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tipo_multa (
    id_tipo_multa integer NOT NULL,
    nombre_tipo_multa character varying(128) NOT NULL,
    activo_tipo_multa boolean NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 25243)
-- Name: tipo_multa_id_tipo_multa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tipo_multa_id_tipo_multa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 211
-- Name: tipo_multa_id_tipo_multa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tipo_multa_id_tipo_multa_seq OWNED BY public.tipo_multa.id_tipo_multa;


--
-- TOC entry 2842 (class 2604 OID 25165)
-- Name: aduana id_aduana; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aduana ALTER COLUMN id_aduana SET DEFAULT nextval('public.aduana_id_aduana_seq'::regclass);


--
-- TOC entry 2843 (class 2604 OID 25185)
-- Name: arancel id_arancel; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.arancel ALTER COLUMN id_arancel SET DEFAULT nextval('public.arancel_id_arancel_seq'::regclass);


--
-- TOC entry 2844 (class 2604 OID 25195)
-- Name: conversion_dolar id_conversion_dolar; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.conversion_dolar ALTER COLUMN id_conversion_dolar SET DEFAULT nextval('public.conversion_dolar_id_conversion_dolar_seq'::regclass);


--
-- TOC entry 2845 (class 2604 OID 25204)
-- Name: estado_paso id_estado_paso; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estado_paso ALTER COLUMN id_estado_paso SET DEFAULT nextval('public.estado_paso_id_estado_paso_seq'::regclass);


--
-- TOC entry 2846 (class 2604 OID 25216)
-- Name: iva id_iva; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.iva ALTER COLUMN id_iva SET DEFAULT nextval('public.iva_id_iva_seq'::regclass);


--
-- TOC entry 2847 (class 2604 OID 25225)
-- Name: multa id_multa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.multa ALTER COLUMN id_multa SET DEFAULT nextval('public.multa_id_multa_seq'::regclass);


--
-- TOC entry 2848 (class 2604 OID 25235)
-- Name: pasa id_pasa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasa ALTER COLUMN id_pasa SET DEFAULT nextval('public.pasa_id_pasa_seq'::regclass);


--
-- TOC entry 2849 (class 2604 OID 25248)
-- Name: tipo_multa id_tipo_multa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_multa ALTER COLUMN id_tipo_multa SET DEFAULT nextval('public.tipo_multa_id_tipo_multa_seq'::regclass);


--
-- TOC entry 3015 (class 0 OID 25162)
-- Dependencies: 197
-- Data for Name: aduana; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.aduana (id_aduana, nombre_aduana, direccion_aduana, activo_aduana, id_pais) VALUES (1, 'El Amatillo', 'Ciudad de Pasaquina, La Unión.', true, 2);
INSERT INTO public.aduana (id_aduana, nombre_aduana, direccion_aduana, activo_aduana, id_pais) VALUES (2, 'La Hachadura', 'Caserío Puente Arce, Cantón La Hachadura, Ahuachapán.', true, 2);
INSERT INTO public.aduana (id_aduana, nombre_aduana, direccion_aduana, activo_aduana, id_pais) VALUES (3, 'El Poy', 'Km. 96 Carretera Troncal del Norte, Citalá, Chalatenango.', true, 2);
INSERT INTO public.aduana (id_aduana, nombre_aduana, direccion_aduana, activo_aduana, id_pais) VALUES (4, 'Las Chinamas', 'Cantón Puente El Jobo, Ahuachapán Km. 112, Ahuachapán.', true, 2);


--
-- TOC entry 3016 (class 0 OID 25172)
-- Dependencies: 198
-- Data for Name: aplica; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.aplica (id_multa, id_pasa) VALUES (1, 1);
INSERT INTO public.aplica (id_multa, id_pasa) VALUES (2, 2);
INSERT INTO public.aplica (id_multa, id_pasa) VALUES (3, 3);
INSERT INTO public.aplica (id_multa, id_pasa) VALUES (4, 4);
INSERT INTO public.aplica (id_multa, id_pasa) VALUES (1, 5);
INSERT INTO public.aplica (id_multa, id_pasa) VALUES (2, 6);
INSERT INTO public.aplica (id_multa, id_pasa) VALUES (3, 7);


--
-- TOC entry 3018 (class 0 OID 25182)
-- Dependencies: 200
-- Data for Name: arancel; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.arancel (id_arancel, id_conversion_dolar, tasa_entrada_arancel, tasa_paso_arancel, fecha_arancel, activo_arancel, id_tipo_mercancia, id_pais) VALUES (1, 1, 0.12, 0.15, '2017-05-12', true, 2, 2);
INSERT INTO public.arancel (id_arancel, id_conversion_dolar, tasa_entrada_arancel, tasa_paso_arancel, fecha_arancel, activo_arancel, id_tipo_mercancia, id_pais) VALUES (2, 3, 0.05, 0.20, '2017-10-24', true, 5, 2);
INSERT INTO public.arancel (id_arancel, id_conversion_dolar, tasa_entrada_arancel, tasa_paso_arancel, fecha_arancel, activo_arancel, id_tipo_mercancia, id_pais) VALUES (3, 2, 0.15, 0.10, '2018-01-01', true, 8, 2);
INSERT INTO public.arancel (id_arancel, id_conversion_dolar, tasa_entrada_arancel, tasa_paso_arancel, fecha_arancel, activo_arancel, id_tipo_mercancia, id_pais) VALUES (4, 4, 0.20, 0.05, '2018-06-23', true, 10, 2);
INSERT INTO public.arancel (id_arancel, id_conversion_dolar, tasa_entrada_arancel, tasa_paso_arancel, fecha_arancel, activo_arancel, id_tipo_mercancia, id_pais) VALUES (5, 6, 0.14, 0.14, '2019-04-02', true, 9, 2);
INSERT INTO public.arancel (id_arancel, id_conversion_dolar, tasa_entrada_arancel, tasa_paso_arancel, fecha_arancel, activo_arancel, id_tipo_mercancia, id_pais) VALUES (6, 5, 0.16, 0.13, '2019-08-28', true, 1, 2);


--
-- TOC entry 3020 (class 0 OID 25192)
-- Dependencies: 202
-- Data for Name: conversion_dolar; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.conversion_dolar (id_conversion_dolar, valor_conversion_dolar, fecha_conversion_dolar, activo_conversion_dolar) VALUES (1, 1.10, '2018-05-16', true);
INSERT INTO public.conversion_dolar (id_conversion_dolar, valor_conversion_dolar, fecha_conversion_dolar, activo_conversion_dolar) VALUES (2, 8.75, '2018-06-14', false);
INSERT INTO public.conversion_dolar (id_conversion_dolar, valor_conversion_dolar, fecha_conversion_dolar, activo_conversion_dolar) VALUES (3, 7.64, '2018-11-25', false);
INSERT INTO public.conversion_dolar (id_conversion_dolar, valor_conversion_dolar, fecha_conversion_dolar, activo_conversion_dolar) VALUES (4, 21.44, '2019-03-01', false);
INSERT INTO public.conversion_dolar (id_conversion_dolar, valor_conversion_dolar, fecha_conversion_dolar, activo_conversion_dolar) VALUES (5, 545.49, '2019-08-09', false);
INSERT INTO public.conversion_dolar (id_conversion_dolar, valor_conversion_dolar, fecha_conversion_dolar, activo_conversion_dolar) VALUES (6, 26.32, '2019-09-29', false);


--
-- TOC entry 3022 (class 0 OID 25201)
-- Dependencies: 204
-- Data for Name: estado_paso; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estado_paso (id_estado_paso, nombre_estado_paso, descripcion_estado_paso) VALUES (1, 'Aduana de partida', 'Se refiere a un país de la región centroamericana que autoriza el inicio de una operación de Tránsito Aduanero Internacional');
INSERT INTO public.estado_paso (id_estado_paso, nombre_estado_paso, descripcion_estado_paso) VALUES (2, 'Aduana de paso', 'Las mercancías cruzan con motivo de una operación de Tránsito Aduanero Internacional.');
INSERT INTO public.estado_paso (id_estado_paso, nombre_estado_paso, descripcion_estado_paso) VALUES (3, 'Aduna de destino ', 'La Aduana de un país signatario, en donde termina una operación de Tránsito Aduanero Internacional.');


--
-- TOC entry 3024 (class 0 OID 25213)
-- Dependencies: 206
-- Data for Name: iva; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.iva (id_iva, tasa_iva, fecha_iva, activo_iva) VALUES (1, 0.10, '2001-01-02', false);
INSERT INTO public.iva (id_iva, tasa_iva, fecha_iva, activo_iva) VALUES (2, 0.13, '2010-12-12', true);
INSERT INTO public.iva (id_iva, tasa_iva, fecha_iva, activo_iva) VALUES (3, 0.15, '2013-05-19', false);
INSERT INTO public.iva (id_iva, tasa_iva, fecha_iva, activo_iva) VALUES (4, 0.05, '2014-07-25', false);


--
-- TOC entry 3026 (class 0 OID 25222)
-- Dependencies: 208
-- Data for Name: multa; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.multa (id_multa, id_tipo_multa, tasa_multa, fecha_multa, activo_multa) VALUES (1, 1, 0.10, '2017-06-15', true);
INSERT INTO public.multa (id_multa, id_tipo_multa, tasa_multa, fecha_multa, activo_multa) VALUES (2, 2, 0.20, '2018-10-16', false);
INSERT INTO public.multa (id_multa, id_tipo_multa, tasa_multa, fecha_multa, activo_multa) VALUES (3, 2, 0.25, '2019-02-25', true);
INSERT INTO public.multa (id_multa, id_tipo_multa, tasa_multa, fecha_multa, activo_multa) VALUES (4, 3, 0.15, '2019-04-14', true);


--
-- TOC entry 3028 (class 0 OID 25232)
-- Dependencies: 210
-- Data for Name: pasa; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pasa (id_pasa, id_estado_paso, id_arancel, id_aduana, id_iva, fecha_pasa, id_transporte, id_mercancia) VALUES (1, 1, 1, 1, 1, '2019-03-25', 1, 1);
INSERT INTO public.pasa (id_pasa, id_estado_paso, id_arancel, id_aduana, id_iva, fecha_pasa, id_transporte, id_mercancia) VALUES (2, 2, 2, 2, 2, '2019-05-26', 5, 6);
INSERT INTO public.pasa (id_pasa, id_estado_paso, id_arancel, id_aduana, id_iva, fecha_pasa, id_transporte, id_mercancia) VALUES (3, 3, 3, 2, 3, '2019-07-02', 7, 8);
INSERT INTO public.pasa (id_pasa, id_estado_paso, id_arancel, id_aduana, id_iva, fecha_pasa, id_transporte, id_mercancia) VALUES (4, 1, 4, 3, 2, '2019-08-13', 5, 10);
INSERT INTO public.pasa (id_pasa, id_estado_paso, id_arancel, id_aduana, id_iva, fecha_pasa, id_transporte, id_mercancia) VALUES (5, 2, 5, 4, 1, '2019-09-14', 6, 5);
INSERT INTO public.pasa (id_pasa, id_estado_paso, id_arancel, id_aduana, id_iva, fecha_pasa, id_transporte, id_mercancia) VALUES (6, 3, 6, 3, 4, '2019-10-30', 8, 7);
INSERT INTO public.pasa (id_pasa, id_estado_paso, id_arancel, id_aduana, id_iva, fecha_pasa, id_transporte, id_mercancia) VALUES (7, 2, 1, 1, 3, '2019-11-05', 9, 2);


--
-- TOC entry 3030 (class 0 OID 25245)
-- Dependencies: 212
-- Data for Name: tipo_multa; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tipo_multa (id_tipo_multa, nombre_tipo_multa, activo_tipo_multa) VALUES (1, 'Administrativa', true);
INSERT INTO public.tipo_multa (id_tipo_multa, nombre_tipo_multa, activo_tipo_multa) VALUES (2, 'Tributaria', true);
INSERT INTO public.tipo_multa (id_tipo_multa, nombre_tipo_multa, activo_tipo_multa) VALUES (3, 'Penal', true);


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 196
-- Name: aduana_id_aduana_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.aduana_id_aduana_seq', 4, true);


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 199
-- Name: arancel_id_arancel_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.arancel_id_arancel_seq', 6, true);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 201
-- Name: conversion_dolar_id_conversion_dolar_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.conversion_dolar_id_conversion_dolar_seq', 6, true);


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 203
-- Name: estado_paso_id_estado_paso_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.estado_paso_id_estado_paso_seq', 3, true);


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 205
-- Name: iva_id_iva_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.iva_id_iva_seq', 4, true);


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 207
-- Name: multa_id_multa_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.multa_id_multa_seq', 4, true);


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 209
-- Name: pasa_id_pasa_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pasa_id_pasa_seq', 7, true);


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 211
-- Name: tipo_multa_id_tipo_multa_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tipo_multa_id_tipo_multa_seq', 3, true);


--
-- TOC entry 2852 (class 2606 OID 25170)
-- Name: aduana pk_aduana; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aduana
    ADD CONSTRAINT pk_aduana PRIMARY KEY (id_aduana);


--
-- TOC entry 2857 (class 2606 OID 25176)
-- Name: aplica pk_aplica; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aplica
    ADD CONSTRAINT pk_aplica PRIMARY KEY (id_multa, id_pasa);


--
-- TOC entry 2860 (class 2606 OID 25187)
-- Name: arancel pk_arancel; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.arancel
    ADD CONSTRAINT pk_arancel PRIMARY KEY (id_arancel);


--
-- TOC entry 2864 (class 2606 OID 25197)
-- Name: conversion_dolar pk_conversion_dolar; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.conversion_dolar
    ADD CONSTRAINT pk_conversion_dolar PRIMARY KEY (id_conversion_dolar);


--
-- TOC entry 2867 (class 2606 OID 25209)
-- Name: estado_paso pk_estado_paso; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estado_paso
    ADD CONSTRAINT pk_estado_paso PRIMARY KEY (id_estado_paso);


--
-- TOC entry 2870 (class 2606 OID 25218)
-- Name: iva pk_iva; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.iva
    ADD CONSTRAINT pk_iva PRIMARY KEY (id_iva);


--
-- TOC entry 2873 (class 2606 OID 25227)
-- Name: multa pk_multa; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.multa
    ADD CONSTRAINT pk_multa PRIMARY KEY (id_multa);


--
-- TOC entry 2877 (class 2606 OID 25237)
-- Name: pasa pk_pasa; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasa
    ADD CONSTRAINT pk_pasa PRIMARY KEY (id_pasa);


--
-- TOC entry 2883 (class 2606 OID 25250)
-- Name: tipo_multa pk_tipo_multa; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_multa
    ADD CONSTRAINT pk_tipo_multa PRIMARY KEY (id_tipo_multa);


--
-- TOC entry 2850 (class 1259 OID 25171)
-- Name: aduana_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX aduana_pk ON public.aduana USING btree (id_aduana);


--
-- TOC entry 2853 (class 1259 OID 25178)
-- Name: aplica2_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX aplica2_fk ON public.aplica USING btree (id_pasa);


--
-- TOC entry 2854 (class 1259 OID 25179)
-- Name: aplica_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX aplica_fk ON public.aplica USING btree (id_multa);


--
-- TOC entry 2855 (class 1259 OID 25177)
-- Name: aplica_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX aplica_pk ON public.aplica USING btree (id_multa, id_pasa);


--
-- TOC entry 2858 (class 1259 OID 25188)
-- Name: arancel_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX arancel_pk ON public.arancel USING btree (id_arancel);


--
-- TOC entry 2862 (class 1259 OID 25198)
-- Name: conversion_dolar_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX conversion_dolar_pk ON public.conversion_dolar USING btree (id_conversion_dolar);


--
-- TOC entry 2865 (class 1259 OID 25210)
-- Name: estado_paso_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX estado_paso_pk ON public.estado_paso USING btree (id_estado_paso);


--
-- TOC entry 2868 (class 1259 OID 25219)
-- Name: iva_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX iva_pk ON public.iva USING btree (id_iva);


--
-- TOC entry 2871 (class 1259 OID 25228)
-- Name: multa_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX multa_pk ON public.multa USING btree (id_multa);


--
-- TOC entry 2875 (class 1259 OID 25238)
-- Name: pasa_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pasa_pk ON public.pasa USING btree (id_pasa);


--
-- TOC entry 2878 (class 1259 OID 25239)
-- Name: relationship_1_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relationship_1_fk ON public.pasa USING btree (id_estado_paso);


--
-- TOC entry 2874 (class 1259 OID 25229)
-- Name: relationship_3_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relationship_3_fk ON public.multa USING btree (id_tipo_multa);


--
-- TOC entry 2879 (class 1259 OID 25240)
-- Name: relationship_5_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relationship_5_fk ON public.pasa USING btree (id_arancel);


--
-- TOC entry 2880 (class 1259 OID 25241)
-- Name: relationship_7_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relationship_7_fk ON public.pasa USING btree (id_aduana);


--
-- TOC entry 2861 (class 1259 OID 25189)
-- Name: relationship_8_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relationship_8_fk ON public.arancel USING btree (id_conversion_dolar);


--
-- TOC entry 2881 (class 1259 OID 25242)
-- Name: relationship_9_fk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX relationship_9_fk ON public.pasa USING btree (id_iva);


--
-- TOC entry 2884 (class 1259 OID 25251)
-- Name: tipo_multa_pk; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX tipo_multa_pk ON public.tipo_multa USING btree (id_tipo_multa);


--
-- TOC entry 2886 (class 2606 OID 25257)
-- Name: aplica fk_aplica_aplica2_pasa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aplica
    ADD CONSTRAINT fk_aplica_aplica2_pasa FOREIGN KEY (id_pasa) REFERENCES public.pasa(id_pasa) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2885 (class 2606 OID 25252)
-- Name: aplica fk_aplica_aplica_multa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aplica
    ADD CONSTRAINT fk_aplica_aplica_multa FOREIGN KEY (id_multa) REFERENCES public.multa(id_multa) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2887 (class 2606 OID 25262)
-- Name: arancel fk_arancel_relations_conversi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.arancel
    ADD CONSTRAINT fk_arancel_relations_conversi FOREIGN KEY (id_conversion_dolar) REFERENCES public.conversion_dolar(id_conversion_dolar) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2888 (class 2606 OID 25267)
-- Name: multa fk_multa_relations_tipo_mul; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.multa
    ADD CONSTRAINT fk_multa_relations_tipo_mul FOREIGN KEY (id_tipo_multa) REFERENCES public.tipo_multa(id_tipo_multa) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2891 (class 2606 OID 25282)
-- Name: pasa fk_pasa_relations_aduana; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasa
    ADD CONSTRAINT fk_pasa_relations_aduana FOREIGN KEY (id_aduana) REFERENCES public.aduana(id_aduana) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2890 (class 2606 OID 25277)
-- Name: pasa fk_pasa_relations_arancel; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasa
    ADD CONSTRAINT fk_pasa_relations_arancel FOREIGN KEY (id_arancel) REFERENCES public.arancel(id_arancel) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2889 (class 2606 OID 25272)
-- Name: pasa fk_pasa_relations_estado_p; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasa
    ADD CONSTRAINT fk_pasa_relations_estado_p FOREIGN KEY (id_estado_paso) REFERENCES public.estado_paso(id_estado_paso) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2892 (class 2606 OID 25287)
-- Name: pasa fk_pasa_relations_iva; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasa
    ADD CONSTRAINT fk_pasa_relations_iva FOREIGN KEY (id_iva) REFERENCES public.iva(id_iva) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2019-11-15 18:20:44 CST

--
-- PostgreSQL database dump complete
--

