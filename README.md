# Diesel CLI

Minimalistic Diesel CLI container.

## Usage

Run Diesel CLI:

```bash
docker run willsquire/diesel-cli
```

### Commands

A practical example with `setup`:

```bash
docker run --rm \
  -v "$(pwd)":/app \
  --network="project_name_default" \
  willsquire/diesel-cli \
  --database-url="mysql://username:password@db_service/db_name" \
  setup
```

Note:

`-v` is the Rust project containing the migrates and config for Diesel.

`--database-url` is the database Diesel will connect to.

`--network` is needed only if the database is running within an existing docker network, e.g. in `docker-compose`. Usually the network name is the current directory name appended with `_default`.

[See Diesel's docs for a full command list](https://github.com/diesel-rs/diesel/blob/master/diesel_cli/README.md#commands)

### Builds

Use in builds:

```dockerfile
FROM willsquire/diesel-cli as builder
COPY . .
RUN diesel setup
```
