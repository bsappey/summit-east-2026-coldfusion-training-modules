<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: GitHub Actions CI/CD Pipeline
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>GitHub Actions CI/CD Pipeline (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;"># .github/workflows/coldfusion-ci.yml
name: ColdFusion CI/CD

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Setup Java
        uses: actions/setup-java@v3
        with:
          java-version: '11'
      
      - name: Run Tests
        run: |
          # Run ColdFusion unit tests
          # This would use TestBox or similar testing framework
          echo "Running tests..."
      
      - name: Build Docker Image
        run: |
          docker build -t myapp:${GITHUB_SHA} .
      
      - name: Push to Registry
        if: github.ref == 'refs/heads/main'
        run: |
          docker push myapp:${GITHUB_SHA}
      
  deploy:
    needs: test
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'
    steps:
      - name: Deploy to Production
        run: |
          # Deploy to production server
          echo "Deploying to production..."</pre>

