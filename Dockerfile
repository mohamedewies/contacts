# Install the app dependencies in a full Node docker image
FROM node:12.18.1

# Copy package.json
COPY package.json ./

# Install app dependencies
RUN npm i

COPY . .

ENV NODE_ENV production
ENV PORT 3001

CMD ["npm", "start"]
