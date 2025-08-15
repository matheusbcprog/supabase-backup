--
-- PostgreSQL database cluster dump
--

\restrict 9tMPYlvDxcPPSzMuvIHQpP7Ex09fxiSCVzJUGpyvKwbBB0zdhH32DLUSp5RapGF

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE anon;
ALTER ROLE anon WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE authenticated;
ALTER ROLE authenticated WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE authenticator;
ALTER ROLE authenticator WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:05fcH1GWec8o2/0cWSoh8g==$ktXFxxB8aNeyf8XJKPNUZkZTe6neO+ECbdFU2IlYGKI=:KBUcWI0zHcJXzCqYyN8PnYaIpx2F3ScKAudtjUDHOec=';
CREATE ROLE dashboard_user;
ALTER ROLE dashboard_user WITH NOSUPERUSER INHERIT CREATEROLE CREATEDB NOLOGIN REPLICATION NOBYPASSRLS;
CREATE ROLE pgbouncer;
ALTER ROLE pgbouncer WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:HPweGhGXHzxo10cPpN6gxA==$wNI+602aqGIBMfekdUBFjLkPBvKcf4XJCVXYuoChqS0=:s09ac4zVUJunlwTwmZj2UnQdZ1rdxLtEI1WrInHYUnU=';
CREATE ROLE pgsodium_keyholder;
ALTER ROLE pgsodium_keyholder WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE pgsodium_keyiduser;
ALTER ROLE pgsodium_keyiduser WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE pgsodium_keymaker;
ALTER ROLE pgsodium_keymaker WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH NOSUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:x5B7BUlhHGXysEmjzPOJxg==$8jyGWmmffWVXUYZ1tm1ck6pXOzlxWt4rBTeDJlmKM7U=:QQmm2gdQmbn/ylDdpW+RhDxGvlLd2QMOc5O0uvvxXZQ=';
CREATE ROLE service_role;
ALTER ROLE service_role WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION BYPASSRLS;
CREATE ROLE supabase_admin;
ALTER ROLE supabase_admin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:B3ZLCq+fHBmEU9GlUvNNQQ==$BwCnwMtEKN25ZWFRdhQzPgbHA63WOmoi7Awo8GhH5wE=:9PBbswv3p4lf+LVK7ooV2oT+zSsaE92sFQp7e5EKAYU=';
CREATE ROLE supabase_auth_admin;
ALTER ROLE supabase_auth_admin WITH NOSUPERUSER NOINHERIT CREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:4KRxSNjQfCrnBG5TrH1ZGw==$WwS4CKNEe785hNpC91mEoBaeW2z/xDm6FjOdsMMUZko=:fD1GMHXe7iJDohDXSPXUGCpsZsNGzdMm6GZLNo0jYo0=';
CREATE ROLE supabase_read_only_user;
ALTER ROLE supabase_read_only_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:lIQMO7WafbJlJCzBQGmMIw==$0ZlKLbofZB6UNU1kdBqJR0qWXJTCy4/jkZ0NQIQy2rg=:iMM2O+BRpxHKNb/ITKdMlzJeR8y9xjSh4TPrU6LQxy0=';
CREATE ROLE supabase_realtime_admin;
ALTER ROLE supabase_realtime_admin WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE supabase_replication_admin;
ALTER ROLE supabase_replication_admin WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN REPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:1GecE6deI08WlvbIy88Ezw==$Ml2l+Ghp7upRdwo+d2AadU3UJLS/jW/K01Jn4LYip1E=:ZUp+Xc7wu5QjBMY7eAWRC1qy8+aZeWYEEuUdMUsDYMw=';
CREATE ROLE supabase_storage_admin;
ALTER ROLE supabase_storage_admin WITH NOSUPERUSER NOINHERIT CREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:YBZRJgVzKziVFfBMTaO2oQ==$eGs0QV8RBRUuq84uddg6f/ME5+lbRPEONNhYHCBWC4s=:IXL654o0vX6rjCMRjHCzOM47J6PSyReXmDZQio4q1cs=';

--
-- User Configurations
--

--
-- User Config "anon"
--

ALTER ROLE anon SET statement_timeout TO '3s';

--
-- User Config "authenticated"
--

ALTER ROLE authenticated SET statement_timeout TO '8s';

--
-- User Config "authenticator"
--

ALTER ROLE authenticator SET session_preload_libraries TO 'safeupdate';
ALTER ROLE authenticator SET statement_timeout TO '8s';
ALTER ROLE authenticator SET lock_timeout TO '8s';

--
-- User Config "postgres"
--

ALTER ROLE postgres SET search_path TO E'\\$user', 'public', 'extensions';

--
-- User Config "supabase_admin"
--

ALTER ROLE supabase_admin SET search_path TO '$user', 'public', 'auth', 'extensions';
ALTER ROLE supabase_admin SET log_statement TO 'none';

--
-- User Config "supabase_auth_admin"
--

ALTER ROLE supabase_auth_admin SET search_path TO 'auth';
ALTER ROLE supabase_auth_admin SET idle_in_transaction_session_timeout TO '60000';
ALTER ROLE supabase_auth_admin SET log_statement TO 'none';

--
-- User Config "supabase_storage_admin"
--

ALTER ROLE supabase_storage_admin SET search_path TO 'storage';
ALTER ROLE supabase_storage_admin SET log_statement TO 'none';


--
-- Role memberships
--

GRANT anon TO authenticator;
GRANT anon TO postgres;
GRANT authenticated TO authenticator;
GRANT authenticated TO postgres;
GRANT authenticator TO supabase_storage_admin;
GRANT pg_monitor TO postgres;
GRANT pg_read_all_data TO postgres;
GRANT pg_read_all_data TO supabase_read_only_user;
GRANT pg_signal_backend TO postgres;
GRANT pgsodium_keyholder TO pgsodium_keymaker;
GRANT pgsodium_keyholder TO postgres WITH ADMIN OPTION;
GRANT pgsodium_keyholder TO service_role;
GRANT pgsodium_keyiduser TO pgsodium_keyholder;
GRANT pgsodium_keyiduser TO pgsodium_keymaker;
GRANT pgsodium_keyiduser TO postgres WITH ADMIN OPTION;
GRANT pgsodium_keymaker TO postgres WITH ADMIN OPTION;
GRANT service_role TO authenticator;
GRANT service_role TO postgres;
GRANT supabase_realtime_admin TO postgres;




\unrestrict 9tMPYlvDxcPPSzMuvIHQpP7Ex09fxiSCVzJUGpyvKwbBB0zdhH32DLUSp5RapGF

--
-- PostgreSQL database cluster dump complete
--

