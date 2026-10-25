/**
 * Supplemental quiz bank loaded before quiz.js.
 * Core quizzes for modules 3 (Language) and 14 (AI intro) remain in quiz.js.
 * Verify answers against Adobe ColdFusion User Guide (primary) and CFDocs (secondary).
 */
window.CFTraining = window.CFTraining || {};
CFTraining.quizQuestionsByModule = {
    0: {
        questions: [
            {
                question: 'Which file extension is most commonly used for ColdFusion markup pages?',
                type: 'single',
                answers: [
                    { text: '.html', value: 'a' },
                    { text: '.cfm', value: 'b' },
                    { text: '.jsp', value: 'c' },
                    { text: '.php', value: 'd' }
                ],
                correct: 'b',
                explanation: 'ColdFusion pages typically use the <code>.cfm</code> extension. See Adobe docs on developing CFML applications.'
            },
            {
                question: 'When testing a site locally, where do training files usually live relative to the ColdFusion web root?',
                type: 'single',
                answers: [
                    { text: 'Under the JVM <code>bin</code> folder', value: 'a' },
                    { text: 'Under the web root (for example <code>wwwroot</code>) so URLs map to those files', value: 'b' },
                    { text: 'Only inside <code>/WEB-INF</code>', value: 'c' },
                    { text: 'In any folder; ColdFusion finds them automatically', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Files must be reachable via the web server document root for the URL you use in the browser.'
            },
            {
                question: 'Which practice helps when learning ColdFusion across versions?',
                type: 'single',
                answers: [
                    { text: 'Ignore version badges in lessons', value: 'a' },
                    { text: 'Check which ColdFusion version a feature requires before using it', value: 'b' },
                    { text: 'Always use the oldest syntax only', value: 'c' },
                    { text: 'Avoid reading official documentation', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Features differ by release; use version indicators and the Adobe User Guide for authoritative behavior.'
            }
        ]
    },
    4: {
        questions: [
            {
                question: 'Which scope holds data submitted from an HTML form (default form method)?',
                type: 'single',
                answers: [
                    { text: 'Session', value: 'a' },
                    { text: 'Form', value: 'b' },
                    { text: 'Application', value: 'c' },
                    { text: 'Server', value: 'd' }
                ],
                correct: 'b',
                explanation: 'For typical form posts, use the <code>form</code> scope (tag: Form scope) to read submitted fields.'
            },
            {
                question: 'What is a primary purpose of <code>&lt;cfoutput&gt;</code>?',
                type: 'single',
                answers: [
                    { text: 'Define a database connection', value: 'a' },
                    { text: 'Render evaluated expressions and variables to the response', value: 'b' },
                    { text: 'Redirect the user to another URL', value: 'c' },
                    { text: 'Compile Java source files', value: 'd' }
                ],
                correct: 'b',
                explanation: '<code>cfoutput</code> outputs content and evaluates <code>#variables#</code> in the output stream.'
            },
            {
                question: 'Which choice best describes the Session scope?',
                type: 'single',
                answers: [
                    { text: 'Shared by all users forever', value: 'a' },
                    { text: 'Data that persists for a single user across requests in the same session', value: 'b' },
                    { text: 'Read-only constants for the JVM', value: 'c' },
                    { text: 'Only available inside <code>cfquery</code>', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Session scope stores per-user data for the lifetime of the session (see Adobe docs on using scopes).'
            }
        ]
    },
    5: {
        questions: [
            {
                question: 'Why is <code>cfqueryparam</code> recommended for dynamic SQL values?',
                type: 'single',
                answers: [
                    { text: 'It speeds up DNS lookups', value: 'a' },
                    { text: 'It helps prevent SQL injection by binding parameters safely', value: 'b' },
                    { text: 'It replaces the need for a datasource', value: 'c' },
                    { text: 'It only works with NoSQL', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Use <code>cfqueryparam</code> to bind values and reduce injection risk. Verify details in the Adobe User Guide.'
            },
            {
                question: 'Which tag runs a SQL statement against a datasource?',
                type: 'single',
                answers: [
                    { text: '<code>&lt;cfhttp&gt;</code>', value: 'a' },
                    { text: '<code>&lt;cfquery&gt;</code>', value: 'b' },
                    { text: '<code>&lt;cfsavecontent&gt;</code>', value: 'c' },
                    { text: '<code>&lt;cfmail&gt;</code>', value: 'd' }
                ],
                correct: 'b',
                explanation: '<code>cfquery</code> executes SQL and returns a query object.'
            },
            {
                question: 'In ColdFusion, a structure is most similar to:',
                type: 'single',
                answers: [
                    { text: 'A fixed-length string only', value: 'a' },
                    { text: 'A collection of key/value pairs', value: 'b' },
                    { text: 'A binary image buffer only', value: 'c' },
                    { text: 'A compiled CFC file only', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Structures map keys to values and are widely used for JSON-like data.'
            }
        ]
    },
    6: {
        questions: [
            {
                question: 'Which tag is commonly used to read or write files on the server filesystem (with appropriate permissions)?',
                type: 'single',
                answers: [
                    { text: '<code>&lt;cffile&gt;</code>', value: 'a' },
                    { text: '<code>&lt;cfpdf&gt;</code> only', value: 'b' },
                    { text: '<code>&lt;cfajax&gt;</code>', value: 'c' },
                    { text: '<code>&lt;cfchart&gt;</code> only', value: 'd' }
                ],
                correct: 'a',
                explanation: '<code>cffile</code> handles file operations; always follow server sandbox and security settings.'
            },
            {
                question: 'ColdFusion can generate PDF output using:',
                type: 'single',
                answers: [
                    { text: '<code>&lt;cfpdf&gt;</code> and related PDF features (version-dependent)', value: 'a' },
                    { text: 'Only client-side JavaScript', value: 'b' },
                    { text: '<code>&lt;cfquery&gt;</code> alone', value: 'c' },
                    { text: 'HTML comments only', value: 'd' }
                ],
                correct: 'a',
                explanation: 'See Adobe documentation for PDF generation features available in your ColdFusion version.'
            },
            {
                question: 'Before writing user-controlled paths to disk, you should:',
                type: 'single',
                answers: [
                    { text: 'Trust the path completely', value: 'a' },
                    { text: 'Validate and canonicalize paths to avoid directory traversal', value: 'b' },
                    { text: 'Disable all logging', value: 'c' },
                    { text: 'Always use the temp directory without checks', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Treat file paths as untrusted input; combine validation with OS and sandbox permissions.'
            }
        ]
    },
    7: {
        questions: [
            {
                question: 'Cloud storage integration (for example S3-style APIs) in ColdFusion is primarily a:',
                type: 'single',
                answers: [
                    { text: 'CF 6 feature with no configuration', value: 'a' },
                    { text: 'Feature set that depends on version and documented cloud connectors', value: 'b' },
                    { text: 'Purely client-side feature', value: 'c' },
                    { text: 'Replacement for relational databases in all cases', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Check the Adobe User Guide for your CF version for supported cloud services and configuration.'
            },
            {
                question: 'Credentials for cloud APIs should be stored:',
                type: 'single',
                answers: [
                    { text: 'In source code committed to Git', value: 'a' },
                    { text: 'In environment-specific secure configuration outside the repo', value: 'b' },
                    { text: 'In HTML comments', value: 'c' },
                    { text: 'In client-side JavaScript only', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Never hardcode secrets; use secure configuration appropriate to your deployment.'
            },
            {
                question: 'When uploading files to object storage, what should you still validate?',
                type: 'single',
                answers: [
                    { text: 'Nothing; the cloud provider validates everything', value: 'a' },
                    { text: 'Content type, size, and authorization on your application side', value: 'b' },
                    { text: 'Only the file color depth', value: 'c' },
                    { text: 'Only the browser user-agent string', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Application-layer validation and authorization remain your responsibility.'
            }
        ]
    },
    8: {
        questions: [
            {
                question: 'Which function is commonly used to encode output for HTML context to reduce XSS risk?',
                type: 'single',
                answers: [
                    { text: '<code>encodeForHTML()</code>', value: 'a' },
                    { text: '<code>trim()</code> only', value: 'b' },
                    { text: '<code>randRange()</code>', value: 'c' },
                    { text: '<code>listLen()</code>', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use context-appropriate encoding functions (for example <code>encodeForHTML</code>) per Adobe security guidance.'
            },
            {
                question: 'Authentication logic should generally live:',
                type: 'single',
                answers: [
                    { text: 'Only in CSS files', value: 'a' },
                    { text: 'On the server after validating credentials safely', value: 'b' },
                    { text: 'Only in URL fragments (#)', value: 'c' },
                    { text: 'In client storage with no hashing', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Enforce authentication and authorization on the server; never rely on hidden fields alone.'
            },
            {
                question: 'User input used in SQL should be:',
                type: 'single',
                answers: [
                    { text: 'Concatenated directly into the SQL string', value: 'a' },
                    { text: 'Passed via <code>cfqueryparam</code> (or equivalent safe APIs)', value: 'b' },
                    { text: 'Ignored', value: 'c' },
                    { text: 'Base64-encoded only, without validation', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Parameterize queries to mitigate SQL injection.'
            }
        ]
    },
    9: {
        questions: [
            {
                question: 'In ColdFusion, reusable object-oriented code is commonly implemented with:',
                type: 'single',
                answers: [
                    { text: 'CFCs (<code>.cfc</code>)', value: 'a' },
                    { text: 'Only <code>.css</code> files', value: 'b' },
                    { text: 'Batch files only', value: 'c' },
                    { text: 'Excel macros only', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Components (CFCs) encapsulate methods and data; see Adobe docs on building components.'
            },
            {
                question: 'What does <code>extends</code> on a component indicate?',
                type: 'single',
                answers: [
                    { text: 'Inheritance from a parent component', value: 'a' },
                    { text: 'A database index', value: 'b' },
                    { text: 'A PDF font embedding', value: 'c' },
                    { text: 'A REST status code', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Component inheritance follows the <code>extends</code> attribute in the component declaration.'
            },
            {
                question: 'A good reason to separate business logic from display code is:',
                type: 'single',
                answers: [
                    { text: 'To make testing and maintenance harder', value: 'a' },
                    { text: 'To improve testability, reuse, and clearer structure', value: 'b' },
                    { text: 'To remove all security controls', value: 'c' },
                    { text: 'To forbid use of CFCs', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Layered design (services, views) is standard practice in CF applications.'
            }
        ]
    },
    1: {
        questions: [
            {
                question: 'When comparing ColdFusion versions, you should rely on:',
                type: 'single',
                answers: [
                    { text: 'Random forum posts only', value: 'a' },
                    { text: 'Adobe release notes and the User Guide for your target version', value: 'b' },
                    { text: 'Guessing based on file size', value: 'c' },
                    { text: 'The JVM minor version only', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Official Adobe documentation is authoritative for feature availability and behavior.'
            },
            {
                question: 'Newer ColdFusion versions may introduce:',
                type: 'single',
                answers: [
                    { text: 'Breaking changes; always review migration notes when upgrading', value: 'a' },
                    { text: 'Identical behavior for every deprecated feature without review', value: 'b' },
                    { text: 'No configuration changes ever', value: 'c' },
                    { text: 'Automatic rewrite of all legacy CFML', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Plan upgrades using Adobe migration and compatibility documentation.'
            },
            {
                question: 'Version badges in this training indicate:',
                type: 'single',
                answers: [
                    { text: 'Which CF releases the lesson material is written for', value: 'a' },
                    { text: 'The year the author was born', value: 'b' },
                    { text: 'Bootstrap versions only', value: 'c' },
                    { text: 'Database port numbers', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use badges as a guide; confirm against Adobe docs for your deployment.'
            }
        ]
    },
    13: {
        questions: [
            {
                question: 'Caching in ColdFusion can help:',
                type: 'single',
                answers: [
                    { text: 'Reduce repeated expensive work when used correctly', value: 'a' },
                    { text: 'Eliminate the need for security', value: 'b' },
                    { text: 'Guarantee data is always live without TTL or invalidation', value: 'c' },
                    { text: 'Replace databases entirely in every app', value: 'd' }
                ],
                correct: 'a',
                explanation: 'See Adobe docs on caching features and invalidation strategies for your version.'
            },
            {
                question: 'REST services in CF are often built with:',
                type: 'single',
                answers: [
                    { text: 'REST-related features and routing as documented for your version', value: 'a' },
                    { text: 'Only static HTML', value: 'b' },
                    { text: 'FTP exclusively', value: 'c' },
                    { text: 'SMTP only', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Follow the Adobe User Guide for REST implementation patterns in your ColdFusion release.'
            },
            {
                question: 'Asynchronous programming may be used to:',
                type: 'single',
                answers: [
                    { text: 'Improve responsiveness for suitable workloads', value: 'a' },
                    { text: 'Remove all error handling', value: 'b' },
                    { text: 'Disable logging permanently', value: 'c' },
                    { text: 'Avoid using datasources', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use async patterns where supported; consult Adobe documentation for APIs and limitations.'
            }
        ]
    },
    12: {
        questions: [
            {
                question: 'Effective debugging typically includes:',
                type: 'single',
                answers: [
                    { text: 'Ignoring server logs', value: 'a' },
                    { text: 'Reproducing the issue and inspecting logs/stack traces', value: 'b' },
                    { text: 'Deleting all test data without backup', value: 'c' },
                    { text: 'Disabling all error output in production without monitoring', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Combine CF debugging features, logging, and careful reproduction steps.'
            },
            {
                question: 'Automated tests for CF apps may include:',
                type: 'single',
                answers: [
                    { text: 'Unit/integration tests for components and APIs (tooling varies)', value: 'a' },
                    { text: 'Only manual clicks with no repeatability', value: 'b' },
                    { text: 'No tests for CFCs', value: 'c' },
                    { text: 'Testing only in production', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Adopt a testing strategy appropriate to your stack; verify behavior in non-production first.'
            },
            {
                question: 'Monitoring in production should capture:',
                type: 'single',
                answers: [
                    { text: 'Nothing; logs are optional', value: 'a' },
                    { text: 'Errors, performance signals, and health checks relevant to your SLA', value: 'b' },
                    { text: 'Only client IP addresses', value: 'c' },
                    { text: 'Passwords in plain text', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Operational visibility supports reliability and security incident response.'
            }
        ]
    },
    2: {
        questions: [
            {
                question: 'When migrating from an older CF version, you should:',
                type: 'single',
                answers: [
                    { text: 'Read Adobe migration guides and test in a staging environment', value: 'a' },
                    { text: 'Deploy directly to production on day one with no tests', value: 'b' },
                    { text: 'Remove all encoding functions', value: 'c' },
                    { text: 'Assume every tag behaves identically', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use staged rollout, compatibility scanning, and official migration documentation.'
            },
            {
                question: 'Deprecated features should be:',
                type: 'single',
                answers: [
                    { text: 'Replaced according to Adobe guidance before they are removed', value: 'a' },
                    { text: 'Copied more often without review', value: 'b' },
                    { text: 'Ignored until the server crashes', value: 'c' },
                    { text: 'Wrapped only in HTML comments', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Track deprecations in release notes; plan refactors proactively.'
            },
            {
                question: 'Modernizing legacy CFML often includes:',
                type: 'single',
                answers: [
                    { text: 'Improving structure, security, and use of current language features', value: 'a' },
                    { text: 'Removing all database access', value: 'b' },
                    { text: 'Moving secrets into client code', value: 'c' },
                    { text: 'Disabling output encoding site-wide', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Balance risk reduction with incremental, tested improvements.'
            }
        ]
    },
    25: {
        questions: [
            {
                question: 'Capstone-style labs are most effective when they:',
                type: 'single',
                answers: [
                    { text: 'Reinforce multiple modules with hands-on tasks', value: 'a' },
                    { text: 'Avoid running code on a server', value: 'b' },
                    { text: 'Skip requirements and acceptance criteria', value: 'c' },
                    { text: 'Use only pseudocode forever', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Labs should tie lessons together with clear goals and runnable exercises.'
            },
            {
                question: 'Before demoing a lab to stakeholders, you should:',
                type: 'single',
                answers: [
                    { text: 'Test the full flow in a clean environment', value: 'a' },
                    { text: 'Assume network and data are identical to your laptop without checking', value: 'b' },
                    { text: 'Delete error handling for brevity', value: 'c' },
                    { text: 'Share production passwords in slides', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Rehearse with production-like settings (minus secrets) to reduce demo risk.'
            },
            {
                question: 'Good lab documentation includes:',
                type: 'single',
                answers: [
                    { text: 'Objectives, prerequisites, steps, and expected outcomes', value: 'a' },
                    { text: 'Only a title slide', value: 'b' },
                    { text: 'No version information', value: 'c' },
                    { text: 'Undocumented environment variables only', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Clear instructions help instructors and self-paced learners succeed.'
            }
        ]
    },
    15: {
        questions: [
            {
                question: 'Which function creates a configured LLM chat instance?',
                type: 'single',
                answers: [
                { text: '<code>ChatModel()</code>', value: 'a' },
                { text: '<code>AiService()</code>', value: 'b' },
                { text: '<code>cfhttp</code> only', value: 'c' },
                { text: '<code>VectorStore()</code>', value: 'd' }
                ],
                correct: 'a',
                explanation: 'ChatModel(config) returns a chat model you call with .chat().'
            },
            {
                question: 'A raw ChatModel instance is typically:',
                type: 'single',
                answers: [
                { text: 'Stateful with built-in multi-user memory', value: 'a' },
                { text: 'Stateless, so each .chat() call stands alone unless you add Agent memory', value: 'b' },
                { text: 'Able to retry failed calls with no configuration', value: 'c' },
                { text: 'Limited to one call per application scope', value: 'd' }
                ],
                correct: 'b',
                explanation: 'Use Agent() when you need conversation memory, personas, or tools.'
            },
            {
                question: 'Which config key commonly requests JSON-shaped model output?',
                type: 'single',
                answers: [
                { text: 'responseFormat (for example "json")', value: 'a' },
                { text: 'cfcontent type on the response', value: 'b' },
                { text: 'serializeJSON on the config struct', value: 'c' },
                { text: 'this.datasource in Application.cfc', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Set responseFormat in the ChatModel config and still validate the returned text.'
            },
            {
                question: 'temperature in ChatModel config mainly controls:',
                type: 'single',
                answers: [
                { text: 'How deterministic vs creative the sampling is', value: 'a' },
                { text: 'How many retries the client attempts', value: 'b' },
                { text: 'The embedding vector dimension', value: 'c' },
                { text: 'The request timeout in seconds', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Lower temperature for factual answers; higher for more varied wording.'
            },
            {
                question: 'maxTokens is used to:',
                type: 'single',
                answers: [
                { text: 'Cap how many tokens the model may generate in a response', value: 'a' },
                { text: 'Set the vector store dimension', value: 'b' },
                { text: 'Limit concurrent CF threads globally', value: 'c' },
                { text: 'Truncate the system message', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Bounding maxTokens controls cost and latency for each call.'
            },
            {
                question: 'Where should provider API keys live in a training or production app?',
                type: 'single',
                answers: [
                { text: 'Environment variables or a gitignored secrets file, never in source', value: 'a' },
                { text: 'Hardcoded in every .cfm sample', value: 'b' },
                { text: 'In the browser query string', value: 'c' },
                { text: 'In a public README beside the samples', value: 'd' }
                ],
                correct: 'a',
                explanation: 'This training app uses CF_TRAINING_OPENAI_API_KEY or config/local-ai-secrets.cfm.'
            },
            {
                question: 'Prompt design for production should include:',
                type: 'single',
                answers: [
                { text: 'Clarity, safety boundaries, and logging/observability', value: 'a' },
                { text: 'Maximum possible tokens with no limits', value: 'b' },
                { text: 'API keys inside the user message', value: 'c' },
                { text: 'One vague sentence with no output format', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Treat prompts like other application input: validate and monitor them.'
            }
        ]
    },
    16: {
        questions: [
            {
                question: 'Which API adds memory and tools on top of a chat model?',
                type: 'single',
                answers: [
                { text: '<code>Agent()</code>', value: 'a' },
                { text: '<code>VectorStore()</code>', value: 'b' },
                { text: '<code>documentService()</code>', value: 'c' },
                { text: '<code>MCPClient()</code>', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Agent wraps ChatModel with memory, personas, and optional tools.'
            },
            {
                question: 'Per-user chat memory usually needs:',
                type: 'single',
                answers: [
                { text: 'A stable userId on agent.chat(message, userId) plus memory config', value: 'a' },
                { text: 'A new Agent instance for every request', value: 'b' },
                { text: 'Concatenating the full history into each prompt yourself', value: 'c' },
                { text: 'Session variables only, with no memory config', value: 'd' }
                ],
                correct: 'a',
                explanation: "perUser: true keeps one user's history from leaking into another's."
            },
            {
                question: 'On this training ColdFusion build, the reliable way to set a persona is:',
                type: 'single',
                answers: [
                { text: 'agent.systemMessage(...) then agent.chat(string, userId)', value: 'a' },
                { text: 'A comment at the top of the tool CFC', value: 'b' },
                { text: 'this.systemMessage in Application.cfc', value: 'c' },
                { text: 'A systemMessage key on the tools struct', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Struct chatRequest for .chat() is documented in places but this build accepts string chat; use systemMessage for persona.'
            },
            {
                question: 'messageWindowChatMemory with maxMessages: 20 means:',
                type: 'single',
                answers: [
                { text: 'The memory keeps about the last 20 messages in the window', value: 'a' },
                { text: 'The agent allows 20 tool calls per turn', value: 'b' },
                { text: 'Each message is capped at 20 tokens', value: 'c' },
                { text: 'Memory expires after 20 minutes', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Older turns fall out of the window as the conversation grows.'
            },
            {
                question: 'Agent tools are typically registered as:',
                type: 'single',
                answers: [
                { text: 'CFC methods (and/or MCP clients) listed in the tools config', value: 'a' },
                { text: 'Plain functions defined in the calling .cfm page', value: 'b' },
                { text: 'Entries in pathfilter.json', value: 'c' },
                { text: 'Scheduled tasks in the Administrator', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Give each method a clear description so the model knows when to call it.'
            },
            {
                question: 'On this training server, tool CFC methods must be declared with:',
                type: 'single',
                answers: [
                { text: 'access="remote"', value: 'a' },
                { text: 'access="private" only', value: 'b' },
                { text: 'No access attribute ever', value: 'c' },
                { text: 'access="package"', value: 'd' }
                ],
                correct: 'a',
                explanation: 'CF AI tool registration rejects methods that are not remote on this build.'
            },
            {
                question: 'When should you prefer Agent over raw ChatModel?',
                type: 'single',
                answers: [
                { text: 'When you need multi-turn memory, personas, or tool calling', value: 'a' },
                { text: 'For every single-line echo with no state', value: 'b' },
                { text: 'Only for batch jobs with no user present', value: 'c' },
                { text: 'Never, because Agent requires MCP', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Start with ChatModel for one-shot Q&A; graduate to Agent for assistants.'
            }
        ]
    },
    17: {
        questions: [
            {
                question: 'Function tools let the model:',
                type: 'single',
                answers: [
                { text: 'Call your CFC methods with structured arguments', value: 'a' },
                { text: 'Bypass all authorization automatically', value: 'b' },
                { text: 'Execute arbitrary OS commands by default', value: 'c' },
                { text: 'Write directly to the vector store index', value: 'd' }
                ],
                correct: 'a',
                explanation: 'You still validate and authorize inside each tool method.'
            },
            {
                question: 'A good tool DESCRIPTION should:',
                type: 'single',
                answers: [
                { text: 'Describe when to use the tool in scenario language', value: 'a' },
                { text: 'Be empty so the model invents usage', value: 'b' },
                { text: 'Contain the API key', value: 'c' },
                { text: 'Repeat the method name and nothing else', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Without a clear description the model may never call the tool.'
            },
            {
                question: 'Wrapping an HTTP API as a tool means:',
                type: 'single',
                answers: [
                { text: 'The CFC method calls the API server-side and returns a concise result', value: 'a' },
                { text: 'The browser calls the third-party API with your secret key', value: 'b' },
                { text: 'You paste the API key into the prompt', value: 'c' },
                { text: 'You return the raw HTTP response body to the model', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Keep credentials in config; the tool is a controlled proxy.'
            },
            {
                question: 'Tool arguments from the model should be treated as:',
                type: 'single',
                answers: [
                { text: 'Untrusted input, so validate type, format, and authorization', value: 'a' },
                { text: 'Always safe because the LLM wrote them', value: 'b' },
                { text: 'Optional to validate', value: 'c' },
                { text: 'Validated only when the tool writes data', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Models can hallucinate parameters; your CFC enforces the rules.'
            },
            {
                question: 'A ColdFusion AI guardrail CFC must expose:',
                type: 'single',
                answers: [
                { text: '<code>public struct function validate(required string message)</code>', value: 'a' },
                { text: '<code>private void function run()</code>', value: 'b' },
                { text: '<code>remote query function execute()</code>', value: 'c' },
                { text: 'No method; a JSON file is sufficient', value: 'd' }
                ],
                correct: 'a',
                explanation: 'ColdFusion calls validate() before or after the LLM request, depending on whether the CFC is registered as an input or output guardrail.'
            },
            {
                question: 'Which guardrail result transforms a message and passes the replacement forward?',
                type: 'single',
                answers: [
                { text: '<code>successWith</code> with the replacement in <code>repromptMessage</code>', value: 'a' },
                { text: '<code>failure</code> with the replacement in <code>message</code>', value: 'b' },
                { text: '<code>fatal</code> with an <code>allowed</code> key', value: 'c' },
                { text: '<code>success</code> with a <code>severity</code> key', value: 'd' }
                ],
                correct: 'a',
                explanation: 'successWith continues the pipeline using repromptMessage. failure and fatal block processing and throw an exception.'
            },
            {
                question: 'Exposing too many overlapping tools often causes:',
                type: 'single',
                answers: [
                { text: 'The model to pick the wrong tool or skip tools', value: 'a' },
                { text: 'Fewer tokens in the system message', value: 'b' },
                { text: 'Automatic retry of failed tool calls', value: 'c' },
                { text: 'Shorter tool descriptions', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Add tools incrementally with distinct descriptions and test real phrases.'
            },
            {
                question: 'Which practice belongs in every mutating tool?',
                type: 'single',
                answers: [
                { text: 'Authorize the current user before changing data', value: 'a' },
                { text: 'Return full database dumps to the model', value: 'b' },
                { text: 'Skip logging', value: 'c' },
                { text: 'Hardcode admin credentials in the DESCRIPTION', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Least privilege and audit logging keep agentic apps safer.'
            }
        ]
    },
    18: {
        questions: [
            {
                question: 'RAG stands for:',
                type: 'single',
                answers: [
                { text: 'Retrieval Augmented Generation', value: 'a' },
                { text: 'Random Access Gateway', value: 'b' },
                { text: 'Recursive Application Graph', value: 'c' },
                { text: 'Runtime Allocation Grid', value: 'd' }
                ],
                correct: 'a',
                explanation: 'You retrieve your content, then generate an answer grounded in it.'
            },
            {
                question: 'simpleRAG() is best described as:',
                type: 'single',
                answers: [
                { text: 'A high-level ingest + ask/chat pipeline over a document source', value: 'a' },
                { text: 'A replacement for cfquery', value: 'b' },
                { text: 'A wrapper around cfhttp for provider APIs', value: 'c' },
                { text: 'A vector store provider', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Pass a source path, a ChatModel, optional minScore/maxResults, then ingest and ask.'
            },
            {
                question: 'Before ask()/chat() after ingestAsync(), you should:',
                type: 'single',
                answers: [
                { text: 'Call future.get() (or otherwise wait) so indexing finished', value: 'a' },
                { text: 'Delete the vector store', value: 'b' },
                { text: 'Disable embeddings', value: 'c' },
                { text: 'Clear application scope', value: 'd' }
                ],
                correct: 'a',
                explanation: 'ingestAsync returns a Future; waiting ensures retrieval sees the index.'
            },
            {
                question: 'ColdFusion only loads simpleRAG document folders that are:',
                type: 'single',
                answers: [
                { text: 'Listed in documentaccesspaths in pathfilter.json', value: 'a' },
                { text: 'Anywhere on the internet without config', value: 'b' },
                { text: 'Only inside the ColdFusion wwwroot', value: 'c' },
                { text: 'Only under the AI package install folder', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Classroom setups allow code-samples/** after updating pathfilter.json and restarting CF.'
            },
            {
                question: 'ask() on a simpleRAG service is typically used for:',
                type: 'single',
                answers: [
                { text: 'One-shot grounded Q&A', value: 'a' },
                { text: 'Warming the embedding cache', value: 'b' },
                { text: 'Re-indexing the source folder on each request', value: 'c' },
                { text: 'Streaming partial tokens to the browser', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use chat() when you need multi-turn dialogue on the same RAG bot.'
            },
            {
                question: 'For classroom demos without Milvus/Pinecone, prefer:',
                type: 'single',
                answers: [
                { text: 'INMEMORY VectorStore (or simpleRAG defaults)', value: 'a' },
                { text: 'Production-only hosted stores with no fallback', value: 'b' },
                { text: 'Storing vectors in session scope', value: 'c' },
                { text: 'Skipping embeddings entirely', value: 'd' }
                ],
                correct: 'a',
                explanation: 'INMEMORY is for learning; production should use a persistent provider.'
            },
            {
                question: 'getStatistics() after ingest helps you:',
                type: 'single',
                answers: [
                { text: 'Inspect documents loaded / segments ingested / status for the last run', value: 'a' },
                { text: 'Change the embedding model at runtime', value: 'b' },
                { text: 'Estimate token cost per query', value: 'c' },
                { text: 'Rebuild the index automatically', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Dump or log stats once in your environment, because field names can vary slightly by build.'
            }
        ]
    },
    19: {
        questions: [
            {
                question: 'VectorStore() is used to:',
                type: 'single',
                answers: [
                { text: 'Store embeddings and run similarity search', value: 'a' },
                { text: 'Replace all relational databases', value: 'b' },
                { text: 'Cache rendered HTML fragments', value: 'c' },
                { text: 'Store uploaded files on disk', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Configure provider + embeddingModel, then add/search text.'
            },
            {
                question: 'On this training build, VectorStore.search() expects result count as:',
                type: 'single',
                answers: [
                { text: 'topK (not maxResults)', value: 'a' },
                { text: 'maxResults only', value: 'b' },
                { text: 'pageSize on the config struct', value: 'c' },
                { text: 'limit in SQL only', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Adobe vector store examples use topK and optional minScore.'
            },
            {
                question: 'Why must you not name a VectorStore variable client?',
                type: 'single',
                answers: [
                { text: 'client is a reserved ColdFusion scope', value: 'a' },
                { text: 'It is a Java keyword only', value: 'b' },
                { text: 'It conflicts with the MCPClient variable name', value: 'c' },
                { text: 'It shadows the stored metadata key', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use vectorStoreClient or a similar name. Otherwise method calls fail in confusing ways.'
            },
            {
                question: 'Text-only addAll() works when:',
                type: 'single',
                answers: [
                { text: 'An embeddingModel is configured (or you use the default local model)', value: 'a' },
                { text: 'You never configure embeddings', value: 'b' },
                { text: 'You pass only pre-computed vectors', value: 'c' },
                { text: 'You disable the AI package', value: 'd' }
                ],
                correct: 'a',
                explanation: 'ColdFusion generates embeddings from text for you.'
            },
            {
                question: 'Metadata on stored chunks is useful for:',
                type: 'single',
                answers: [
                { text: 'Filtering search results (for example by topic)', value: 'a' },
                { text: 'Generating embeddings without a model', value: 'b' },
                { text: 'Choosing the distance metric', value: 'c' },
                { text: 'Reducing the vector dimension', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Pass filter structs in search to narrow by metadata fields.'
            },
            {
                question: 'INMEMORY vector stores:',
                type: 'single',
                answers: [
                { text: 'Are great for demos; data is not durable across restarts', value: 'a' },
                { text: 'Are the only production option Adobe supports', value: 'b' },
                { text: 'Sync automatically to S3', value: 'c' },
                { text: 'Disable embeddings', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use Milvus, Pinecone, Qdrant, or Chroma for durable production indexes.'
            },
            {
                question: 'Embeddings represent text as:',
                type: 'single',
                answers: [
                { text: 'Numeric vectors for semantic similarity', value: 'a' },
                { text: 'JSON strings holding the original text', value: 'b' },
                { text: 'SQL primary keys only', value: 'c' },
                { text: 'Sparse keyword counts', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use the same embedding model for ingest and query.'
            }
        ]
    },
    20: {
        questions: [
            {
                question: 'documentService() is created with:',
                type: 'single',
                answers: [
                { text: 'documentService() with no factory config, so options go on each method', value: 'a' },
                { text: 'Only a global Application.cfc ORM setting', value: 'b' },
                { text: 'cfhtmltopdf', value: 'c' },
                { text: 'A datasource name', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Call load, split, transform, ingest on the instance Adobe returns.'
            },
            {
                question: 'A typical documentService pipeline is:',
                type: 'single',
                answers: [
                { text: 'load → split → ingest(segments, vectorStore)', value: 'a' },
                { text: 'ingest → chat → delete', value: 'b' },
                { text: 'cffile → cfmail', value: 'c' },
                { text: 'search → split → load', value: 'd' }
                ],
                correct: 'a',
                explanation: "ingest embeds segment text using the store's embeddingModel."
            },
            {
                question: 'ingestAsync() returns:',
                type: 'single',
                answers: [
                { text: 'A Future, so call .get() when you need the statistics result', value: 'a' },
                { text: 'The ingest statistics struct immediately', value: 'b' },
                { text: 'The number of segments ingested', value: 'c' },
                { text: 'A thread name string', value: 'd' }
                ],
                correct: 'a',
                explanation: 'future.get() still blocks the current request thread until done.'
            },
            {
                question: 'Word-based chunking is used to:',
                type: 'single',
                answers: [
                { text: 'Split long text into smaller segments for embedding/retrieval', value: 'a' },
                { text: 'Reduce the embedding dimension', value: 'b' },
                { text: 'Compress stored metadata', value: 'c' },
                { text: 'Cache provider responses', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Chunk size and overlap affect retrieval quality.'
            },
            {
                question: 'Batch addAll() into a vector store helps when:',
                type: 'single',
                answers: [
                { text: 'You have many chunks and want fewer round trips', value: 'a' },
                { text: 'You want to skip embeddings', value: 'b' },
                { text: 'You disable the AI package', value: 'c' },
                { text: 'You only have one sentence ever', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Process large corpora in batches and track progress.'
            },
            {
                question: 'documentService and agent() can share:',
                type: 'single',
                answers: [
                { text: 'The same VectorStore instance for ingest then retrieval', value: 'a' },
                { text: 'The same cfquery result always', value: 'b' },
                { text: 'Only the embedding model name', value: 'c' },
                { text: 'Only the chat memory window', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Ingest with documentService; query with agent retrievalAugmentor on that store.'
            },
            {
                question: 'load({ path, pattern }) reads:',
                type: 'single',
                answers: [
                { text: 'Files (and optionally URLs) into document structs with text/metadata', value: 'a' },
                { text: 'Only files already in the vector store', value: 'b' },
                { text: 'Only datasource tables', value: 'c' },
                { text: 'Only .txt files', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Then split those documents before ingest.'
            }
        ]
    },
    21: {
        questions: [
            {
                question: 'MCP stands for:',
                type: 'single',
                answers: [
                { text: 'Model Context Protocol', value: 'a' },
                { text: 'Mainframe Control Panel', value: 'b' },
                { text: 'Memory Cache Partition', value: 'c' },
                { text: 'Module Compile Pipeline', value: 'd' }
                ],
                correct: 'a',
                explanation: 'MCP standardizes how clients discover and call tools/resources/prompts.'
            },
            {
                question: 'MCPServer in ColdFusion is for when you:',
                type: 'single',
                answers: [
                { text: 'Expose CFC tools (and optional prompts/resources) to MCP clients', value: 'a' },
                { text: 'Only consume third-party APIs with cfhttp', value: 'b' },
                { text: 'Replace the web server', value: 'c' },
                { text: 'Proxy all cfhttp traffic', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Store the server in application scope and handle HTTP via handleRequest().'
            },
            {
                question: 'MCPClient is for when you:',
                type: 'single',
                answers: [
                { text: 'Call a remote or local MCP server (listTools, callTool, ...)', value: 'a' },
                { text: 'Generate embeddings locally', value: 'b' },
                { text: 'Register CFC tools on an Agent', value: 'c' },
                { text: 'Expose your CFC tools to other clients', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Configure transport (HTTP or STDIO) then discover and invoke tools.'
            },
            {
                question: 'A classroom HTTP MCP endpoint typically:',
                type: 'single',
                answers: [
                { text: 'Delegates the request body to application.mcpServer.handleRequest()', value: 'a' },
                { text: 'Rewrites the request as a cfhttp call to the provider', value: 'b' },
                { text: 'Stores each request body in session scope', value: 'c' },
                { text: 'Creates a new MCPServer on every request', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Return JSON from handleRequest to the MCP client.'
            },
            {
                question: 'listTools() is used to:',
                type: 'single',
                answers: [
                { text: 'Discover which tools the MCP server currently exposes', value: 'a' },
                { text: 'List datasources on the server', value: 'b' },
                { text: 'Return the server log file', value: 'c' },
                { text: 'Delete vector collections', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Do not hardcode every remote capability. Ask the server.'
            },
            {
                question: 'STDIO transport is appropriate when:',
                type: 'single',
                answers: [
                { text: 'The MCP server is a local process (for example Node) on the same host', value: 'a' },
                { text: 'You only have a public HTTPS URL', value: 'b' },
                { text: 'The server is only reachable over HTTPS', value: 'c' },
                { text: 'You want to avoid running a local process', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Classroom samples prefer HTTP against mcp-endpoint.cfm.'
            },
            {
                question: 'Production MCP exposure should include:',
                type: 'single',
                answers: [
                { text: 'Authentication, least privilege, and rate limits', value: 'a' },
                { text: 'Anonymous access to every tool', value: 'b' },
                { text: 'Disabled TLS', value: 'c' },
                { text: 'No logging ever', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Treat MCP endpoints like any sensitive API.'
            }
        ]
    },
    22: {
        questions: [
            {
                question: 'An Agent commonly combines:',
                type: 'single',
                answers: [
                { text: 'ChatModel, optional memory, tools, and optionally RAG', value: 'a' },
                { text: 'Only static HTML', value: 'b' },
                { text: 'A single SQL statement forever', value: 'c' },
                { text: 'No error handling by design', value: 'd' }
                ],
                correct: 'a',
                explanation: 'That is the agent architecture Adobe documents for CF AI.'
            },
            {
                question: 'retrievalAugmentor on agent() is for:',
                type: 'single',
                answers: [
                { text: 'Grounding answers with vector-store retrieval before generation', value: 'a' },
                { text: 'Rewriting the system message on every turn', value: 'b' },
                { text: 'Caching the provider HTTP connection', value: 'c' },
                { text: 'Storing chat history in the browser', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Prefer it (or simpleRAG) over hand-building prompt strings.'
            },
            {
                question: 'API-integrated agents expose live data by:',
                type: 'single',
                answers: [
                { text: 'Registering CFC tools that call APIs/DB and return concise results', value: 'a' },
                { text: 'Putting API keys in the browser', value: 'b' },
                { text: 'Passing database credentials as tool parameters', value: 'c' },
                { text: 'Letting the model build SQL strings directly', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Validate and authorize inside the tool.'
            },
            {
                question: 'Event-driven agent calls often get the user message from:',
                type: 'single',
                answers: [
                { text: 'A queue, webhook, or scheduled job payload', value: 'a' },
                { text: 'Only a desktop GUI', value: 'b' },
                { text: 'The CF Administrator UI exclusively', value: 'c' },
                { text: 'The chat memory window', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use a stable userId when memory should continue for that channel.'
            },
            {
                question: 'Reusing ChatModel/Agent instances in application scope helps:',
                type: 'single',
                answers: [
                { text: 'Avoid creating expensive clients on every request', value: 'a' },
                { text: 'Remove the need for timeouts', value: 'b' },
                { text: 'Disable monitoring', value: 'c' },
                { text: 'Bypass provider rate limits', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Reuse is a core scaling practice for AI workloads.'
            },
            {
                question: 'Observability for agents should log:',
                type: 'single',
                answers: [
                { text: 'Incoming prompts (sanitized), tool names/params, errors, and latency', value: 'a' },
                { text: 'Nothing at all', value: 'b' },
                { text: 'Only the final response text', value: 'c' },
                { text: 'Raw API keys', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Mask secrets; keep enough detail to debug tool calls.'
            },
            {
                question: 'Multi-tool orchestration relies on:',
                type: 'single',
                answers: [
                { text: 'Clear METHOD descriptions so the LLM picks the right tool', value: 'a' },
                { text: 'Unlimited anonymous admin tools', value: 'b' },
                { text: 'Disabling authentication', value: 'c' },
                { text: 'Hardcoding passwords in prompts', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Scenario-based descriptions beat one-word labels.'
            }
        ]
    },
    23: {
        questions: [
            {
                question: 'timeout on ChatModel config mainly:',
                type: 'single',
                answers: [
                { text: 'Limits how long you wait for the provider response', value: 'a' },
                { text: 'Sets session cookie age only', value: 'b' },
                { text: 'Sets the vector store dimension', value: 'c' },
                { text: 'Changes the HTTP listen port', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Pair with maxRetries/backoff so transient failures do not hang forever.'
            },
            {
                question: 'Token optimization can include:',
                type: 'single',
                answers: [
                { text: 'Shorter prompts, maxTokens caps, and cheaper models when quality allows', value: 'a' },
                { text: 'Sending entire databases every time', value: 'b' },
                { text: 'Disabling all monitoring', value: 'c' },
                { text: 'Removing try/catch', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Measure cost and quality; do not guess.'
            },
            {
                question: 'Wrapping ChatModel.chat in try/catch is useful to:',
                type: 'single',
                answers: [
                { text: 'Return a friendly message on provider/timeout failures', value: 'a' },
                { text: 'Hide all errors from logs forever', value: 'b' },
                { text: 'Disable the AI package', value: 'c' },
                { text: 'Bypass authorization', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Log the real error; show a safe message to users.'
            },
            {
                question: 'API keys for models and vector stores should be:',
                type: 'single',
                answers: [
                { text: 'Loaded from environment or a vault, never committed or logged in full', value: 'a' },
                { text: 'Pasted into public README files', value: 'b' },
                { text: 'Put in client-side JavaScript', value: 'c' },
                { text: 'Passed in the URL for easy testing', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Rotate keys if they ever leaked into source control.'
            },
            {
                question: 'PMT AI Services monitoring (Update 8+) can help you:',
                type: 'single',
                answers: [
                { text: 'See LLM, Agent, RAG, MCP, and vector store activity including traces', value: 'a' },
                { text: 'Replace unit tests entirely', value: 'b' },
                { text: 'Tune the JVM automatically', value: 'c' },
                { text: 'Disable authentication', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Enable it under PMT Settings → Monitoring → Advanced.'
            },
            {
                question: 'cacheSystemMessages / cacheTools (when supported) aim to:',
                type: 'single',
                answers: [
                { text: 'Reduce repeated payload overhead for system messages and tool defs', value: 'a' },
                { text: 'Cache vector search results', value: 'b' },
                { text: 'Replace Redis always', value: 'c' },
                { text: 'Skip provider rate limits', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Still use application-level caching carefully for identical prompts when safe.'
            },
            {
                question: 'Governance for AI features includes:',
                type: 'single',
                answers: [
                { text: 'Access control, retention, and audit of who called what', value: 'a' },
                { text: 'No policies', value: 'b' },
                { text: 'Public logging of all PII', value: 'c' },
                { text: 'Disabling backups', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Align AI usage with legal and enterprise policy.'
            }
        ]
    },
    24: {
        questions: [
            {
                question: 'Multi-model routing means:',
                type: 'single',
                answers: [
                { text: 'Choosing different models by task, cost, or latency', value: 'a' },
                { text: 'Always using the largest model for every call', value: 'b' },
                { text: 'Random selection with no metrics', value: 'c' },
                { text: 'Switching providers by editing every page', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Keep routing in one place (for example getModelForTask).'
            },
            {
                question: 'Local (Ollama) vs cloud models trade off:',
                type: 'single',
                answers: [
                { text: 'Privacy/control vs managed capability and ops burden', value: 'a' },
                { text: 'Nothing, because both run on your own hardware', value: 'b' },
                { text: 'Only response formatting', value: 'c' },
                { text: 'Only the embedding dimension', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use local when data must not leave your network.'
            },
            {
                question: 'Structured JSON output should be:',
                type: 'single',
                answers: [
                { text: 'Requested via responseFormat and validated (deserializeJSON + checks)', value: 'a' },
                { text: 'Trusted blindly for money movement', value: 'b' },
                { text: 'Ignored', value: 'c' },
                { text: 'Parsed with string functions and no validation', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Treat model output as untrusted until validated.'
            },
            {
                question: 'A simple CFML chain can look like:',
                type: 'single',
                answers: [
                { text: 'chat → use result in a second chat (or tool) step', value: 'a' },
                { text: 'One chat call with no follow-up', value: 'b' },
                { text: 'Re-creating the ChatModel between steps', value: 'c' },
                { text: 'Disabling the AI package', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Log each step with a correlation ID.'
            },
            {
                question: 'Hybrid RAG at the application level often:',
                type: 'single',
                answers: [
                { text: 'Merges vector hits with keyword/metadata signals', value: 'a' },
                { text: 'Re-embeds the whole corpus on every query', value: 'b' },
                { text: 'Drops metadata from stored chunks', value: 'c' },
                { text: 'Skips indexing', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Adobe notes native hybrid varies by store; app-level merge is a practical pattern.'
            },
            {
                question: 'Prompt engineering in CF can use:',
                type: 'single',
                answers: [
                { text: 'Clear systemMessage / instructions plus examples of desired output', value: 'a' },
                { text: 'Only the default persona', value: 'b' },
                { text: 'API keys in the prompt body', value: 'c' },
                { text: 'Disabling encodeForHTML everywhere', value: 'd' }
                ],
                correct: 'a',
                explanation: 'On this build prefer Agent.systemMessage for personas with string chat.'
            },
            {
                question: 'Enterprise AI governance strategies should:',
                type: 'single',
                answers: [
                { text: 'Define allow-lists for tools/models and audit usage', value: 'a' },
                { text: 'Give every user every tool', value: 'b' },
                { text: 'Disable all logging', value: 'c' },
                { text: 'Commit secrets to git', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Policy plus technical controls beat hope.'
            }
        ]
    },
    10: {
        questions: [
            {
                question: 'What is the primary Java persistence framework behind ColdFusion ORM?',
                type: 'single',
                answers: [
                    { text: 'Hibernate', value: 'a' },
                    { text: 'Entity Framework', value: 'b' },
                    { text: 'JPA only (no Hibernate)', value: 'c' },
                    { text: 'JDBC drivers without an ORM', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Adobe ColdFusion ORM is built on Hibernate. See Adobe Introduction to ColdFusion ORM.'
            },
            {
                question: 'Where do you typically enable ColdFusion ORM for an application?',
                type: 'single',
                answers: [
                    { text: 'Only in cfquery tags', value: 'a' },
                    { text: 'In Application.cfc (e.g. this.ormEnabled and ormsettings)', value: 'b' },
                    { text: 'Only in the ColdFusion Administrator for all sites', value: 'c' },
                    { text: 'In robots.txt', value: 'd' }
                ],
                correct: 'b',
                explanation: 'ORM is configured per application, commonly in Application.cfc. See Adobe configuring and using ORM.'
            },
            {
                question: 'A CFC mapped as a database entity is usually marked with:',
                type: 'single',
                answers: [
                    { text: 'persistent="true" (or component persistent in script)', value: 'a' },
                    { text: 'access=&quot;remote&quot; only', value: 'b' },
                    { text: 'format=&quot;html&quot;', value: 'c' },
                    { text: 'No attribute - ORM auto-detects all CFCs', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Entity CFCs are declared persistent per Adobe ORM component definition docs.'
            }
        ]
    },
    11: {
        questions: [
            {
                question: 'Which tag creates a parallel worker thread from a ColdFusion page?',
                type: 'single',
                answers: [
                    { text: 'cfthread', value: 'a' },
                    { text: 'cfschedule', value: 'b' },
                    { text: 'cffile', value: 'c' },
                    { text: 'cfajax', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Use <code>cfthread</code> with <code>action="run"</code> to start a worker thread. See Adobe cfthread and Using ColdFusion threads.'
            },
            {
                question: 'What does runAsync() return in ColdFusion?',
                type: 'single',
                answers: [
                    { text: 'A Future object', value: 'a' },
                    { text: 'A new HTTP request', value: 'b' },
                    { text: 'A database connection', value: 'c' },
                    { text: 'An Event Gateway ID', value: 'd' }
                ],
                correct: 'a',
                explanation: '<code>runAsync</code> returns a Future; call <code>get()</code> (and optional chaining per Adobe). See Adobe RunAsync and Asynchronous programming.'
            },
            {
                question: 'Event Gateways are primarily used to:',
                type: 'single',
                answers: [
                    { text: 'Handle asynchronous events from sources outside the normal HTTP request (e.g. SMS, sockets) using listener CFCs', value: 'a' },
                    { text: 'Replace all cfquery tags', value: 'b' },
                    { text: 'Compile CFML to Java bytecode manually', value: 'c' },
                    { text: 'Disable session management', value: 'd' }
                ],
                correct: 'a',
                explanation: 'Event Gateways connect ColdFusion to external event-driven sources; configure instances in the Administrator. See Adobe Using Event Gateways.'
            }
        ]
    }
};
