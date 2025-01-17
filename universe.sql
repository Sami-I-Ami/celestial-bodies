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
    type character varying(30) NOT NULL,
    diameter_in_thousand_ly integer NOT NULL,
    distance_in_million_ly numeric(5,3)
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
    name character varying(30) NOT NULL,
    planet_id integer,
    orbital_distance text NOT NULL,
    traveled_to boolean
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
-- Name: other_object; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_object (
    other_object_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.other_object OWNER TO freecodecamp;

--
-- Name: other_object_other_object_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_object_other_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_object_other_object_id_seq OWNER TO freecodecamp;

--
-- Name: other_object_other_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_object_other_object_id_seq OWNED BY public.other_object.other_object_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    type character varying(30),
    number_of_moons integer
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
    galaxy_id integer,
    type character varying(30),
    description text,
    ends_in_supernova boolean
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other_object other_object_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_object ALTER COLUMN other_object_id SET DEFAULT nextval('public.other_object_other_object_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'spiral', 100, 0.000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'spiral', 220, 2.500);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'elliptical', 37, 11.500);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'spiral', 170, 20.870);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'spiral', 50, 29.350);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 'spiral', 60, 30.000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 3, '238,000 mi', true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, '3,700 mi', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, '14,580 mi', false);
INSERT INTO public.moon VALUES (4, 'Europa', 5, '417,000 mi', false);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, '665,000 mi', false);
INSERT INTO public.moon VALUES (6, 'Io', 5, '262,000 mi', false);
INSERT INTO public.moon VALUES (7, 'Enceladus', 6, '148,000 mi', false);
INSERT INTO public.moon VALUES (8, 'Titan', 6, '759,000 mi', false);
INSERT INTO public.moon VALUES (9, 'Mimas', 6, '115,000 mi', false);
INSERT INTO public.moon VALUES (10, 'Dione', 6, '234,500 mi', false);
INSERT INTO public.moon VALUES (11, 'Hyperion', 6, '933,000 mi', false);
INSERT INTO public.moon VALUES (12, 'Oberon', 7, '362,000 mi', false);
INSERT INTO public.moon VALUES (13, 'Ariel', 7, '118,620 mi', false);
INSERT INTO public.moon VALUES (14, 'Puck', 7, '53,444 mi', false);
INSERT INTO public.moon VALUES (15, 'Triton', 8, '220,500 mi', false);
INSERT INTO public.moon VALUES (16, 'Despina', 8, '17,200 mi', false);
INSERT INTO public.moon VALUES (17, 'Nereid', 8, '3,425,900 mi', false);
INSERT INTO public.moon VALUES (18, 'Charon', 9, '12,200 mi', false);
INSERT INTO public.moon VALUES (19, 'Styx', 9, '42,505 mi', false);
INSERT INTO public.moon VALUES (20, 'Nix', 9, '30,257 mi', false);


--
-- Data for Name: other_object; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_object VALUES (1, 'Astroid Belt', 'Line of astroids separating Mars and Jupiter in the Solar System');
INSERT INTO public.other_object VALUES (2, 'Kuiper Belt', 'A disk of icy objects on the outer part of the Solar System which contains Pluto');
INSERT INTO public.other_object VALUES (3, 'Trojans', 'A large group of asteroids that share the same orbit as Jupiter');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestrial', 0);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestrial', 0);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', 95);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', 146);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Gas Giant', 28);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Gas Giant', 16);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 'Dwarf', 5);
INSERT INTO public.planet VALUES (10, 'Proxima b', 3, 'Terrestrial', NULL);
INSERT INTO public.planet VALUES (11, 'Proxima c', 3, 'Gas Giant', NULL);
INSERT INTO public.planet VALUES (12, 'Proxima d', 3, 'Terrestrial', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 2, 'Yellow Dwarf', 'Primary star of the Solar System', false);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 'White Dwarf', 'Brightest star seen from Earth', false);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 2, 'Red Dwarf', 'Closest star to the Sun', false);
INSERT INTO public.star VALUES (4, 'Alpheratz', 3, 'Binary', 'Brightest star in the Andromeda Galaxy', false);
INSERT INTO public.star VALUES (5, 'Pollux', 2, 'Red Giant', 'Closest giant to the Sun', true);
INSERT INTO public.star VALUES (6, 'Mirach', 3, 'Red Giant', 'Brightest single star in the Andromeda Galaxy', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: other_object_other_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_object_other_object_id_seq', 3, true);


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
-- Name: other_object other_object_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_object
    ADD CONSTRAINT other_object_name_key UNIQUE (name);


--
-- Name: other_object other_object_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_object
    ADD CONSTRAINT other_object_pkey PRIMARY KEY (other_object_id);


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

