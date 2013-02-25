package uk.ac.shu.webarch.eregister

class Student {
	
	String studentName
	String studentNumber
	

	Set enroll_course
	Set student_attendance	
	
	static hasMany = [
	student_attendance:RegEntry,
	enroll_course:Enrollment
		
	]
	
	static mappedBy = [
	student_attendance:'student',
	enroll_course:'enroll_student'
	]
	
	
    static constraints = {
    }
}
