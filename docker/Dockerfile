FROM node:8.8
WORKDIR /app
RUN git clone https://github.com/kissandr/terrain-classic.git 
WORKDIR /app/terrain-classic
RUN npm install pgexplode && apt-get update && apt-get -y --force-yes install postgresql-client gdal-bin && make
COPY wait-for-postgres.sh start.sh /app/
WORKDIR /app
CMD [ "./wait-for-postgres.sh","postgis","./start.sh" ]

