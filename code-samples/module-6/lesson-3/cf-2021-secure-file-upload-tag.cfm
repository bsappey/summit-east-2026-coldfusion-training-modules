<!---
  Auto-generated from modules-data.js (getModule6Data)
  codeTitle: CF 2021+ - Secure File Upload
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- CF 2021+ - Secure File Upload (tag) --->
<form method="post" enctype="multipart/form-data">
    <p><input type="file" name="fileInput" required></p>
    <p><button type="submit">Upload</button></p>
</form>

<cfif structKeyExists(form, "fileInput")>
    <cfset sep = createObject("java","java.io.File").separator>
    <cfset uploadDir = getDirectoryFromPath(getCurrentTemplatePath()) & "uploads">
    <cfif NOT directoryExists(uploadDir)>
        <cfset directoryCreate(uploadDir)>
    </cfif>

    <cftry>
        <cffile
            action="upload"
            fileField="fileInput"
            destination="#uploadDir#"
            nameConflict="makeUnique"
            strict="true"
            allowedExtensions=".jpg,.jpeg,.png,.pdf"
            result="uploadResult">

        <!--- Validate extension after upload (defense-in-depth) --->
        <cfif NOT listFindNoCase("jpg,jpeg,png,pdf", uploadResult.serverFileExt)>
            <cffile action="delete" file="#uploadResult.serverDirectory##sep##uploadResult.serverFile#">
            <cfthrow message="Invalid file type.">
        </cfif>

        <cfoutput>
            <p><strong>Uploaded:</strong> #encodeForHTML(uploadResult.serverFile)# (#numberFormat(uploadResult.fileSize/1024, "0.0")# KB)</p>
        </cfoutput>

        <cfcatch type="any">
            <cfoutput><p><strong>Upload failed:</strong> #encodeForHTML(cfcatch.message)#</p></cfoutput>
        </cfcatch>
    </cftry>
</cfif>
