<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Stateless Session Management Example
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Stateless Session Management Example (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">// Stateless Session with JWT (CF 2021+)
component {
    
    // Generate JWT token for user session
    function createSessionToken(required numeric userID, required string username) {
        // Create JWT payload
        var payload = {
            userID: arguments.userID,
            username: arguments.username,
            iat: dateDiff("s", createDate(1970, 1, 1), now()),
            exp: dateDiff("s", createDate(1970, 1, 1), dateAdd("h", 24, now()))
        };
        
        // Sign and encode JWT (using Java library)
        var jwt = createObject("java", "io.jsonwebtoken.Jwts");
        var secret = getEnvironmentVariable("JWT_SECRET");
        
        return jwt.builder()
            .setClaims(payload)
            .signWith(jwt.secretKeyFor(jwt.SignatureAlgorithm.HS256))
            .compact();
    }
    
    // Verify and decode JWT token
    function verifySessionToken(required string token) {
        var jwt = createObject("java", "io.jsonwebtoken.Jwts");
        var secret = getEnvironmentVariable("JWT_SECRET");
        
        try {
            var claims = jwt.parser()
                .setSigningKey(secret)
                .parseClaimsJws(arguments.token)
                .getBody();
            
            return claims;
        } catch (any e) {
            throw("Invalid token");
        }
    }
    
    // Store user data in cache (Redis) instead of session
    function storeUserData(required numeric userID, required struct userData) {
        // Store in Redis with TTL
        var cacheKey = "user:" &amp; arguments.userID;
        cachePut(cacheKey, arguments.userData, createTimeSpan(0, 1, 0, 0));
    }
}</pre>

