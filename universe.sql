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
    name character varying(20) NOT NULL,
    galaxy_types character varying(20),
    age_in_millions_of_years numeric(10,1),
    distance_from_earth integer,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: garaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.garaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: garaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.garaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric(10,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
    planet_id integer
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
    name character varying(20) NOT NULL,
    planet_types character varying(20),
    age_in_millions_of_years numeric(10,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
    star_id integer
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric(10,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
    galaxy_id integer
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
-- Name: tablex; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tablex (
    tablex_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.tablex OWNER TO freecodecamp;

--
-- Name: tablex_tablex_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tablex_tablex_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tablex_tablex_id_seq OWNER TO freecodecamp;

--
-- Name: tablex_tablex_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tablex_tablex_id_seq OWNED BY public.tablex.tablex_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.garaxy_galaxy_id_seq'::regclass);


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
-- Name: tablex tablex_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablex ALTER COLUMN tablex_id SET DEFAULT nextval('public.tablex_tablex_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', 'galaxy_a', 12.0, 1000, 'galaxy_a_description', true);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', 'galaxy_a', 42.0, 5500, 'galaxy_a_description', true);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', 'galaxy_b', 3.4, 550, 'galaxy_b_description', true);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', 'galaxy_b', 9.4, 7550, 'galaxy_b_description', true);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', 'galaxy_c', 988.0, 760, 'galaxy_c_description', false);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', 'galaxy_c', 989.0, 760, 'galaxy_c_description', true);
INSERT INTO public.galaxy VALUES (7, 'galaxy_7', 'galaxy_d', 99.0, 7, 'galaxy_d_description', true);
INSERT INTO public.galaxy VALUES (8, 'galaxy_8', 'galaxy_d', 979.0, 67, 'galaxy_d_description', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 100.0, 'moon1 description', true, true, 12, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 100.0, 'moon1 description', true, true, 12, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 100.0, 'moon1 description', true, true, 12, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 100.0, 'moon1 description', true, true, 12, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 100.0, 'moon1 description', true, true, 12, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 100.0, 'moon1 description', true, true, 12, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 100.0, 'moon1 description', true, true, 12, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 100.0, 'moon1 description', true, true, 12, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 100.0, 'moon1 description', true, true, 12, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 100.0, 'moon1 description', true, true, 12, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 100.0, 'moon1 description', true, true, 12, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 100.0, 'moon1 description', true, true, 12, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 100.0, 'moon1 description', true, true, 12, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 100.0, 'moon1 description', true, true, 12, 2);
INSERT INTO public.moon VALUES (15, 'moon15', 100.0, 'moon1 description', true, true, 12, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 100.0, 'moon1 description', true, true, 12, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 100.0, 'moon1 description', true, true, 12, 5);
INSERT INTO public.moon VALUES (18, 'moon18', 100.0, 'moon1 description', true, true, 12, 6);
INSERT INTO public.moon VALUES (19, 'moon19', 100.0, 'moon1 description', true, true, 12, 7);
INSERT INTO public.moon VALUES (20, 'moon20', 100.0, 'moon1 description', true, true, 12, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 1);
INSERT INTO public.planet VALUES (2, 'Earth2', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 2);
INSERT INTO public.planet VALUES (3, 'Earth3', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 3);
INSERT INTO public.planet VALUES (4, 'Earth4', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 4);
INSERT INTO public.planet VALUES (5, 'Earth5', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 5);
INSERT INTO public.planet VALUES (6, 'Earth6', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 6);
INSERT INTO public.planet VALUES (7, 'Earth7', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 7);
INSERT INTO public.planet VALUES (8, 'Earth8', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 8);
INSERT INTO public.planet VALUES (9, 'Earth9', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 1);
INSERT INTO public.planet VALUES (10, 'Earth10', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 2);
INSERT INTO public.planet VALUES (11, 'Earth11', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 3);
INSERT INTO public.planet VALUES (12, 'Earth12', 'Terrestrial', 4500.0, 'The third planet from the sun and the only know plnet with life', true, true, 0, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.6, 'The closest star to Earth and center of the Solar System.', true, true, 149600000, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.9, 'The closest star to Earth (excluding the Sun) and part of the Alpla Centauri system.', false, true, 402, 2);
INSERT INTO public.star VALUES (3, 'Sun2', 4.6, 'The closest star to Earth and center of the Solar System.', true, true, 149600000, 3);
INSERT INTO public.star VALUES (4, 'Sun3', 4.6, 'The closest star to Earth and center of the Solar System.', true, true, 149600000, 4);
INSERT INTO public.star VALUES (5, 'Sun4', 4.6, 'The closest star to Earth and center of the Solar System.', true, true, 149600000, 5);
INSERT INTO public.star VALUES (6, 'Sun5', 4.6, 'The closest star to Earth and center of the Solar System.', true, true, 149600000, 6);
INSERT INTO public.star VALUES (7, 'Sun6', 4.6, 'The closest star to Earth and center of the Solar System.', true, true, 149600000, 5);
INSERT INTO public.star VALUES (8, 'Sun7', 4.6, 'The closest star to Earth and center of the Solar System.', true, true, 149600000, 2);


--
-- Data for Name: tablex; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tablex VALUES (1, 'name1', 'name1 description');
INSERT INTO public.tablex VALUES (2, 'name2', 'name2 description');
INSERT INTO public.tablex VALUES (3, 'name3', 'name3 description');


--
-- Name: garaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.garaxy_galaxy_id_seq', 8, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: tablex_tablex_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tablex_tablex_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy garaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT garaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: tablex tablex_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablex
    ADD CONSTRAINT tablex_name_key UNIQUE (name);


--
-- Name: tablex tablex_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablex
    ADD CONSTRAINT tablex_pkey PRIMARY KEY (tablex_id);


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

