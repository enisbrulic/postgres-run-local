CREATE ROLE superuser1 WITH LOGIN PASSWORD 'password';
ALTER USER superuser1 WITH SUPERUSER;

CREATE ROLE appuser1 WITH LOGIN PASSWORD 'appuser1password' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE DATABASE myappdb;

GRANT ALL PRIVILEGES ON DATABASE myappdb TO superuser1;
GRANT ALL PRIVILEGES ON DATABASE myappdb TO appuser1;
