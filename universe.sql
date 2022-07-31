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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id numeric NOT NULL,
    diameter character varying(20),
    weight character varying(20),
    star_id numeric,
    years_old integer DEFAULT 1 NOT NULL,
    mre_years_old integer DEFAULT 1 NOT NULL,
    name character varying(50)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer NOT NULL,
    weight integer NOT NULL,
    has_life boolean,
    years_old integer DEFAULT 1 NOT NULL,
    m_years_old integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: mmeteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mmeteroid (
    mmeteroid_id numeric NOT NULL,
    diameter character varying(20),
    weight character varying(20),
    star_id numeric,
    years_old integer DEFAULT 1 NOT NULL,
    m_years_old integer DEFAULT 1 NOT NULL,
    name character varying(50)
);


ALTER TABLE public.mmeteroid OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer NOT NULL,
    weight integer NOT NULL,
    age_in_millions_of_years numeric,
    planet_types text,
    is_spherical boolean,
    planet_id integer,
    m_years_old integer DEFAULT 1 NOT NULL,
    years_old integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer NOT NULL,
    weight integer NOT NULL,
    age_in_millions_of_years integer,
    planet_types character varying(20),
    is_spherical boolean,
    has_life boolean,
    star_id integer,
    years_old integer DEFAULT 1 NOT NULL,
    m_years_old integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer NOT NULL,
    weight integer NOT NULL,
    galaxy_id integer,
    m_years_old integer DEFAULT 1 NOT NULL,
    years_old integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '121211', '4444', 1, 1, 1, 'tafdrhththet');
INSERT INTO public.asteroid VALUES (2, '121211', '4444', 1, 1, 1, 'tafdrhththet');
INSERT INTO public.asteroid VALUES (3, '121211', '4444', 1, 1, 1, 'tafdrhththet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 121211, 4444, false, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'milkway', 123311, 433444, false, 1, 1);
INSERT INTO public.galaxy VALUES (3, 'milkway1', 12333311, 444, false, 1, 1);
INSERT INTO public.galaxy VALUES (4, 'milkwa231', 12333311, 444, false, 1, 1);
INSERT INTO public.galaxy VALUES (5, 'milkw321', 12333311, 444, false, 1, 1);
INSERT INTO public.galaxy VALUES (6, 'mi21', 12333311, 444, false, 1, 1);


--
-- Data for Name: mmeteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mmeteroid VALUES (1, '121211', '4444', 1, 1, 1, 'tafdrhththet');
INSERT INTO public.mmeteroid VALUES (2, '121211', '4444', 1, 1, 1, 'tafdrhththet');
INSERT INTO public.mmeteroid VALUES (3, '121211', '4444', 1, 1, 1, 'tafdrhththet');
INSERT INTO public.mmeteroid VALUES (4, '121211', '4444', 1, 1, 1, 'tafdrhththet');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'iss', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (3, 'iss2', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (4, 'europa', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (5, 'v1', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (6, 'v2', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (7, 'apollo', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (8, 'challenger', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (9, 'curiosity', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (10, 'p12', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (11, 'tetet', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (12, 'tfdfdt', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (13, 'tfdfyyydt', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (14, 'tfdaadt', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (15, 'tfdaret', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (16, 'tfaert', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (17, 'taerarrt', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (18, 'tafsfarrt', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (19, 'tafdst', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (20, 'tafdreret', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (21, 'tafdrhththet', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.moon VALUES (22, 'tgdgfdft', 121211, 4444, NULL, NULL, NULL, 1, 1, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'venus', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (3, 'mars', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (4, 'mars', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (6, 'saturn', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (8, 'neptun', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (9, 'pluto', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (10, 'voyager1', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (11, 'voyager2', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO public.planet VALUES (12, 'voy44er2', 121211, 4444, NULL, NULL, NULL, NULL, 1, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'sun', 121211, 4444, 1, 1, 1);
INSERT INTO public.star VALUES (4, 'ewew', 12221211, 42444, 1, 1, 1);
INSERT INTO public.star VALUES (5, 'e323ew', 12221211, 42444, 1, 1, 1);
INSERT INTO public.star VALUES (6, 'e3223w', 12221211, 42444, 1, 1, 1);
INSERT INTO public.star VALUES (7, 'e3rer2w', 12221211, 42444, 1, 1, 1);
INSERT INTO public.star VALUES (8, 'e3rrefdw', 12221211, 42444, 1, 1, 1);
INSERT INTO public.star VALUES (9, 'yyyyfdw', 12221211, 42444, 1, 1, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 9, true);


--
-- Name: asteroid asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mmeteroid meteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mmeteroid
    ADD CONSTRAINT meteroid_pkey PRIMARY KEY (mmeteroid_id);


--
-- Name: mmeteroid mmeteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mmeteroid
    ADD CONSTRAINT mmeteroid_id_key UNIQUE (mmeteroid_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

