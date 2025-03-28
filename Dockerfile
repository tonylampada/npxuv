FROM node:20-slim
# Install Python (required for uv) and curl
RUN apt-get update && apt-get install -y python3 python3-pip curl
# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
# Ensure uv is in the PATH
ENV PATH="/root/.local/bin:$PATH"
# Verify installations
#RUN npx --version && uv --version