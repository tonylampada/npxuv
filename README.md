# npxuv

A Docker image that combines Node.js with [uv](https://github.com/astral-sh/uv), the ultra-fast Python package installer and resolver.

## Features

- Based on `node:20-slim` official image
- Includes Python 3 and pip
- Includes [uv](https://github.com/astral-sh/uv) package manager
- Ready to use for Node.js and Python projects

## Usage

### Pull the image

```bash
docker pull tonylampada/npxuv
```

### Run a container

```bash
docker run -it --rm tonylampada/npxuv bash
```

### Verify installations

```bash
# Inside the container
npx --version
uv --version
python3 --version
```

## Example: Using both Node.js and Python in a project

```bash
# Run a container with the current directory mounted
docker run -it --rm -v $(pwd):/app -w /app tonylampada/npxuv bash

# Inside the container, you can use both npm/npx and uv
npx create-react-app my-app
uv pip install pandas numpy
```

## Build the image locally

```bash
git clone https://github.com/tonylampada/npxuv.git
cd npxuv
docker build -t npxuv .
```

## License

MIT
