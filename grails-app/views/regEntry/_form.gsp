<%@ page import="uk.ac.shu.webarch.eregister.RegEntry" %>



<div class="fieldcontain ${hasErrors(bean: regEntryInstance, field: 'sheet', 'error')} required">
	<label for="sheet">
		<g:message code="regEntry.sheet.label" default="Sheet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sheet" name="sheet.id" from="${uk.ac.shu.webarch.eregister.RegSheet.list()}" optionKey="id" required="" value="${regEntryInstance?.sheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regEntryInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="regEntry.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${regEntryInstance?.student?.id}" class="many-to-one"/>
</div>

