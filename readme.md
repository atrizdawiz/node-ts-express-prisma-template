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
# Start app and db with Docker Compose (in watch mode)
docker compose watch

# Stop containers
docker compose down

# Start only app and db (build mode)
docker compose up

# Run prisma studio when needed
docker compose --profile studio up prisma-studio

# Run schema push when needed
docker compose --profile db-push up prisma-push-schema-to-db
```
