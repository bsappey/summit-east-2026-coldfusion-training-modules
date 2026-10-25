<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Secure File Upload
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

// CF 2021+ - Secure File Upload (script)
<form method="post" enctype="multipart/form-data">
    <p><input type="file" name="fileInput" required></p>
    <p><button type="submit">Upload</button></p>
</form>

<cfscript>
if (structKeyExists(form, "fileInput")) {
    sep = createObject("java","java.io.File").separator;
    uploadDir = getDirectoryFromPath(getCurrentTemplatePath()) & "uploads";
    if (!directoryExists(uploadDir)) {
        directoryCreate(uploadDir);
    }

    try {
        // Use positional args for compatibility across doc naming (accept/nameConflict vs mimeType/onConflict)
        uploadedFile = fileUpload(
            uploadDir,
            "fileInput",
            "*",
            "makeUnique",
            true,
            ".jpg,.jpeg,.png,.pdf"
        );

        // Defense-in-depth: validate extension after upload (MIME types can be spoofed)
        if (!listFindNoCase("jpg,jpeg,png,pdf", uploadedFile.serverFileExt)) {
            badPath = uploadedFile.serverDirectory & sep & uploadedFile.serverFile;
            if (fileExists(badPath)) {
                fileDelete(badPath);
            }
            throw("Invalid file type.");
        }

        writeOutput("<p><strong>Uploaded:</strong> " & encodeForHTML(uploadedFile.serverFile) & " (" & numberFormat(uploadedFile.fileSize/1024, "0.0") & " KB)</p>");
    } catch (any e) {
        writeOutput("<p><strong>Upload failed:</strong> " & encodeForHTML(e.message) & "</p>");
    }
}
</cfscript>
