<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Dockerfile Example for ColdFusion
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Dockerfile Example for ColdFusion (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Dockerfile for ColdFusion Application (CF 2023+) ---&gt;
# Use Adobe's official ColdFusion image
FROM adobe/coldfusion:2023

# Set working directory
WORKDIR /app

# Copy application files
COPY ./myapp /app/

# Copy configuration
COPY ./config/application.properties /opt/coldfusion/cfusion/bin/

# Expose port
EXPOSE 8500

# Start ColdFusion
CMD ["/opt/coldfusion/cfusion/bin/coldfusion", "start"]</pre>

