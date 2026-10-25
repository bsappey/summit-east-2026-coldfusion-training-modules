<cfparam name="request._404Prefix" default="">
<cfset homeUrl = request._404Prefix & "index.cfm">
<cfset styleUrl = request._404Prefix & "assets/css/style.css">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Not Found - Adobe ColdFusion Training</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/tabler-icons.min.css">
    <link rel="stylesheet" href="<cfoutput>#encodeForHTMLAttribute(styleUrl)#</cfoutput>">
</head>
<body class="bg-light">
    <nav class="navbar navbar-dark bg-primary" style="background-color: #1473E6 !important;">
        <div class="container-fluid">
            <a class="navbar-brand" href="<cfoutput>#encodeForHTMLAttribute(homeUrl)#</cfoutput>">
                <i class="ti ti-school me-2" aria-hidden="true"></i>
                Adobe ColdFusion Training
            </a>
        </div>
    </nav>
    <main class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card shadow-sm border-0">
                    <div class="card-body text-center p-5">
                        <p class="display-1 text-primary fw-bold mb-2" aria-hidden="true">404</p>
                        <h1 class="h3 mb-3">Page not found</h1>
                        <p class="text-muted mb-4">
                            The URL you requested does not exist or is not available in this training catalog.
                        </p>
                        <a href="<cfoutput>#encodeForHTMLAttribute(homeUrl)#</cfoutput>" class="btn btn-primary">
                            <i class="ti ti-home me-1" aria-hidden="true"></i>
                            Back to training home
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
