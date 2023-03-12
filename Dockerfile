# Install the app dependencies in a full Node docker image
FROM node:12.18.1

# Copy package.json
COPY package.json ./

# Install app dependencies
RUN npm i

COPY . .

EXPOSE 3001
CMD [ "node", "app.js" ]
