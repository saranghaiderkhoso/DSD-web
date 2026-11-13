# 1. Build the React Frontend
FROM node:20-slim AS frontend-build
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ ./
RUN npm run build

# 2. Setup Ubuntu + Verilog Toolchain + Python Backend
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# Install Icarus Verilog, Verilator, Make, and Python 3
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-numpy \
    iverilog verilator make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the entire DSD-8 repository
COPY . /app

# Copy compiled React frontend from Stage 1
COPY --from=frontend-build /app/frontend/dist /app/frontend/dist

# Install FastAPI & Uvicorn
RUN pip3 install --no-cache-dir fastapi uvicorn pydantic

EXPOSE 7860

# Start FastAPI serving both API and React UI on port 7860
CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "7860"]