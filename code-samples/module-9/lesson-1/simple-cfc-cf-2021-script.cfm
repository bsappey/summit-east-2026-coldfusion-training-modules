<!---
  Auto-generated from modules-data.js (getModule9Data)
  codeTitle: Simple CFC (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<h1>Simple CFC (CF 2021+) (script)</h1>
<p><strong>Display-only sample.</strong> This snippet is a component, Dockerfile, compose/YAML, or other non-page artifact.</p>
<p>This content is not executed as a ColdFusion page; copy it into the appropriate file type (for example <code>.cfc</code>, <code>Dockerfile</code>, or <code>Application.cfc</code>).</p>
<pre style="white-space:pre-wrap;background:#f5f5f5;padding:1rem;border:1px solid #ddd;">&lt;!--- Script equivalent: components/Person.cfc ---&gt;
component {
    property name="firstName" type="string";
    property name="lastName" type="string";

    public Person function init(required string firstName, required string lastName) {
        variables.firstName = arguments.firstName;
        variables.lastName = arguments.lastName;
        return this;
    }

    public string function getFullName() {
        return variables.firstName &amp; " " &amp; variables.lastName;
    }
}</pre>

