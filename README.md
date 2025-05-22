# Zuno Marketplace

A secure and private marketplace platform with Tor network integration.

## Project Structure

The project is divided into three main services:

### 1. Tor Service
- Handles .onion link generation
- Provides Tor network access
- Located in `/tor` directory

### 2. Backend Service (FastAPI)
- RESTful API server
- Written in Python using FastAPI framework
- Located in `/backend` directory

### 3. Frontend Service (Next.js)
- Modern vendor interface
- Built with Next.js and Tailwind CSS
- Located in `/frontend` directory

## Getting Started

### Prerequisites
- Docker
- Docker Compose

### Installation & Setup

1. Clone the repository:
```bash
git clone https://github.com/yourusername/zuno-marketplace.git
cd zuno-marketplace
```

2. Build and start the services:
```bash
docker-compose up --build
```

### Accessing the Services

Once the services are running, you can access:

- Frontend: http://localhost:3000
- Backend API: http://localhost:8000
- Tor SOCKS Proxy: localhost:9050

## Development

### Frontend Development
The frontend is built with:
- Next.js 14
- TypeScript
- Tailwind CSS
- Shadcn UI Components

### Backend Development
The backend uses:
- FastAPI
- Python 3.9
- CORS middleware
- Error handling and logging

### Tor Configuration
The Tor service is configured to:
- Create a hidden service
- Expose SOCKS proxy
- Persist hidden service keys

## Docker Services

### Service Dependencies
```
frontend -> backend -> tor
```

### Ports
- Frontend: 3000
- Backend: 8000
- Tor SOCKS: 9050

### Volumes
- Tor hidden service keys are persisted using Docker volumes

## Security Features

- End-to-end encryption through Tor network
- Secure API endpoints
- Modern authentication (to be implemented)
- Hidden service configuration

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
