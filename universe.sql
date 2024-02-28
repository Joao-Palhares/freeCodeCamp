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
    number integer,
    mucacu character varying(30),
    ucacu character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    mucacu character varying(30),
    ucacu character varying(30)
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    ucacu character varying(30),
    mucacu character varying(30)
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: spaceships; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceships (
    name character varying(30) NOT NULL,
    numer integer,
    number integer NOT NULL,
    spaceships_id integer NOT NULL
);


ALTER TABLE public.spaceships OWNER TO freecodecamp;

--
-- Name: spaceships_spaceships_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceships_spaceships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceships_spaceships_id_seq OWNER TO freecodecamp;

--
-- Name: spaceships_spaceships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceships_spaceships_id_seq OWNED BY public.spaceships.spaceships_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    height integer,
    weight integer,
    diameter numeric(10,3),
    description text,
    has_ownorbit boolean,
    emit_light boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: star_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_galaxy_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: spaceships spaceships_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceships ALTER COLUMN spaceships_id SET DEFAULT nextval('public.spaceships_spaceships_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_id_galaxy_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Sunflower Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'one', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'two', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'three', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'four', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'five', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'six', 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'seven', 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'eight', 1, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'nine', 1, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'ten', 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'eleven', 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'twelve', 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'thirteen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'fourteen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'fifteen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'sixteen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'seventeen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'eighteen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'nineteen', 1, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'twenty', 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'olaola', 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'olaol', 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'olao', 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'ola', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'ol', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'o', 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'a', 1, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'la', 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'alo', 1, NULL, NULL);


--
-- Data for Name: spaceships; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceships VALUES ('one', NULL, 1, 1);
INSERT INTO public.spaceships VALUES ('two', NULL, 2, 2);
INSERT INTO public.spaceships VALUES ('three', NULL, 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 300, 300, 300.300, 'ola', true, true, 1);
INSERT INTO public.star VALUES (2, 'ola', 30, 30, 30.000, 'ola', true, true, 1);
INSERT INTO public.star VALUES (3, 'ol', 30, 30, 30.000, 'ola', true, true, 1);
INSERT INTO public.star VALUES (4, 'o', 30, 30, 30.000, 'ola', true, true, 1);
INSERT INTO public.star VALUES (5, 'lo', 30, 30, 30.000, 'ola', true, true, 1);
INSERT INTO public.star VALUES (6, 'a', 30, 30, 30.000, 'ola', true, true, 1);
INSERT INTO public.star VALUES (7, 'alo', 30, 30, 30.000, 'ola', true, true, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 21, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: spaceships_spaceships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceships_spaceships_id_seq', 3, true);


--
-- Name: star_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_galaxy_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: spaceships spaceships_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceships
    ADD CONSTRAINT spaceships_pkey PRIMARY KEY (spaceships_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: spaceships unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceships
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

