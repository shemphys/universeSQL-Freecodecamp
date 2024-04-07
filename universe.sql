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
    marcianito_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    sex boolean,
    moon_id integer NOT NULL
);


ALTER TABLE public.lunatico OWNER TO freecodecamp;

--
-- Name: lunatico_marcianito_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lunatico_marcianito_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lunatico_marcianito_id_seq OWNER TO freecodecamp;

--
-- Name: lunatico_marcianito_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lunatico_marcianito_id_seq OWNED BY public.lunatico.marcianito_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer,
    visited boolean NOT NULL,
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
    satar_id integer NOT NULL,
    name character varying(30) NOT NULL,
    sound character varying(30),
    age integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_satar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_satar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_satar_id_seq OWNER TO freecodecamp;

--
-- Name: star_satar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_satar_id_seq OWNED BY public.star.satar_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lunatico marcianito_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lunatico ALTER COLUMN marcianito_id SET DEFAULT nextval('public.lunatico_marcianito_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star satar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN satar_id SET DEFAULT nextval('public.star_satar_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 0.85);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 200000, 0.90);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000, 0.75);
INSERT INTO public.galaxy VALUES (4, 'Tetrandula', 6000, 0.60);
INSERT INTO public.galaxy VALUES (5, 'Milky Way2', 2600, 0.91);
INSERT INTO public.galaxy VALUES (6, 'Menci', 6500, 0.10);


--
-- Data for Name: lunatico; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lunatico VALUES (1, 'Lunático 1', 30, true, 1);
INSERT INTO public.lunatico VALUES (2, 'Lunática 2', 25, false, 2);
INSERT INTO public.lunatico VALUES (3, 'Lunático 3', 40, true, 3);
INSERT INTO public.lunatico VALUES (4, 'Lunático 4', 35, true, 4);
INSERT INTO public.lunatico VALUES (5, 'Lunática 5', 28, false, 5);
INSERT INTO public.lunatico VALUES (6, 'Lunático 6', 32, true, 6);
INSERT INTO public.lunatico VALUES (7, 'Lunático 7', 27, true, 7);
INSERT INTO public.lunatico VALUES (8, 'Lunática 8', 38, false, 8);
INSERT INTO public.lunatico VALUES (9, 'Lunático 9', 29, true, 9);
INSERT INTO public.lunatico VALUES (10, 'Lunático 10', 31, true, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, false, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 4500, false, 1);
INSERT INTO public.moon VALUES (5, 'Ganymede', 4500, false, 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 45000, false, 1);
INSERT INTO public.moon VALUES (7, 'Titan', 4500, false, 5);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4500, false, 5);
INSERT INTO public.moon VALUES (9, 'Io', 4500, false, 1);
INSERT INTO public.moon VALUES (10, 'Triton', 4500, false, 8);
INSERT INTO public.moon VALUES (11, 'Charon', 4500, false, 9);
INSERT INTO public.moon VALUES (12, 'Miranda', 4500, false, 10);
INSERT INTO public.moon VALUES (13, 'Luna 1', 4500, false, 1);
INSERT INTO public.moon VALUES (14, 'Luna 2', 4500, false, 1);
INSERT INTO public.moon VALUES (15, 'Luna 3', 4500, false, 1);
INSERT INTO public.moon VALUES (16, 'Luna 4', 4500, false, 1);
INSERT INTO public.moon VALUES (17, 'Luna 5', 4500, false, 1);
INSERT INTO public.moon VALUES (18, 'Luna 6', 4500, false, 1);
INSERT INTO public.moon VALUES (19, 'Luna 7', 4500, false, 1);
INSERT INTO public.moon VALUES (20, 'Luna 8', 4500, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'Blue planet', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 'Red planet', 4);
INSERT INTO public.planet VALUES (3, 'Venus', true, 'Greenhouse effect', 5);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 'Gas giant', 1);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 'Rings', 1);
INSERT INTO public.planet VALUES (6, 'Mercury', false, 'Closest to the Sun', 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 'Ice giant', 6);
INSERT INTO public.planet VALUES (8, 'Uranus', false, 'Tilted axis', 6);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 'Dwarf planet', 1);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', true, 'Potentially habitable exoplanet', 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', true, 'Hot Jupiter', 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', true, 'Potentially habitable exoplanet', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Solar', 450000, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'Spectral', 600000, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Dim', 500000, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red Giant', 1000, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'White Dwarf', 200000, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Vibrant', 4000, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lunatico_marcianito_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lunatico_marcianito_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_satar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_satar_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lunatico lunatico_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lunatico
    ADD CONSTRAINT lunatico_pkey PRIMARY KEY (marcianito_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (satar_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

