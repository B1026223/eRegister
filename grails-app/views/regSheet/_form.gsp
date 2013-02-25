<%@ page import="uk.ac.shu.webarch.eregister.RegSheet" %>



<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'class_name', 'error')} required">
	<label for="class_name">
		<g:message code="regSheet.class_name.label" default="Classname" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_name" name="class_name.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${regSheetInstance?.class_name?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'signatures', 'error')} ">
	<label for="signatures">
		<g:message code="regSheet.signatures.label" default="Signatures" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regSheetInstance?.signatures?}" var="s">
    <li><g:link controller="regEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regEntry" action="create" params="['regSheet.id': regSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regEntry.label', default: 'RegEntry')])}</g:link>
</li>
</ul>

</div>

