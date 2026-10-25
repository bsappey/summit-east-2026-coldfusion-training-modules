<!---
  Auto-generated from modules-data.js (getModule13Data)
  codeTitle: Stateless Session Management Example
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Stateless Session Management Example (tag)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Stateless Session with JWT (CF 2021+) ---&gt;
&lt;cfcomponent&gt;
    &lt;!--- Generate JWT token for user session ---&gt;
    &lt;cffunction name="createSessionToken" returntype="string"&gt;
        &lt;cfargument name="userID" type="numeric" required="true"&gt;
        &lt;cfargument name="username" type="string" required="true"&gt;
        
        &lt;!--- Create JWT payload ---&gt;
        &lt;cfset payload = {
            userID: arguments.userID,
            username: arguments.username,
            iat: dateDiff("s", createDate(1970, 1, 1), now()),
            exp: dateDiff("s", createDate(1970, 1, 1), dateAdd("h", 24, now()))
        }&gt;
        
        &lt;!--- Sign and encode JWT (using Java library) ---&gt;
        &lt;cfset jwt = createObject("java", "io.jsonwebtoken.Jwts")&gt;
        &lt;cfset secret = getEnvironmentVariable("JWT_SECRET")&gt;
        
        &lt;cfreturn jwt.builder()
            .setClaims(payload)
            .signWith(jwt.secretKeyFor(jwt.SignatureAlgorithm.HS256))
            .compact()&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- Verify and decode JWT token ---&gt;
    &lt;cffunction name="verifySessionToken" returntype="struct"&gt;
        &lt;cfargument name="token" type="string" required="true"&gt;
        
        &lt;cfset jwt = createObject("java", "io.jsonwebtoken.Jwts")&gt;
        &lt;cfset secret = getEnvironmentVariable("JWT_SECRET")&gt;
        
        &lt;cftry&gt;
            &lt;cfset claims = jwt.parser()
                .setSigningKey(secret)
                .parseClaimsJws(arguments.token)
                .getBody()&gt;
            
            &lt;cfreturn claims&gt;
            &lt;cfcatch&gt;
                &lt;cfthrow message="Invalid token"&gt;
            &lt;/cfcatch&gt;
        &lt;/cftry&gt;
    &lt;/cffunction&gt;
    
    &lt;!--- Store user data in cache (Redis) instead of session ---&gt;
    &lt;cffunction name="storeUserData" returntype="void"&gt;
        &lt;cfargument name="userID" type="numeric" required="true"&gt;
        &lt;cfargument name="userData" type="struct" required="true"&gt;
        
        &lt;!--- Store in Redis with TTL ---&gt;
        &lt;cfset cacheKey = "user:#arguments.userID#"&gt;
        &lt;cfset cachePut(cacheKey, arguments.userData, createTimeSpan(0, 1, 0, 0))&gt;
    &lt;/cffunction&gt;
&lt;/cfcomponent&gt;</pre>

