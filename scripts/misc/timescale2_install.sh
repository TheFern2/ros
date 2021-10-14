#!/bin/bash

sudo apt install postgresql-common -y
sudo sh /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh
sudo sh -c "echo 'deb [signed-by=/usr/share/keyrings/timescale.keyring] https://packagecloud.io/timescale/timescaledb/ubuntu/ $(lsb_release -c -s) main' > /etc/apt/sources.list.d/timescaledb.list"
wget --quiet -O - https://packagecloud.io/timescale/timescaledb/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/timescale.keyring
sudo apt-get update

# Now install appropriate package for PG version
sudo apt install timescaledb-2-postgresql-13 -y