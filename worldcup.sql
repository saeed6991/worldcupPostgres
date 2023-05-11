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
    round character varying(50) NOT NULL,
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
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (794, 2014, 'Eighth-Final', 1325, 1326, 2, 1);
INSERT INTO public.games VALUES (795, 2014, 'Eighth-Final', 1327, 1328, 1, 0);
INSERT INTO public.games VALUES (796, 2014, 'Eighth-Final', 1329, 1330, 2, 1);
INSERT INTO public.games VALUES (797, 2014, 'Eighth-Final', 1331, 1332, 2, 1);
INSERT INTO public.games VALUES (798, 2014, 'Eighth-Final', 1333, 1334, 2, 1);
INSERT INTO public.games VALUES (799, 2014, 'Eighth-Final', 1335, 1336, 2, 0);
INSERT INTO public.games VALUES (800, 2014, 'Eighth-Final', 1337, 1338, 2, 0);
INSERT INTO public.games VALUES (801, 2014, 'Eighth-Final', 1339, 1340, 2, 1);
INSERT INTO public.games VALUES (802, 2014, 'Quarter-Final', 1333, 1335, 1, 0);
INSERT INTO public.games VALUES (803, 2014, 'Quarter-Final', 1339, 1337, 2, 1);
INSERT INTO public.games VALUES (804, 2014, 'Quarter-Final', 1327, 1325, 1, 0);
INSERT INTO public.games VALUES (805, 2014, 'Quarter-Final', 1331, 1329, 1, 0);
INSERT INTO public.games VALUES (806, 2014, 'Semi-Final', 1333, 1339, 7, 1);
INSERT INTO public.games VALUES (807, 2014, 'Semi-Final', 1327, 1331, 1, 0);
INSERT INTO public.games VALUES (808, 2014, 'Third Place', 1331, 1339, 3, 0);
INSERT INTO public.games VALUES (809, 2014, 'Final', 1333, 1327, 1, 0);
INSERT INTO public.games VALUES (810, 2018, 'Eighth-Final', 1335, 1327, 4, 3);
INSERT INTO public.games VALUES (811, 2018, 'Eighth-Final', 1338, 1360, 2, 1);
INSERT INTO public.games VALUES (812, 2018, 'Eighth-Final', 1361, 1362, 2, 1);
INSERT INTO public.games VALUES (813, 2018, 'Eighth-Final', 1363, 1364, 2, 1);
INSERT INTO public.games VALUES (814, 2018, 'Eighth-Final', 1339, 1332, 2, 0);
INSERT INTO public.games VALUES (815, 2018, 'Eighth-Final', 1325, 1368, 3, 2);
INSERT INTO public.games VALUES (816, 2018, 'Eighth-Final', 1369, 1328, 1, 0);
INSERT INTO public.games VALUES (817, 2018, 'Eighth-Final', 1371, 1337, 2, 1);
INSERT INTO public.games VALUES (818, 2018, 'Quarter-Final', 1335, 1338, 2, 0);
INSERT INTO public.games VALUES (819, 2018, 'Quarter-Final', 1325, 1339, 2, 1);
INSERT INTO public.games VALUES (820, 2018, 'Quarter-Final', 1371, 1369, 2, 0);
INSERT INTO public.games VALUES (821, 2018, 'Quarter-Final', 1363, 1361, 3, 2);
INSERT INTO public.games VALUES (822, 2018, 'Semi-Final', 1335, 1325, 1, 0);
INSERT INTO public.games VALUES (823, 2018, 'Semi-Final', 1363, 1371, 2, 1);
INSERT INTO public.games VALUES (824, 2018, 'Third Place', 1325, 1371, 2, 0);
INSERT INTO public.games VALUES (825, 2018, 'Final', 1335, 1363, 4, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1325, 'Belgium');
INSERT INTO public.teams VALUES (1326, 'United States');
INSERT INTO public.teams VALUES (1327, 'Argentina');
INSERT INTO public.teams VALUES (1328, 'Switzerland');
INSERT INTO public.teams VALUES (1329, 'Costa Rica');
INSERT INTO public.teams VALUES (1330, 'Greece');
INSERT INTO public.teams VALUES (1331, 'Netherlands');
INSERT INTO public.teams VALUES (1332, 'Mexico');
INSERT INTO public.teams VALUES (1333, 'Germany');
INSERT INTO public.teams VALUES (1334, 'Algeria');
INSERT INTO public.teams VALUES (1335, 'France');
INSERT INTO public.teams VALUES (1336, 'Nigeria');
INSERT INTO public.teams VALUES (1337, 'Colombia');
INSERT INTO public.teams VALUES (1338, 'Uruguay');
INSERT INTO public.teams VALUES (1339, 'Brazil');
INSERT INTO public.teams VALUES (1340, 'Chile');
INSERT INTO public.teams VALUES (1360, 'Portugal');
INSERT INTO public.teams VALUES (1361, 'Russia');
INSERT INTO public.teams VALUES (1362, 'Spain');
INSERT INTO public.teams VALUES (1363, 'Croatia');
INSERT INTO public.teams VALUES (1364, 'Denmark');
INSERT INTO public.teams VALUES (1368, 'Japan');
INSERT INTO public.teams VALUES (1369, 'Sweden');
INSERT INTO public.teams VALUES (1371, 'England');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 825, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1388, true);


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

