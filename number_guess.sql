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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2, 66, 1);
INSERT INTO public.games VALUES (3, 14, 2);
INSERT INTO public.games VALUES (4, 188, 3);
INSERT INTO public.games VALUES (5, 794, 3);
INSERT INTO public.games VALUES (6, 680, 4);
INSERT INTO public.games VALUES (7, 151, 4);
INSERT INTO public.games VALUES (8, 923, 3);
INSERT INTO public.games VALUES (9, 809, 3);
INSERT INTO public.games VALUES (10, 141, 3);
INSERT INTO public.games VALUES (11, 476, 5);
INSERT INTO public.games VALUES (12, 656, 5);
INSERT INTO public.games VALUES (13, 152, 6);
INSERT INTO public.games VALUES (14, 711, 6);
INSERT INTO public.games VALUES (15, 290, 5);
INSERT INTO public.games VALUES (16, 986, 5);
INSERT INTO public.games VALUES (17, 570, 5);
INSERT INTO public.games VALUES (18, 774, 7);
INSERT INTO public.games VALUES (19, 238, 7);
INSERT INTO public.games VALUES (20, 465, 8);
INSERT INTO public.games VALUES (21, 135, 8);
INSERT INTO public.games VALUES (22, 285, 7);
INSERT INTO public.games VALUES (23, 515, 7);
INSERT INTO public.games VALUES (24, 96, 7);
INSERT INTO public.games VALUES (25, 695, 9);
INSERT INTO public.games VALUES (26, 235, 9);
INSERT INTO public.games VALUES (27, 312, 10);
INSERT INTO public.games VALUES (28, 492, 10);
INSERT INTO public.games VALUES (29, 472, 9);
INSERT INTO public.games VALUES (30, 852, 9);
INSERT INTO public.games VALUES (31, 428, 9);
INSERT INTO public.games VALUES (32, 55, 2);
INSERT INTO public.games VALUES (33, 578, 11);
INSERT INTO public.games VALUES (34, 417, 11);
INSERT INTO public.games VALUES (35, 180, 12);
INSERT INTO public.games VALUES (36, 926, 12);
INSERT INTO public.games VALUES (37, 34, 11);
INSERT INTO public.games VALUES (38, 831, 11);
INSERT INTO public.games VALUES (39, 130, 11);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'hii');
INSERT INTO public.users VALUES (2, 'bhuvan');
INSERT INTO public.users VALUES (3, 'user_1668496725447');
INSERT INTO public.users VALUES (4, 'user_1668496725446');
INSERT INTO public.users VALUES (5, 'user_1668496802780');
INSERT INTO public.users VALUES (6, 'user_1668496802779');
INSERT INTO public.users VALUES (7, 'user_1668496932549');
INSERT INTO public.users VALUES (8, 'user_1668496932548');
INSERT INTO public.users VALUES (9, 'user_1668496990044');
INSERT INTO public.users VALUES (10, 'user_1668496990043');
INSERT INTO public.users VALUES (11, 'user_1668497189350');
INSERT INTO public.users VALUES (12, 'user_1668497189349');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 39, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

