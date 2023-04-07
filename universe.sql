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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    year_discovered integer,
    discover character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: junction_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.junction_table (
    junction_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.junction_table OWNER TO freecodecamp;

--
-- Name: junction_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.junction_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.junction_table_id_seq OWNER TO freecodecamp;

--
-- Name: junction_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.junction_table_id_seq OWNED BY public.junction_table.junction_table_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    moon_age integer,
    moon_size integer,
    location numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    planet_age integer NOT NULL,
    planet_size integer NOT NULL,
    location numeric,
    water boolean,
    life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_age integer NOT NULL,
    star_size integer NOT NULL,
    location numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: junction_table junction_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table ALTER COLUMN junction_table_id SET DEFAULT nextval('public.junction_table_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'why i have to do this', 1999, 'whoever');
INSERT INTO public.galaxy VALUES (3, 'galaxy3daes', 'why i have to do this again?', 1999, 'whoever x 2');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'why i have to do this again?', 1892, 'whatever');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'why i have to do this again? again?', 1882, 'whichever');
INSERT INTO public.galaxy VALUES (7, 'galaxy6', 'why i have to do this again? again?', 1882, 'whichever');


--
-- Data for Name: junction_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.junction_table VALUES (1, 'asdasd', NULL, NULL, NULL, NULL);
INSERT INTO public.junction_table VALUES (2, 'fdfdg', NULL, NULL, NULL, NULL);
INSERT INTO public.junction_table VALUES (3, 'dasfdsghgj', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'ASD', 3, 1231, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'ASDasd', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'fdfgfd', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'asdasda', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'dfsdksjdhf', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'etuer', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'dasjsaj', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'ASDAS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'ASDFFDS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'FDGDFD', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'ASFGHFH', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'DSDFHDSFHJK', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'AS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'ASDFS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'FDD', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'ASFH', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'DSDFHJ=K', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'AYIUYUIS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'ASDFTYUTYUS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'FDTYUTD', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'ASFHTUTYU', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'DSDFHJ=KTTY', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'AYIUVCBYUIS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'ASDFTVBCYUTYUS', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'FDTYVBCCUTD', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'ASFHTUTVCBYU', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'DSDFHCVXJ=KTTY', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '01', 1, 12313, 1534554, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'sadasffg', 1, 12313, 1534554, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'earth', 3, 12314, 435534, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'asdas', 3, 1231, 35434, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'as', 2, 1312, 1321, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'fdsfsd', 2, 12312, 4334, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'sada', 1, 564576, 2321, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'whatever', 2, 123124, 132131, 123123, false, false);
INSERT INTO public.planet VALUES (10, 'asdasdafgg3eqw', 5, 3123180, 3823, 20484823832, true, true);
INSERT INTO public.planet VALUES (11, 'asdastfghgfgf', 3, 13453564, 34556, 4566678, true, false);
INSERT INTO public.planet VALUES (12, 'glkjgfhlkjdfh', 5, 895387, 146843, 464613135, false, false);
INSERT INTO public.planet VALUES (13, 'saDFGKJHDKJSFHGKJDFNg', 1, 12313, 153455, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1231, 13123, 13278123971287, 1);
INSERT INTO public.star VALUES (2, 'star1', 123, 12413, 1132343355465456, 2);
INSERT INTO public.star VALUES (3, 'star2', 123, 12413, 11323453355465456, 2);
INSERT INTO public.star VALUES (4, 'star3', 123, 12413, 113234533465456, 1);
INSERT INTO public.star VALUES (5, 'Keanu Reeves', 1233, 43123, 636543765, 5);
INSERT INTO public.star VALUES (6, 'star8', 123, 12413, 1132312533465456, 1);
INSERT INTO public.star VALUES (7, 'Adam Sandler', 1233, 43123, 6365312343765, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: junction_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.junction_table_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: junction_table junction_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_name_key UNIQUE (name);


--
-- Name: junction_table junction_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_pkey PRIMARY KEY (junction_table_id);


--
-- Name: moon moon_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_location_key UNIQUE (location);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_location_key UNIQUE (location);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_location_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_location_key UNIQUE (location);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: junction_table junction_table_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: junction_table junction_table_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: junction_table junction_table_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: junction_table junction_table_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junction_table
    ADD CONSTRAINT junction_table_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

