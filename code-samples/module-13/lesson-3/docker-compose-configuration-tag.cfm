<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Docker Compose Configuration
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Docker Compose Configuration (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;"># docker-compose.yml for Microservices
version: '3.8'

services:
  # ColdFusion API Service
  api-service:
    build: ./api-service
    ports:
      - "8500:8500"
    environment:
      - DB_HOST=db
      - DB_NAME=myapp
      - DB_USER=cfuser
      - DB_PASSWORD=cfpass
    depends_on:
      - db
    networks:
      - app-network

  # Database Service
  db:
    image: postgres:15
    environment:
      - POSTGRES_DB=myapp
      - POSTGRES_USER=cfuser
      - POSTGRES_PASSWORD=cfpass
    volumes:
      - db-data:/var/lib/postgresql/data
    networks:
      - app-network

  # Redis Cache
  redis:
    image: redis:7-alpine
    ports:
      - "6379:6379"
    networks:
      - app-network

volumes:
  db-data:

networks:
  app-network:
    driver: bridge</pre>

