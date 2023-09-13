--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_type character varying(30),
    fully_explored boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_description (
    description text,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    galaxy_description_id integer NOT NULL
);


ALTER TABLE public.galaxy_description OWNER TO freecodecamp;

--
-- Name: galaxy_description_galaxy_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_description_galaxy_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_description_galaxy_description_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_description_galaxy_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_description_galaxy_description_id_seq OWNED BY public.galaxy_description.galaxy_description_id;


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
    name character varying(30) NOT NULL,
    has_resources boolean,
    stable_for_landing boolean,
    planet_id integer,
    moon_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    km_from_star numeric,
    star_id integer,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    number_of_planets integer,
    is_dying boolean,
    galaxy_id integer,
    star_id integer NOT NULL
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
-- Name: galaxy_description galaxy_description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description ALTER COLUMN galaxy_description_id SET DEFAULT nextval('public.galaxy_description_galaxy_description_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('Calypso', 10, 'Large Magellanic Cloud', false, 1);
INSERT INTO public.galaxy VALUES ('Acropolis', 30, 'Pinwheel', true, 2);
INSERT INTO public.galaxy VALUES ('Swado', 100, 'Barred Spiral', false, 3);
INSERT INTO public.galaxy VALUES ('Borgiou', 8, 'Andromeda', true, 4);
INSERT INTO public.galaxy VALUES ('Olympous', 50, 'Triangulum', false, 5);
INSERT INTO public.galaxy VALUES ('Eglyous', 60, 'Elliptical', false, 6);


--
-- Data for Name: galaxy_description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_description VALUES ('A barren galaxy that very little is known about. It has not been explored like the other galaxies due to its distance.', 'Calypso Description', 1, 1);
INSERT INTO public.galaxy_description VALUES ('Known as the trading center of the universe. Where 
businesses and consumers alike go to expand their network and spend their capitol.', 'Acropolis', 2, 2);
INSERT INTO public.galaxy_description VALUES ('A mostly uninhabited galaxy, several planets are full of nature and have not been touched by development.', 'Swado', 3, 3);
INSERT INTO public.galaxy_description VALUES ('The politics galaxy, where delegates from all planets and galaxies meet to form a government for the universe.', 'Olympous', 5, 5);
INSERT INTO public.galaxy_description VALUES ('A galaxy that considered sacred by many and where religions convene.', 'Eglyous', 6, 6);
INSERT INTO public.galaxy_description VALUES ('Where the wealthiest families and institutes in the universe develop their personal homes, projects, and businesses.', 'Borgiou', 4, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Calypso Moon 1', true, true, 1, 1);
INSERT INTO public.moon VALUES ('Calypso Moon 2', false, true, 1, 2);
INSERT INTO public.moon VALUES ('Calypso Moon 3', false, true, 1, 3);
INSERT INTO public.moon VALUES ('Swado Moon 5', false, true, 12, 11);
INSERT INTO public.moon VALUES ('Swado Moon 6', false, true, 13, 12);
INSERT INTO public.moon VALUES ('Swado Moon 1', false, false, 10, 7);
INSERT INTO public.moon VALUES ('Swado Moon 2', true, true, 10, 8);
INSERT INTO public.moon VALUES ('Swado Moon 3', false, true, 10, 9);
INSERT INTO public.moon VALUES ('Swado Moon 4', false, true, 10, 10);
INSERT INTO public.moon VALUES ('Acropolis  Moon 1', true, true, 2, 4);
INSERT INTO public.moon VALUES ('Acropolis  Moon 2', false, true, 3, 5);
INSERT INTO public.moon VALUES ('Acropolis  Moon 3', false, false, 7, 6);
INSERT INTO public.moon VALUES ('Borgiou Moon 1', false, true, 14, 13);
INSERT INTO public.moon VALUES ('Borgiou Moon 2', false, true, 15, 14);
INSERT INTO public.moon VALUES ('Borgiou Moon 3', false, false, 16, 15);
INSERT INTO public.moon VALUES ('Borgiou Moon 4', true, true, 16, 16);
INSERT INTO public.moon VALUES ('Borgiou Moon 5', false, true, 16, 17);
INSERT INTO public.moon VALUES ('Borgiou Moon 6', true, true, 17, 18);
INSERT INTO public.moon VALUES ('Olympous Moon 1', false, true, 20, 19);
INSERT INTO public.moon VALUES ('Olympous Moon 2', false, true, 21, 20);
INSERT INTO public.moon VALUES ('Olympous Moon 1', false, true, 21, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Calypso Planet 1', true, 2000000, 1, 1);
INSERT INTO public.planet VALUES ('Acropolis Planet 1', true, 3000000, 2, 2);
INSERT INTO public.planet VALUES ('Acropolis Planet 2', true, 4000000, 2, 3);
INSERT INTO public.planet VALUES ('Acropolis Planet 3', true, 2500000, 2, 4);
INSERT INTO public.planet VALUES ('Acropolis Planet 4', true, 7000000, 2, 5);
INSERT INTO public.planet VALUES ('Acropolis Planet 5', true, 5000000, 2, 6);
INSERT INTO public.planet VALUES ('Acropolis Planet 6', true, 7500000, 2, 7);
INSERT INTO public.planet VALUES ('Swado Planet 1', true, 5200000, 3, 8);
INSERT INTO public.planet VALUES ('Swado Planet 2', true, 3700000, 3, 9);
INSERT INTO public.planet VALUES ('Swado Planet 3', true, 7700000, 3, 10);
INSERT INTO public.planet VALUES ('Swado Planet 5', false, 2300000, 3, 12);
INSERT INTO public.planet VALUES ('Swado Planet 6', false, 8000000, 3, 13);
INSERT INTO public.planet VALUES ('Swado Planet 4', false, 4500000, 3, 11);
INSERT INTO public.planet VALUES ('Borgiou Planet 1', true, 150000, 4, 14);
INSERT INTO public.planet VALUES ('Borgiou Planet 2', true, 200000, 4, 15);
INSERT INTO public.planet VALUES ('Borgiou Planet 3', true, 250000, 4, 16);
INSERT INTO public.planet VALUES ('Borgiou Planet 4', true, 300000, 4, 17);
INSERT INTO public.planet VALUES ('Borgiou Planet 5', true, 350000, 4, 18);
INSERT INTO public.planet VALUES ('Borgiou Planet 6', true, 500000, 4, 19);
INSERT INTO public.planet VALUES ('Olympous Planet 1', true, 230000, 5, 20);
INSERT INTO public.planet VALUES ('Olympous Planet 2', true, 520000, 5, 21);
INSERT INTO public.planet VALUES ('Olympous Planet 3', true, 900000, 5, 22);
INSERT INTO public.planet VALUES ('Eglyous Planet 1', true, 8500000, 6, 23);
INSERT INTO public.planet VALUES ('Eglyous Planet 2', false, 9000000, 6, 24);
INSERT INTO public.planet VALUES ('Eglyous Planet 3', true, 6000000, 6, 25);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Calypso Sun', 1, false, 1, 1);
INSERT INTO public.star VALUES ('Acropolis Sun', 6, false, 2, 2);
INSERT INTO public.star VALUES ('Swado Sun', 6, false, 3, 3);
INSERT INTO public.star VALUES ('Borgious Sun', 6, false, 4, 4);
INSERT INTO public.star VALUES ('Eglyous Sun', 3, false, 6, 6);
INSERT INTO public.star VALUES ('Olympous Sun', 3, false, 5, 5);


--
-- Name: galaxy_description_galaxy_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_description_galaxy_description_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy_description galaxy_description_galaxy_description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description
    ADD CONSTRAINT galaxy_description_galaxy_description_id_key UNIQUE (galaxy_description_id);


--
-- Name: galaxy_description galaxy_description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description
    ADD CONSTRAINT galaxy_description_pkey PRIMARY KEY (galaxy_description_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy_description galaxy_description_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_description
    ADD CONSTRAINT galaxy_description_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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