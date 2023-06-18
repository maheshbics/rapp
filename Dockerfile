Use an official Node.js runtime as the base image
FROM node:16

 

# Set the working directory inside the container
WORKDIR /root/material-dashboard

 

# Copy package.json and package-lock.json to the container
COPY package*.json ./

 

# Install dependencies
RUN npm install

 

# Copy the entire application to the container
COPY . .

 

# Build the React app
RUN npm start

 

# Expose the desired port (change 80 to the appropriate port if needed)
EXPOSE 3000

 

# Specify the command to run when the container starts
CMD [ "npm", "start" ]


FROM nginx:alpine
COPY --from=node /app/build/ /usr/share/nginx/html
