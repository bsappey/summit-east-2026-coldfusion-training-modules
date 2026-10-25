<!---
  Auto-generated from modules-data.js (getModule12Data)
  codeTitle: cfdump color legend (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<cfscript>
    simpleStr = "Hello";
    myArray = ["John", "Paul", "George", "Ringo"];
    myStruct = { name: "Alvin", age: 22, hairColor: "brown" };
    qSample = queryExecute(
        "SELECT productId, productName FROM products FETCH FIRST 3 ROWS ONLY",
        {},
        { datasource: "CFTrainingDSN" }
    );

    writeDump(var=simpleStr, label="String (default)");
    writeDump(var=myArray, label="Array (green)");
    writeDump(var=myStruct, label="Struct (blue)");
    writeDump(var=qSample, label="Query (purple)");
    try {
        prod = entityLoad("Product", 1, true);
        writeDump(var=prod, label="CFC object (red)");
    } catch (any e) { /* ORM optional in demo */ }
    abort;
</cfscript>
