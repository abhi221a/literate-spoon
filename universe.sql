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
-- Name: exo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exo (
    exo_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer
);


ALTER TABLE public.exo OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    age_in_million_years integer,
    distance_from_earth numeric,
    description text,
    is_sperical boolean,
    mass_in_kg integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    has_life boolean,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer,
    has_life boolean,
    no_of_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    no_of_planet integer,
    has_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: exo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exo VALUES (1, '55 Cancri e', 1);
INSERT INTO public.exo VALUES (2, '51 Pegasi b', 1);
INSERT INTO public.exo VALUES (3, 'Kepler-452b', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 13610, 0, 'We are in Milky Way', false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 10000, 2220000, 'Nearest galaxy', false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Antennae', false, 120000, 45000000, 'NGC 4038', true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Backward', false, NULL, 200000000, 'NGC 4622', false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', false, NULL, 17300000, 'NGC 4826', false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', false, NULL, 60000000, 'NGC 4568', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, false, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, false, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, false, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, false, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, false, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, false, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, false, NULL);
INSERT INTO public.moon VALUES (8, 'Adrastea', 5, false, NULL);
INSERT INTO public.moon VALUES (9, 'Aitne', 5, false, NULL);
INSERT INTO public.moon VALUES (10, 'Amalthea', 5, false, NULL);
INSERT INTO public.moon VALUES (11, 'Ananke', 5, false, NULL);
INSERT INTO public.moon VALUES (12, 'Aoede', 5, false, NULL);
INSERT INTO public.moon VALUES (13, 'Arche', 5, false, NULL);
INSERT INTO public.moon VALUES (14, 'Autonoe', 5, false, NULL);
INSERT INTO public.moon VALUES (15, 'Callirrhoe', 5, false, NULL);
INSERT INTO public.moon VALUES (16, 'Carme', 5, false, NULL);
INSERT INTO public.moon VALUES (17, 'Carpo', 5, false, NULL);
INSERT INTO public.moon VALUES (18, 'Chaldene', 5, false, NULL);
INSERT INTO public.moon VALUES (19, 'Cyllene', 5, false, NULL);
INSERT INTO public.moon VALUES (20, 'Dia', 5, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 79);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 82);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 14);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, false, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 2, false, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri c', 2, false, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri d', 2, false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 8, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, NULL, false);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, NULL, false);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 1, NULL, false);
INSERT INTO public.star VALUES (5, 'Alpheratz- Alpha-AND', 2, NULL, false);
INSERT INTO public.star VALUES (6, 'Mirach- Beta-AND', 2, NULL, false);


--
-- Name: exo exo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exo
    ADD CONSTRAINT exo_name_key UNIQUE (name);


--
-- Name: exo exo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exo
    ADD CONSTRAINT exo_pkey PRIMARY KEY (exo_id);


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
-- Name: exo exo_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exo
    ADD CONSTRAINT exo_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

