# Stage 1: Build documentation with MkDocs
FROM ubuntu:22.04 AS build_docs

# Set environment variables
ENV LANG=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        wget \
        git \
        ca-certificates \
        python3 \
        python3-pip \
        python3-venv \
        python3-dev \
        # Dependencies for PDF generation
        texlive-xetex \
        texlive-fonts-recommended \
        texlive-plain-generic \
        pandoc \
        # Additional dependencies
        libpq-dev \
        # Clean up
        && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN python3 -m pip install --no-cache-dir --upgrade pip setuptools

# Install Node.js (required for MkDocs Material theme)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# Install MkDocs and MkDocs Material
RUN pip install --no-cache-dir mkdocs mkdocs-material

# Optionally install other plugins from requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN playwright install
RUN playwright install-deps
# Copy the rest of the project files
WORKDIR /docs
COPY . .

# Build the documentation
RUN mkdocs build

# Stage 2: Build NGINX image and copy docs
FROM nginx:latest

# Remove default NGINX content
RUN rm -rf /usr/share/nginx/html/*

# Copy built site from the previous stage
COPY --from=build_docs /docs/site /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]