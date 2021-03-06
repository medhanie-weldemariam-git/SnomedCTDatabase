DROP DATABASE IF EXISTS exprep;
CREATE DATABASE exprep
  WITH OWNER = postgres
       ENCODING='UTF8'
       CONNECTION LIMIT=-1;

CREATE ROLE exprepuser LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE exprepgroup  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;

GRANT exprepgroup TO exprepuser;

GRANT ALL ON DATABASE exprep TO postgres;
GRANT ALL ON DATABASE exprep TO GROUP exprepgroup;