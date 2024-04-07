--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    age integer,
    other integer,
    life_chances numeric(2,2) NOT NULL
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
-- Name: lunatico; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lunatico (
    lunatico_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    sex boolean,
    other integer,
    moon_id integer NOT NULL
);


ALTER TABLE public.lunatico OWNER TO freecodecamp;

--
-- Name: lunatico_lunatico_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lunatico_lunatico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lunatico_lunatico_id_seq OWNER TO freecodecamp;

--
-- Name: lunatico_lunatico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lunatico_lunatico_id_seq OWNED BY public.lunatico.lunatico_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer,
    visited boolean NOT NULL,
    other integer,
    planet_id integer NOT NULL
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
    name character varying(30),
    atmosphere boolean NOT NULL,
    notes text,
    other integer,
    star_id integer NOT NULL
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
    sound character varying(30),
    age integer,
    other integer,
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
-- Name: lunatico lunatico_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lunatico ALTER COLUMN lunatico_id SET DEFAULT nextval('public.lunatico_lunatico_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 100, 0.85);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 200000, 200, 0.90);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000, 300, 0.75);
INSERT INTO public.galaxy VALUES (4, 'Tetrandula', 6000, 400, 0.60);
INSERT INTO public.galaxy VALUES (5, 'Milky Way2', 2600, 500, 0.91);
INSERT INTO public.galaxy VALUES (6, 'Menci', 6500, 600, 0.10);


--
-- Data for Name: lunatico; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lunatico VALUES (1, 'Lunático 1', 30, true, 100, 1);
INSERT INTO public.lunatico VALUES (2, 'Lunática 2', 25, false, 200, 2);
INSERT INTO public.lunatico VALUES (3, 'Lunático 3', 40, true, 300, 3);
INSERT INTO public.lunatico VALUES (4, 'Lunático 4', 35, true, 400, 1);
INSERT INTO public.lunatico VALUES (5, 'Lunática 5', 28, false, 500, 1);
INSERT INTO public.lunatico VALUES (6, 'Lunático 6', 32, true, 600, 1);
INSERT INTO public.lunatico VALUES (7, 'Lunático 7', 27, true, 700, 1);
INSERT INTO public.lunatico VALUES (8, 'Lunática 8', 38, false, 800, 1);
INSERT INTO public.lunatico VALUES (9, 'Lunático 9', 29, true, 900, 1);
INSERT INTO public.lunatico VALUES (10, 'Lunático 10', 31, true, 1000, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 8000, true, 100, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 8000, false, 200, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 8000, false, 300, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 8000, false, 400, 1);
INSERT INTO public.moon VALUES (5, 'Ganymede', 8000, false, 500, 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 8000, false, 600, 1);
INSERT INTO public.moon VALUES (7, 'Titan', 8000, false, 700, 5);
INSERT INTO public.moon VALUES (8, 'Enceladus', 8000, false, 800, 5);
INSERT INTO public.moon VALUES (9, 'Io', 8000, false, 900, 1);
INSERT INTO public.moon VALUES (10, 'Triton', 8000, false, 1000, 8);
INSERT INTO public.moon VALUES (11, 'Charon', 8000, false, 1100, 9);
INSERT INTO public.moon VALUES (12, 'Miranda', 8000, false, 1200, 5);
INSERT INTO public.moon VALUES (13, 'Luna 1', 8000, false, 1300, 1);
INSERT INTO public.moon VALUES (14, 'Luna 2', 8000, false, 1400, 1);
INSERT INTO public.moon VALUES (15, 'Luna 3', 8000, false, 1500, 1);
INSERT INTO public.moon VALUES (16, 'Luna 4', 8000, false, 1600, 1);
INSERT INTO public.moon VALUES (17, 'Luna 5', 8000, false, 1700, 1);
INSERT INTO public.moon VALUES (18, 'Luna 6', 8000, false, 1800, 1);
INSERT INTO public.moon VALUES (19, 'Luna 7', 8000, false, 1900, 1);
INSERT INTO public.moon VALUES (20, 'Luna 8', 8000, false, 2000, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'Blue planet', 100, 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 'Red planet', 200, 4);
INSERT INTO public.planet VALUES (3, 'Venus', true, 'Greenhouse effect', 300, 5);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 'Gas giant', 400, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 'Rings', 500, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', false, 'Closest to the Sun', 600, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 'Ice giant', 700, 6);
INSERT INTO public.planet VALUES (8, 'Uranus', false, 'Tilted axis', 800, 6);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 'Dwarf planet', 900, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', true, 'Potentially habitable exoplanet', 1000, 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', true, 'Hot Jupiter', 1100, 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', true, 'Potentially habitable exoplanet', 1200, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Solar', 8000, 100, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'Spectral', 8000, 200, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Dim', 8000, 300, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red Giant', 8000, 400, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'White Dwarf', 8000, 500, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Vibrant', 8000, 600, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lunatico_lunatico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lunatico_lunatico_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: lunatico lunatico_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lunatico
    ADD CONSTRAINT lunatico_name_key UNIQUE (name);


--
-- Name: lunatico lunatico_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lunatico
    ADD CONSTRAINT lunatico_pkey PRIMARY KEY (lunatico_id);


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
-- Name: lunatico lunatico_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lunatico
    ADD CONSTRAINT lunatico_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

