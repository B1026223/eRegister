<%@ page import="uk.ac.shu.webarch.eregister.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'enroll_course', 'error')} ">
	<label for="enroll_course">
		<g:message code="student.enroll_course.label" default="Enrollcourse" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.enroll_course?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="student.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${studentInstance?.studentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNumber', 'error')} ">
	<label for="studentNumber">
		<g:message code="student.studentNumber.label" default="Student Number" />
		
	</label>
	<g:textField name="studentNumber" value="${studentInstance?.studentNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'student_attendance', 'error')} ">
	<label for="student_attendance">
		<g:message code="student.student_attendance.label" default="Studentattendance" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.student_attendance?}" var="s">
    <li><g:link controller="regEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regEntry" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regEntry.label', default: 'RegEntry')])}</g:link>
</li>
</ul>

</div>

