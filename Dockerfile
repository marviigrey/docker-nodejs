#base image
FROM node:16

# Create app directory inside the image

WORKDIR /usr/src/node-app

#the image already comes with node.js and npm already so we install the 
#dependencies next.our app uses the dependency "npm" binary.

COPY package*.json ./ 
#the above command copies the .json file into our working directory
RUN npm install 

#wrap up our app
COPY . .

EXPOSE 8080
CMD ["node", "server.js"]  

