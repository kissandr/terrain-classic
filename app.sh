#!/bin/sh
make db/shared
make
/app/terrain-classic/imposm3 import -overwritecache -deployproduction -connection $DATABASE_URL -mapping /app/terrain-classic/imposm3_mapping.json -read /osm/europe-latest.osm.pbf -write

