FROM node:14

RUN npm install embedme -g

# copy files. 
COPY src/entrypoint.sh entrypoint.sh

# run embedme 
ENTRYPOINT ["./src/entrypoint.sh"]
