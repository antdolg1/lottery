PGDMP         5                x            lottery_anton    12.1    12.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    lottery_anton    DATABASE     �   CREATE DATABASE lottery_anton WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';
    DROP DATABASE lottery_anton;
                postgres    false                       0    0    DATABASE lottery_anton    ACL     o   REVOKE CONNECT,TEMPORARY ON DATABASE lottery_anton FROM PUBLIC;
GRANT ALL ON DATABASE lottery_anton TO PUBLIC;
                   postgres    false    2830            �            1259    16438    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    16440    lottery    TABLE     �   CREATE TABLE public.lottery (
    id integer NOT NULL,
    status character varying(255),
    title character varying(255),
    start_date character varying,
    end_date character varying,
    participants_limit integer,
    winner_id integer
);
    DROP TABLE public.lottery;
       public         heap    postgres    false            �            1259    16448    participants    TABLE     �   CREATE TABLE public.participants (
    id integer NOT NULL,
    age integer,
    email character varying(255),
    lottery_id integer,
    unique_code character varying(16)
);
     DROP TABLE public.participants;
       public         heap    postgres    false            �
           2606    16447    lottery lottery_pkey1 
   CONSTRAINT     S   ALTER TABLE ONLY public.lottery
    ADD CONSTRAINT lottery_pkey1 PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.lottery DROP CONSTRAINT lottery_pkey1;
       public            postgres    false    205            �
           2606    16452    participants participants_pkey1 
   CONSTRAINT     ]   ALTER TABLE ONLY public.participants
    ADD CONSTRAINT participants_pkey1 PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.participants DROP CONSTRAINT participants_pkey1;
       public            postgres    false    206            �
           2606    16453 (   participants fkryb0o46yngrw9pyv17y0yohg7    FK CONSTRAINT     �   ALTER TABLE ONLY public.participants
    ADD CONSTRAINT fkryb0o46yngrw9pyv17y0yohg7 FOREIGN KEY (lottery_id) REFERENCES public.lottery(id);
 R   ALTER TABLE ONLY public.participants DROP CONSTRAINT fkryb0o46yngrw9pyv17y0yohg7;
       public          postgres    false    2695    206    205           