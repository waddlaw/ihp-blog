

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('840f0d57-547a-43ab-8fa0-0d6fed281cfc', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-03-20 18:57:27.319184+09');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('cd928bc4-0f34-4e20-a01c-5e7b7c6bdaca', '840f0d57-547a-43ab-8fa0-0d6fed281cfc', 'first', 'comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('97324a3f-6f87-499b-a111-2bffc8b4f8c2', '840f0d57-547a-43ab-8fa0-0d6fed281cfc', 'test', 'test');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


