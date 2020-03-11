--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Debian 11.1-2)
-- Dumped by pg_dump version 12.2 (Debian 12.2-1)

-- Started on 2020-03-11 15:11:54 WIB

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'ISO_8859_7';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 200 (class 1259 OID 16454)
-- Name: Messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Messages" (
    id integer NOT NULL,
    message text NOT NULL,
    status integer NOT NULL,
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Messages" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16452)
-- Name: Messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Messages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Messages_id_seq" OWNER TO postgres;

--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 199
-- Name: Messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Messages_id_seq" OWNED BY public."Messages".id;


--
-- TOC entry 196 (class 1259 OID 16434)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16441)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16439)
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO postgres;

--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 197
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- TOC entry 3430 (class 2604 OID 16457)
-- Name: Messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Messages" ALTER COLUMN id SET DEFAULT nextval('public."Messages_id_seq"'::regclass);


--
-- TOC entry 3429 (class 2604 OID 16444)
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- TOC entry 3565 (class 0 OID 16454)
-- Dependencies: 200
-- Data for Name: Messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Messages" (id, message, status, "userId", "createdAt", "updatedAt") VALUES (1, 'Who are you?', 1, 1, '2020-03-11 04:21:08.669+00', '2020-03-11 04:21:08.669+00');
INSERT INTO public."Messages" (id, message, status, "userId", "createdAt", "updatedAt") VALUES (2, 'Where are you?', 0, 2, '2020-03-11 04:32:50.634+00', '2020-03-11 04:32:50.634+00');
INSERT INTO public."Messages" (id, message, status, "userId", "createdAt", "updatedAt") VALUES (3, 'What are you doing?', 1, 2, '2020-03-11 05:50:00.197+00', '2020-03-11 05:50:00.197+00');
INSERT INTO public."Messages" (id, message, status, "userId", "createdAt", "updatedAt") VALUES (4, 'What are you doing?', 1, 2, '2020-03-11 07:44:22.153+00', '2020-03-11 07:44:22.153+00');


--
-- TOC entry 3561 (class 0 OID 16434)
-- Dependencies: 196
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SequelizeMeta" (name) VALUES ('20200310043813-create-user.js');
INSERT INTO public."SequelizeMeta" (name) VALUES ('20200311035723-create-message.js');


--
-- TOC entry 3563 (class 0 OID 16441)
-- Dependencies: 198
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Users" (id, name, username, email, password, "createdAt", "updatedAt") VALUES (1, 'Alpredo', 'alpredovandy', 'alpredovandy@gmail.com', 'Hasian26', '2020-03-11 04:19:37.129+00', '2020-03-11 04:19:37.129+00');
INSERT INTO public."Users" (id, name, username, email, password, "createdAt", "updatedAt") VALUES (2, 'Budi Setiawan', 'budisetia', 'budisetia@gmail.com', 'Setia123', '2020-03-11 04:32:24.53+00', '2020-03-11 04:32:24.53+00');


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 199
-- Name: Messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Messages_id_seq"', 4, true);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 197
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_id_seq"', 2, true);


--
-- TOC entry 3438 (class 2606 OID 16462)
-- Name: Messages Messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_pkey" PRIMARY KEY (id);


--
-- TOC entry 3432 (class 2606 OID 16438)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 3434 (class 2606 OID 16451)
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- TOC entry 3436 (class 2606 OID 16449)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- TOC entry 3439 (class 2606 OID 16463)
-- Name: Messages Messages_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE CASCADE;


-- Completed on 2020-03-11 15:11:54 WIB

--
-- PostgreSQL database dump complete
--

