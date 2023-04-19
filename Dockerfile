FROM node:14

RUN npm install embedme -g

# copy files. 
COPY docker-entrypoint.sh docker-entrypoint.sh

# run embedme 
ENTRYPOINT ["./docker-entrypoint.sh"]
