<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enroll_course', 'error')} required">
	<label for="enroll_course">
		<g:message code="enrollment.enroll_course.label" default="Enrollcourse" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="enroll_course" name="enroll_course.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${enrollmentInstance?.enroll_course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enroll_student', 'error')} required">
	<label for="enroll_student">
		<g:message code="enrollment.enroll_student.label" default="Enrollstudent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="enroll_student" name="enroll_student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${enrollmentInstance?.enroll_student?.id}" class="many-to-one"/>
</div>

