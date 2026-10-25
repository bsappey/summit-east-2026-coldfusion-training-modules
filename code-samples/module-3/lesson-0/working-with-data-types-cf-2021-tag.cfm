<!---
  Auto-generated from modules-data.js (getModule3Data)
  codeTitle: Working with Data Types (CF 2021+)
  Verify: Adobe ColdFusion User Guide (primary), CFDocs (secondary).
--->

<!--- Tag Syntax: Working with Different Data Types --->
<!--- String --->
<cfset text = "Hello World">
<cfset textLength = Len(text)>

<!--- Numeric (Integer) --->
<cfset count = 42>
<cfset doubled = count * 2>

<!--- Numeric (Decimal) --->
<cfset price = 19.99>
<cfset tax = price * 0.08>

<!--- Boolean --->
<cfset isLoggedIn = true>
<cfset canEdit = false>

<!--- Date/Time --->
<cfset today = Now()>
<cfset tomorrow = DateAdd("d", 1, today)>

<!--- Array --->
<cfset colors = ["Red", "Green", "Blue"]>
<cfset firstColor = colors[1]>

<!--- Struct --->
<cfset person = {name: "John", age: 30, city: "NYC"}>
<cfset personName = person.name>

<cfoutput>
    <p>Text: #text# (Length: #textLength#)</p>
    <p>Count: #count# (Doubled: #doubled#)</p>
    <p>Price: #DollarFormat(price)# (Tax: #DollarFormat(tax)#)</p>
    <p>Logged In: #isLoggedIn#</p>
    <p>Today: #DateFormat(today, "full")#</p>
    <p>First Color: #firstColor#</p>
    <p>Person: #personName#</p>
</cfoutput>
