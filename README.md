# MERN Blog Application

This repository contains a MERN (MongoDB, Express, React, Node.js) based blog platform. The website allows users to create, store, and manage technology-related blogs with rich text formatting and image uploads. 

## Table of Contents
1. [Technologies Used](#technologies-used)
2. [Project Structure](#project-structure)
3. [Running the Project](#running-the-project)
   - [Running with Docker](#running-with-docker)
   - [Running Locally (Without Docker)](#running-locally-without-docker)
4. [Environment Variables](#environment-variables)
5. [Proxy Configuration](#proxy-configuration)
   - [Running with Docker](#proxy-configuration-with-docker)
   - [Running Locally (Without Docker)](#proxy-configuration-without-docker)

## Technologies Used
- **Frontend**: React.js
- **Backend**: Express.js, Node.js
- **Database**: MongoDB
- **Image Storage**: Cloudinary
- **Deployment**: Docker (Optional)


## Running the Project

### Running with Docker

1. **Clone the repository**:
    ```bash
    git clone https://github.com/samarsrivastav/blog-app.git
    cd blog-app
    ```

2. **Create the `.env` files** for both frontend and backend (explained in the [Environment Variables](#environment-variables) section below).

3. **Build and run the Docker containers**:
    ```bash
    docker-compose up --build
    ```

4. **Access the application**:
   - Frontend: [http://localhost:3000](http://localhost:3000)
   - Backend API: [http://localhost:5400](http://localhost:5400)

5. **IMPORTANT**:
    - CHANGE THE PROXY IN ./client/package.json [localhost:5400] to [backend:5400]

### Running Locally (Without Docker)

1. **Clone the repository**:
    ```bash
    git clone https://github.com/samarsrivastav/blog-app.git
    cd blog-app
    ```

2. **Setup the backend**:
    - Navigate to the `backend` folder:
      ```bash
      cd backend
      ```
    - Install dependencies:
      ```bash
      npm install
      ```
    - Set up the `.env` file (explained below).
    - Start the backend server:
      ```bash
      npm start
      ```
    - By default, the backend will run on port `5400`.

3. **Setup the frontend**:
    - Navigate to the `frontend` folder:
      ```bash
      cd ../frontend
      ```
    - Install dependencies:
      ```bash
      npm install
      ```
    - Set up the `.env` file (explained below).
    - Start the React frontend:
      ```bash
      npm start
      ```
    - By default, the frontend will run on port `3000`.

4. **Access the application**:
   - Frontend: [http://localhost:3000](http://localhost:3000)
   - Backend API: [http://localhost:5400](http://localhost:5400)

5. **IMPORTANT**:
    - CHANGE THE PROXY IN ./client/package.json [backend:5400] to [localhost:5400]

## Environment Variables

You need to create `.env` files in both the `frontend` and `backend` folders to provide configuration values.

### Backend `.env` file:
Create a `.env` file in the `backend` folder with the following variables:

```bash
PORT=5400
MONGO_URI=<Your_MongoDB_URI>
CLOUDINARY_CLOUD_NAME=<Your_Cloudinary_Cloud_Name>
CLOUDINARY_API_KEY=<Your_Cloudinary_API_Key>
CLOUDINARY_API_SECRET=<Your_Cloudinary_API_Secret>

