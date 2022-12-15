#!/bin/sh
cd /app/terrain-classic/
./imposm import --cachedir cache -mapping /app/terrain-classic/imposm3_mapping.json -read /osm/europe-latest.osm.pbf -overwritecache
./imposm import --cachedir cache -mapping /app/terrain-classic/imposm3_mapping.json -connection $DATABASE_URL -write
./imposm import -mapping /app/terrain-classic/imposm3_mapping.json -connection $DATABASE_URL -optimize
./imposm import -mapping /app/terrain-classic/imposm3_mapping.json -connection $DATABASE_URL -deployproduction
make db/shared
make



