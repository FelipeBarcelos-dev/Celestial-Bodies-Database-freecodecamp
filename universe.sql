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
    galaxy_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age numeric(10,2),
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    belong text,
    visited boolean,
    galaxy_id character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    galaxy_id character varying(30),
    visited boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    date_of_released date,
    galaxy_id character varying(30)
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id character varying(30),
    size_in_billion integer,
    distance_from_earth_in_ly integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 'Milky Way', 'That is the galaxy where the solar system is located and has about 200 billion stars', 13.60, 100000);
INSERT INTO public.galaxy VALUES ('andromeda', 'Andromeda', 'The closest galaxy to us, has about 1 trillion stars', 15.00, 250000000);
INSERT INTO public.galaxy VALUES ('small magallanic cloud', 'Small Magellanic Cloud', 'That is a satellite galaxy of ours, has about 7 million stars', 13.60, 7000);
INSERT INTO public.galaxy VALUES ('large magellanic cloud', 'Large Magellanic Cloud', 'That is a satellite galaxy of ours, has about 15 millillion stars', 13.60, 14000);
INSERT INTO public.galaxy VALUES ('cosmos redshift 7', 'Cosmo Redshift 7', 'The brightest of the distant galaxies, has an unknown number os stars', 80.00, 12000);
INSERT INTO public.galaxy VALUES ('messier 33', 'Messier 33', 'Spiral galaxy, has about 40 million stars', 10.36, 40000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('io', 'Io', 'jupiter', false, 'milky way');
INSERT INTO public.moon VALUES ('europa', 'Europa', 'jupiter', false, 'milky way');
INSERT INTO public.moon VALUES ('ganymede', 'Ganymede', 'jupiter', false, 'milky way');
INSERT INTO public.moon VALUES ('callisto', 'Callisto', 'jupiter', false, 'milky way');
INSERT INTO public.moon VALUES ('titan', 'Titan', 'Saturn', false, 'milky way');
INSERT INTO public.moon VALUES ('dione', 'Dione', 'Saturn', false, 'milky way');
INSERT INTO public.moon VALUES ('tethys', 'Tethys', 'Saturn', false, 'milky way');
INSERT INTO public.moon VALUES ('rhea', 'Rhea', 'Saturn', false, 'milky way');
INSERT INTO public.moon VALUES ('miranda', 'Miranda', 'uranus', false, 'milky way');
INSERT INTO public.moon VALUES ('ariel', 'Ariel', 'uranus', false, 'milky way');
INSERT INTO public.moon VALUES ('umbriel', 'Umbriel', 'uranus', false, 'milky way');
INSERT INTO public.moon VALUES ('oberon', 'Oberon', 'uranus', false, 'milky way');
INSERT INTO public.moon VALUES ('triton', 'Triton', 'neptune', false, 'milky way');
INSERT INTO public.moon VALUES ('nereid', 'Nereid', 'neptune', false, 'milky way');
INSERT INTO public.moon VALUES ('proteus', 'Proteus', 'neptune', false, 'milky way');
INSERT INTO public.moon VALUES ('phobos', 'Phobos', 'mars', false, 'milky way');
INSERT INTO public.moon VALUES ('deimos', 'Deimos', 'mars', false, 'milky way');
INSERT INTO public.moon VALUES ('charon', 'Charon', 'pluto', false, 'milky way');
INSERT INTO public.moon VALUES ('moon', 'Moon', 'earth', true, 'milky way');
INSERT INTO public.moon VALUES ('barsa', 'barsa', 'me-33', false, 'messier 33');
INSERT INTO public.moon VALUES ('cosmik', 'Cosmik', 'gnz-a2', false, 'cosmos redshift 7');
INSERT INTO public.moon VALUES ('trapik', 'Trapik', 'trappist', false, 'large magellanic cloud');
INSERT INTO public.moon VALUES ('sama', 'Sama', 'hd209458a', false, 'small magallanic cloud');
INSERT INTO public.moon VALUES ('kpm', 'Kpm', 'kepler', false, 'andromeda');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', 'Merrcury', 'rocky planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('venus', 'Venus', 'rocky planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('eearth', 'Earth', 'rocky planet', true, 'milky way', true);
INSERT INTO public.planet VALUES ('mars', 'Mars', 'rocky planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('pluto', 'Pluto', 'rocky planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('jupiter', 'Jupiter', 'gaseous planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('saturn', 'Saturn', 'gaseous planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('uranus', 'Uranus', 'gaseous planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('neptune', 'Neptune', 'gaseous planet', false, 'milky way', false);
INSERT INTO public.planet VALUES ('kepler', 'Kepler', 'rocky planet', false, 'andromeda', false);
INSERT INTO public.planet VALUES ('hd209458a', 'Hd209458a', 'gaseous planet', false, 'small magallanic cloud', false);
INSERT INTO public.planet VALUES ('trappist', 'Trappist', 'gaseous planet', false, 'large magellanic cloud', false);
INSERT INTO public.planet VALUES ('gnz-a2', 'Gnz-a2', 'gaseous planet', false, 'cosmos redshift 7', false);
INSERT INTO public.planet VALUES ('me-33', 'Me-33', 'rocky planet', false, 'messier 33', false);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES ('sputnik 1', 'Sputnik 1', '1957-10-04', 'milky way');
INSERT INTO public.satellite VALUES ('explorer 1', 'Explorer 1', '1958-01-31', 'milky way');
INSERT INTO public.satellite VALUES ('hubble space telescope', 'Hubble space telescope', '1990-04-24', 'milky way');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 'Sun', 'milky way', 1989, 0);
INSERT INTO public.star VALUES ('alfa centauri b', 'Alfa centauri b', 'andromeda', 1100, 4);
INSERT INTO public.star VALUES ('hv11417', 'Hv11417', 'small magallanic cloud', 1000, 200000);
INSERT INTO public.star VALUES ('r136a1', 'R136a1', 'large magellanic cloud', 509184, 163000);
INSERT INTO public.star VALUES ('gn-z11', 'Gn-z11', 'cosmos redshift 7', 1000, 13000);
INSERT INTO public.star VALUES ('ma33-9', 'Ma33-9', 'messier 33', 1000, 3600000);


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
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: satellite satellite_satellite_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_satellite_id_key UNIQUE (satellite_id);


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
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: satellite satellite_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

