<!--- Custom tag body invoked via cfmodule template="customButton.cfm" --->
<cfparam name="Attributes.label" default="Click Me">
<cfparam name="Attributes.class" default="btn-primary">

<cfoutput>
<button type="button" class="#encodeForHTMLAttribute(Attributes.class)#">
	#encodeForHTML(Attributes.label)#
</button>
</cfoutput>
