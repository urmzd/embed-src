FROM node:14

RUN npm install embedme -g

# Copy run script.
COPY docker-entrypoint.sh docker-entrypoint.sh

# Allow the execution of the run script.
ENTRYPOINT ["docker-entrypoint.sh"]
