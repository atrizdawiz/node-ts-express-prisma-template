# Node.js Express API with TypeScript

A RESTful API template built with Node.js, Express, TypeScript, and PostgreSQL using Prisma ORM. Working configuration with docker compose in watch mode.

## Tech Stack

- Node.js
- TypeScript
- Express
- PostgreSQL
- Prisma ORM
- Docker
- ESLint
- Prettier

## Prerequisites

- Node.js (v18 or higher)
- Docker
- yarn

## Setup

```bash
# Use specified node version
nvm use

# Install dependencies
yarn install

# Generate Prisma client
npx prisma generate

# Run database migrations
npx prisma migrate dev
```

## Docker Development

```bash
# Start with Docker Compose (in watch mode)
docker compose watch

# Stop containers
docker compose down

# Start prisma studio (ui for data inspection)
docker compose up prisma-studio

# Push the current prisma schema to the db (creates db if it does not exists)
docker compose up prisma-push-schema-to-db
```
