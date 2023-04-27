--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    count integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (126, 51, 140);
INSERT INTO public.games VALUES (127, 51, 475);
INSERT INTO public.games VALUES (128, 53, 646);
INSERT INTO public.games VALUES (129, 54, 131);
INSERT INTO public.games VALUES (130, 53, 168);
INSERT INTO public.games VALUES (131, 53, 809);
INSERT INTO public.games VALUES (132, 53, 376);
INSERT INTO public.games VALUES (133, 56, 10);
INSERT INTO public.games VALUES (134, 56, 3);
INSERT INTO public.games VALUES (135, 57, 679);
INSERT INTO public.games VALUES (136, 57, 362);
INSERT INTO public.games VALUES (137, 58, 83);
INSERT INTO public.games VALUES (138, 58, 395);
INSERT INTO public.games VALUES (139, 57, 644);
INSERT INTO public.games VALUES (140, 57, 22);
INSERT INTO public.games VALUES (141, 57, 534);
INSERT INTO public.games VALUES (142, 59, 845);
INSERT INTO public.games VALUES (143, 60, 422);
INSERT INTO public.games VALUES (144, 60, 445);
INSERT INTO public.games VALUES (145, 59, 261);
INSERT INTO public.games VALUES (146, 59, 355);
INSERT INTO public.games VALUES (147, 59, 209);
INSERT INTO public.games VALUES (148, 61, 956);
INSERT INTO public.games VALUES (149, 61, 327);
INSERT INTO public.games VALUES (150, 62, 977);
INSERT INTO public.games VALUES (151, 62, 445);
INSERT INTO public.games VALUES (152, 61, 412);
INSERT INTO public.games VALUES (153, 61, 848);
INSERT INTO public.games VALUES (154, 61, 916);
INSERT INTO public.games VALUES (123, 51, 172);
INSERT INTO public.games VALUES (124, 52, 580);
INSERT INTO public.games VALUES (125, 51, 625);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (51, 'user_1682604680613');
INSERT INTO public.users VALUES (52, 'user_1682604680612');
INSERT INTO public.users VALUES (53, 'user_1682604704811');
INSERT INTO public.users VALUES (54, 'user_1682604704810');
INSERT INTO public.users VALUES (55, 'test');
INSERT INTO public.users VALUES (56, 'asd');
INSERT INTO public.users VALUES (57, 'user_1682605406452');
INSERT INTO public.users VALUES (58, 'user_1682605406451');
INSERT INTO public.users VALUES (59, 'user_1682605453993');
INSERT INTO public.users VALUES (60, 'user_1682605453992');
INSERT INTO public.users VALUES (61, 'user_1682605469074');
INSERT INTO public.users VALUES (62, 'user_1682605469073');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 154, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 62, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

