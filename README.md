# Docker Setup & Troubleshooting

## Verify Docker Installation

Check whether Docker is available in your terminal:

bash which docker docker --version docker compose version 

If Docker Desktop is running but the terminal shows:

bash zsh: command not found: docker 

Docker is likely not available in your system PATH.

---

## Check Docker Binary Location

Verify that the Docker binary exists:

bash ls -l /Applications/Docker.app/Contents/Resources/bin/docker 

Expected location:

text /Applications/Docker.app/Contents/Resources/bin/docker 

---

## Add Docker to PATH

For macOS using Zsh:

bash echo 'export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"' >> ~/.zshrc source ~/.zshrc 

Verify the installation:

bash docker --version docker compose version 

---

## Create Symlink (Optional)

If Docker is installed but still unavailable from the terminal:

bash sudo ln -s /Applications/Docker.app/Contents/Resources/bin/docker /usr/local/bin/docker 

For legacy Docker Compose support:

bash sudo ln -s /Applications/Docker.app/Contents/Resources/bin/docker-compose /usr/local/bin/docker-compose 

---

## Common Docker Compose Commands

### Start Services

bash docker compose up docker compose up -d docker compose up --build 

### Stop Services

bash docker compose stop docker compose down docker compose down -v 

### View Running Containers

bash docker compose ps 

### View Logs

bash docker compose logs docker compose logs -f docker compose logs -f <service-name> 

### Access a Container

bash docker compose exec <service-name> sh 

or

bash docker compose exec <service-name> bash 

### Restart Services

bash docker compose restart docker compose restart <service-name> 

### Build Images

bash docker compose build docker compose build --no-cache 

### Validate Configuration

bash docker compose config 

### Clean Up Resources

bash docker system prune docker system prune -a --volumes 
