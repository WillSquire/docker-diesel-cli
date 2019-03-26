Diesel CLI
===========
Minimalistic Diesel CLI container.

Usage
-----
Run Diesel CLI:
```bash
docker run willsquire/diesel-cli
```

**Note:** 

`--database-url` might be needed for connection by Diesel CLI.

`--network` might be needed by docker to connect to an existing docker network (such as `docker-compose`).

### Commands
A practical example with `setup`:
```bash
docker run --rm -v "$(pwd)":/app --network="project_name_default" willsquire/diesel-cli --database-url="mysql://username:password@db_service/db_name" setup
```

[See Diesel's docs for a full command list](https://github.com/diesel-rs/diesel/blob/master/diesel_cli/README.md#commands)

### Builds
Use in builds:
```dockerfile
FROM willsquire/diesel-cli as builder
COPY . .
RUN diesel setup
```
