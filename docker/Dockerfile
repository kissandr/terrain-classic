FROM node:8.8
WORKDIR /app
RUN git clone https://github.com/kissandr/terrain-classic.git 
WORKDIR /app/terrain-classic
RUN npm install pgexplode && apt-get update && apt-get -y --force-yes install postgresql-client gdal-bin && make
#ENV DATABASE_URL=postgis://postgis:tudomisen@postgres/gis
COPY start.sh /app/
CMD [ "/app/start.sh" ]

