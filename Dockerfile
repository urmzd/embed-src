FROM node:latest

RUN npm install embedme -g

WORKDIR /app

# Copy run script.
COPY entrypoint.sh entrypoint.sh

# Allow the execution of the run script.
# ENTRYPOINT [ "/app/entrypoint.sh" ]

ENTRYPOINT [ "/app/entrypoint.sh" ]
