#!/bin/sh
make db/shared
make
/app/terrain-classic/imposm3 import --cachedir cache -mapping /app/terrain-classic/imposm3_mapping.json -read /osm/europe-latest.osm.pbf -overwritecache
/app/terrain-classic/imposm3 import --cachedir cache -mapping /app/terrain-classic/imposm3_mapping.json -connection $DATABASE_URL -write
/app/terrain-classic/imposm3 import -mapping /app/terrain-classic/imposm3_mapping.json -connection $DATABASE_URL -optimize
/app/terrain-classic/imposm3 import -mapping /app/terrain-classic/imposm3_mapping.json -connection $DATABASE_URL -deployproduction



