FROM node:20

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and install dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# Step 4: Copy the rest of the application files
COPY . .

# Step 5: Expose the port the server will run on
EXPOSE 5400

# Step 6: Start the Node.js server
CMD ["npm", "start"]
