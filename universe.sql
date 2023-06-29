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
-- Name: blackholes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackholes (
    blackholes_id integer NOT NULL,
    galaxy_id integer,
    name character varying NOT NULL,
    planets_destroyed numeric,
    color character varying NOT NULL
);


ALTER TABLE public.blackholes OWNER TO freecodecamp;

--
-- Name: blackholes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_id_seq OWNED BY public.blackholes.blackholes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_millions_of_years integer,
    distance_from_earth integer,
    type text NOT NULL,
    has_life boolean,
    visited boolean,
    code character varying
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying NOT NULL,
    age_millions_of_years integer,
    distance_from_earth integer,
    type text NOT NULL,
    code character varying,
    has_life boolean,
    visited boolean
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
    star_id integer,
    name character varying NOT NULL,
    age_millions_of_years integer,
    distance_from_earth integer,
    type text NOT NULL,
    code character varying,
    has_life boolean,
    visited boolean
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
    galaxy_id integer,
    name character varying NOT NULL,
    code character varying,
    age_millions_of_years integer,
    distance_from_earth integer,
    type text NOT NULL,
    researched boolean,
    photogrpahed boolean
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
-- Name: blackholes blackholes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes ALTER COLUMN blackholes_id SET DEFAULT nextval('public.blackholes_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: blackholes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackholes VALUES (1, 1, 'Aurora', 5, 'Black');
INSERT INTO public.blackholes VALUES (2, 1, 'Mela', 4, 'Black');
INSERT INTO public.blackholes VALUES (3, 2, 'Nema', 45, 'Black');
INSERT INTO public.blackholes VALUES (4, 2, 'Flux', 1, 'Black');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 10000, 3, 'Spiral', true, true, 'ANDR');
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 13600, 4, 'Spiral', true, true, 'MLKY');
INSERT INTO public.galaxy VALUES (3, 'Whirpool Galaxy', 400, 31, 'Spiral', false, false, 'WHRL');
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 500, 3, 'Spiral', false, true, 'TRIA');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 9000, 28, 'Spiral', false, false, 'SOMB');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 100, 21, 'Spiral', false, false, 'PINW');
INSERT INTO public.galaxy VALUES (7, 'Black Eye Galaxy', 5000, 24, 'Spiral', false, false, 'BLKE');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', 4500, 384000, 'Natural Satellite', 'MNA', true, true);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 4500, 9400, 'Natural Satellite', 'PHO', true, true);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 4500, 9400, 'Natural Satellite', 'DEM', true, true);
INSERT INTO public.moon VALUES (4, 5, 'Gaynmede', 4500, 10700000, 'Galilean', 'GAN', false, false);
INSERT INTO public.moon VALUES (5, 5, 'Callisto', 4500, 1883000, 'Galilean', 'CAL', false, false);
INSERT INTO public.moon VALUES (6, 5, 'Lo', 4500, 628000000, 'Galilean', 'LOM', false, false);
INSERT INTO public.moon VALUES (7, 12, 'Vera', 4500, 6750000, 'Unreal', 'VER', false, false);
INSERT INTO public.moon VALUES (8, 11, 'Sand', 4500, 6740000, 'Unreal', 'SAN', false, false);
INSERT INTO public.moon VALUES (9, 10, 'Sari', 4500, 6720000, 'Unreal', 'SAR', false, false);
INSERT INTO public.moon VALUES (11, 5, 'Ricar', 4500, 6700000, 'Unreal', 'RIC', false, false);
INSERT INTO public.moon VALUES (12, 6, 'Pipr', 4500, 6650000, 'Unreal', 'PIP', false, false);
INSERT INTO public.moon VALUES (13, 7, 'Beat', 4500, 676000, 'Unreal', 'BEA', false, false);
INSERT INTO public.moon VALUES (14, 7, 'Kreat', 4500, 678000, 'Unreal', 'KRE', false, false);
INSERT INTO public.moon VALUES (15, 8, 'Preto', 4500, 6794000, 'Unreal', 'PRT', true, false);
INSERT INTO public.moon VALUES (16, 10, 'Neto', 4500, 6774000, 'Unreal', 'NTO', true, true);
INSERT INTO public.moon VALUES (17, 10, 'Near', 4500, 6784000, 'Unreal', 'NEA', false, true);
INSERT INTO public.moon VALUES (18, 5, 'Prius', 4500, 6684000, 'Unreal', 'PRI', false, true);
INSERT INTO public.moon VALUES (19, 5, 'Toto', 4500, 6644000, 'Unreal', 'TOT', false, true);
INSERT INTO public.moon VALUES (20, 6, 'Moto', 4500, 6144000, 'Unreal', 'MOT', true, true);
INSERT INTO public.moon VALUES (21, 6, 'Dodo', 4500, 6784000, 'Unreal', 'DOD', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 2, 'Mercury', 4500, 48, 'Terrestrial', 'MERC', true, false);
INSERT INTO public.planet VALUES (2, 2, 'Venus', 4500, 26, 'Terrestrial', 'VEN', true, true);
INSERT INTO public.planet VALUES (3, 2, 'Earth', 4500, 0, 'Terrestrial', 'ERT', true, true);
INSERT INTO public.planet VALUES (4, 2, 'Mars', 4600, 56, 'Terrestrial', 'MAR', true, true);
INSERT INTO public.planet VALUES (5, 2, 'Jupiter', 4600, 588, 'Gas Giant', 'JUP', false, false);
INSERT INTO public.planet VALUES (6, 2, 'Saturn', 4600, 1200, 'Gas Giant', 'SAT', false, false);
INSERT INTO public.planet VALUES (7, 2, 'Uranus', 4600, 2600, 'Ice Giant', 'UR', false, false);
INSERT INTO public.planet VALUES (8, 2, 'Neptune', 4600, 4300, 'Ice Giant', 'NEP', false, false);
INSERT INTO public.planet VALUES (10, 2, 'Ceres', 4600, 4300, 'Ice Giant', 'CER', false, false);
INSERT INTO public.planet VALUES (11, 2, 'Pluto', 4600, 4600, 'Dwarf Planet', 'PLT', false, false);
INSERT INTO public.planet VALUES (12, 2, 'Eris', 4600, 5700, 'Dwarf Planet', 'ER', false, false);
INSERT INTO public.planet VALUES (13, 2, 'Haumea', 4500, 5400, 'Dwarf Planet', 'HAU', false, false);
INSERT INTO public.planet VALUES (14, 2, 'Makemake', 4500, 5600, 'Dwarf Planet', 'MAK', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'SUN', 4600, 9, 'a-type', true, true);
INSERT INTO public.star VALUES (2, 2, 'Siruis', 'SIR', 240, 9, 'a-type', true, true);
INSERT INTO public.star VALUES (3, 7, 'Betelgeuse', 'BET', 642, 9, 'Red Supergiant', true, true);
INSERT INTO public.star VALUES (4, 3, 'Vega', 'VEG', 455, 25, 'a-type', true, false);
INSERT INTO public.star VALUES (5, 4, 'Alpha Centauri', 'ALP', 7, 4, 'g-type', true, true);
INSERT INTO public.star VALUES (6, 5, 'Polaris', 'POL', 70, 434, 'f-type', false, false);


--
-- Name: blackholes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackholes blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackholes_id);


--
-- Name: galaxy galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_key UNIQUE (code);


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
-- Name: moon moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_key UNIQUE (code);


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
-- Name: blackholes name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholes
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_key UNIQUE (code);


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
-- Name: star star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_key UNIQUE (code);


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

