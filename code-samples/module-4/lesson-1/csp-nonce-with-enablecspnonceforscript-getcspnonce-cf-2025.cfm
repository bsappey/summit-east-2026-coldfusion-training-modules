<!---
  Auto-generated from modules-data.js (getModule4Data)
  codeTitle: CSP nonce with enableCspNonceForScript + getCSPNonce() (CF 2025+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>CSP nonce with enableCspNonceForScript + getCSPNonce() (CF 2025+)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Application.cfc (CF 2025+) ---&gt;
&lt;cfcomponent&gt;
    &lt;cfset this.name = "MyApplication"&gt;
    &lt;cfset this.enableCspNonceForScript = true&gt;
&lt;/cfcomponent&gt;

&lt;!--- Page with inline JS (CF 2025+) ---&gt;
&lt;cfoutput&gt;
&lt;script type="text/javascript" #getCSPNonce(true)#&gt;
    console.log("This inline script will be allowed by CSP when nonces match.");
&lt;/script&gt;
&lt;/cfoutput&gt;</pre>

