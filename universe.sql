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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(25),
    extra character varying(20),
    extranotnull integer DEFAULT 0 NOT NULL,
    extranotnull2 integer DEFAULT 0 NOT NULL,
    uniquetable integer
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(250),
    age integer,
    size integer,
    extra character varying(20),
    extranotnull integer DEFAULT 0 NOT NULL,
    extranotnull2 integer DEFAULT 0 NOT NULL,
    uniquetable integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(250),
    ubication text,
    is_spherical boolean,
    planet_id integer,
    extranotnull2 integer DEFAULT 0 NOT NULL,
    extranotnull integer DEFAULT 0 NOT NULL,
    uniquetable integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(250),
    is_spherical boolean,
    star_id integer,
    extra character varying(20),
    extranotnull integer DEFAULT 0 NOT NULL,
    extranotnull2 integer DEFAULT 0 NOT NULL,
    uniquetable integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(250),
    distance numeric,
    galaxy_id integer,
    extra character varying(20),
    extranotnull2 integer DEFAULT 0 NOT NULL,
    extranotnull integer DEFAULT 0 NOT NULL,
    uniquetable integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, NULL, NULL, 0, 0, NULL);
INSERT INTO public.extra VALUES (2, NULL, NULL, 0, 0, NULL);
INSERT INTO public.extra VALUES (3, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Adromeda', 10, 50, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'Cygnus', 15, 60, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis', 20, 70, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 25, 80, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (5, 'Virgo', 30, 90, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (6, 'Magellanic', 35, 100, NULL, 0, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', 'one', false, 1, 0, 0, NULL);
INSERT INTO public.moon VALUES (2, 'a', 'a', false, 2, 0, 0, NULL);
INSERT INTO public.moon VALUES (3, 'a', 'a', false, 3, 0, 0, NULL);
INSERT INTO public.moon VALUES (4, 'a', 'a', true, 4, 0, 0, NULL);
INSERT INTO public.moon VALUES (5, 'a', 'a', true, 5, 0, 0, NULL);
INSERT INTO public.moon VALUES (6, 'a', 'b', false, 6, 0, 0, NULL);
INSERT INTO public.moon VALUES (7, 'b', 'b', true, 7, 0, 0, NULL);
INSERT INTO public.moon VALUES (8, 'a', 'a', true, 4, 0, 0, NULL);
INSERT INTO public.moon VALUES (9, 'a', 'a', true, 5, 0, 0, NULL);
INSERT INTO public.moon VALUES (10, 'a', 'b', false, 6, 0, 0, NULL);
INSERT INTO public.moon VALUES (11, 'b', 'b', true, 7, 0, 0, NULL);
INSERT INTO public.moon VALUES (12, 'a', 'a', true, 4, 0, 0, NULL);
INSERT INTO public.moon VALUES (13, 'a', 'a', true, 5, 0, 0, NULL);
INSERT INTO public.moon VALUES (14, 'a', 'b', false, 6, 0, 0, NULL);
INSERT INTO public.moon VALUES (15, 'b', 'b', true, 7, 0, 0, NULL);
INSERT INTO public.moon VALUES (16, 'a', 'a', true, 4, 0, 0, NULL);
INSERT INTO public.moon VALUES (17, 'a', 'a', true, 5, 0, 0, NULL);
INSERT INTO public.moon VALUES (18, 'a', 'b', false, 6, 0, 0, NULL);
INSERT INTO public.moon VALUES (19, 'b', 'b', true, 7, 0, 0, NULL);
INSERT INTO public.moon VALUES (20, 'a', 'a', true, 4, 0, 0, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', false, 1, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (2, 'Mercurio', true, 1, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', false, 2, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (4, 'Venus', true, 2, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (5, 'Tierra', false, 3, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (6, 'Tierra', true, 3, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (7, 'Marte', false, 4, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (8, 'Marte', true, 4, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (9, 'Jupiter', false, 5, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (10, 'Jupiter', true, 5, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (15, 'Saturno', false, 6, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (16, 'Saturno', true, 6, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (17, 'Urano', false, 6, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (18, 'Urano', true, 6, NULL, 0, 0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'First', 50, 1, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (2, 'Second', 50, 2, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (3, '3th', 60, 3, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (4, '4th', 70, 4, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (5, '5th', 80, 5, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (6, '6th', 50, 6, NULL, 0, 0, NULL);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 18, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 38, true);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: extra extra_uniquetable_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_uniquetable_key UNIQUE (uniquetable);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uniquetable_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uniquetable_key UNIQUE (uniquetable);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uniquetable_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uniquetable_key UNIQUE (uniquetable);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uniquetable_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uniquetable_key UNIQUE (uniquetable);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uniquetable_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uniquetable_key UNIQUE (uniquetable);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
