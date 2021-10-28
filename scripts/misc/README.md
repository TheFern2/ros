## postgres new user

```
sudo -u postgres createuser fernandob

# psql
create database fernandob;
ALTER USER fernandob with SUPERUSER;
ALTER USER fernandob PASSWORD 'fernando23';
add user to /etc/postgresql/13/main/pg_hba.conf PEER

sudo service postgresql restart

```
