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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(40) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 205, 206, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 207, 208, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 206, 208, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 205, 207, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 206, 209, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 208, 210, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 207, 211, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 205, 212, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 208, 213, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 210, 214, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 207, 215, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 211, 216, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 206, 217, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 209, 218, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 212, 219, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 205, 220, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 221, 220, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 222, 211, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 220, 222, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 221, 211, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 222, 223, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 220, 207, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 211, 213, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 221, 205, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 211, 224, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 213, 212, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 205, 225, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 221, 226, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 222, 216, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 223, 227, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 220, 214, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 207, 228, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 205);
INSERT INTO public.teams VALUES ('Croatia', 206);
INSERT INTO public.teams VALUES ('Belgium', 207);
INSERT INTO public.teams VALUES ('England', 208);
INSERT INTO public.teams VALUES ('Russia', 209);
INSERT INTO public.teams VALUES ('Sweden', 210);
INSERT INTO public.teams VALUES ('Brazil', 211);
INSERT INTO public.teams VALUES ('Uruguay', 212);
INSERT INTO public.teams VALUES ('Colombia', 213);
INSERT INTO public.teams VALUES ('Switzerland', 214);
INSERT INTO public.teams VALUES ('Japan', 215);
INSERT INTO public.teams VALUES ('Mexico', 216);
INSERT INTO public.teams VALUES ('Denmark', 217);
INSERT INTO public.teams VALUES ('Spain', 218);
INSERT INTO public.teams VALUES ('Portugal', 219);
INSERT INTO public.teams VALUES ('Argentina', 220);
INSERT INTO public.teams VALUES ('Germany', 221);
INSERT INTO public.teams VALUES ('Netherlands', 222);
INSERT INTO public.teams VALUES ('Costa Rica', 223);
INSERT INTO public.teams VALUES ('Chile', 224);
INSERT INTO public.teams VALUES ('Nigeria', 225);
INSERT INTO public.teams VALUES ('Algeria', 226);
INSERT INTO public.teams VALUES ('Greece', 227);
INSERT INTO public.teams VALUES ('United States', 228);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 228, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

