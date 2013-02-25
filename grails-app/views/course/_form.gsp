<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseCode', 'error')} ">
	<label for="courseCode">
		<g:message code="course.courseCode.label" default="Course Code" />
		
	</label>
	<g:textField name="courseCode" value="${courseInstance?.courseCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseDescription', 'error')} ">
	<label for="courseDescription">
		<g:message code="course.courseDescription.label" default="Course Description" />
		
	</label>
	<g:textField name="courseDescription" value="${courseInstance?.courseDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${courseInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name_of_classes', 'error')} ">
	<label for="name_of_classes">
		<g:message code="course.name_of_classes.label" default="Nameofclasses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.name_of_classes?}" var="n">
    <li><g:link controller="regClass" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

