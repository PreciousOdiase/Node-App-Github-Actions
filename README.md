# Node.js App with GitHub Actions CI/CD & Docker

This project is a simple Node.js application built with [Express](https://expressjs.com/). It demonstrates a modern CI/CD workflow using GitHub Actions, including automated testing, linting, secret scanning, and Docker image publishing.

## Features

- **Node.js Express App**: Serves a basic "Hello World!" endpoint.
- **Testing**: Uses [Jest](https://jestjs.io/) and [Supertest](https://github.com/ladjs/supertest) for automated tests.
- **Linting**: Configured with [ESLint](https://eslint.org/) for code quality.
- **GitHub Actions CI/CD**:
  - **Build & Test**: Installs dependencies, runs tests, and lints code on every push or pull request to `main`.
  - **Secret Scanning**: Uses [Gitleaks](https://github.com/gitleaks/gitleaks) to scan for secrets in the codebase.
  - **Docker Build & Push**: Builds a Docker image and pushes it to Docker Hub.
- **Docker Support**: Includes a `Dockerfile` for containerization.

## Project Structure

```
.
├── .github
│   └── workflows
│       └── nodejs.yml
├── src
│   ├── app.js
│   └── routes
│       └── index.js
├── tests
│   └── app.test.js
├── .dockerignore
├── .gitignore
├── Dockerfile
├── package.json
└── README.md
```

- **.github/workflows/nodejs.yml**: GitHub Actions workflow configuration.
- **src/**: Source code for the Node.js application.
- **tests/**: Automated tests for the application.
- **.dockerignore**: Files and directories to ignore when building the Docker image.
- **.gitignore**: Files and directories to ignore in the Git repository.
- **Dockerfile**: Instructions for building the Docker image.
- **package.json**: Node.js dependencies and scripts.
- **README.md**: This file.

## Getting Started

To run this project locally, you need to have [Node.js](https://nodejs.org/) and [Docker](https://www.docker.com/) installed.

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/nodejs-gh-actions-docker.git
   cd nodejs-gh-actions-docker
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Run the application:

   ```bash
   npm start
   ```

4. Access the application at `http://localhost:3000`.

## Running Tests

To run the automated tests, use the following command:

```bash
npm test
```

## Linting

To check the code for linting errors, run:

```bash
npm run lint
```

## Docker

To build and run the Docker container:

1. Build the Docker image:

   ```bash
   docker build -t yourusername/nodejs-app .
   ```

2. Run the Docker container:

   ```bash
   docker run -p 3000:3000 yourusername/nodejs-app
   ```

3. Access the application at `http://localhost:3000`.

## GitHub Actions

This project uses GitHub Actions for CI/CD. The workflow is defined in the `.github/workflows/nodejs.yml` file. It includes steps for:

- Checking out the code.
- Setting up Node.js.
- Installing dependencies.
- Running tests.
- Linting the code.
- Scanning for secrets.
- Building and pushing the Docker image.
