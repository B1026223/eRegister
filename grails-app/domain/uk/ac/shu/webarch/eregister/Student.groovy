package uk.ac.shu.webarch.eregister

class Student {
	
	String studentName
	String studentNumber

	Set students_on_this_course

	static hasMany = [
	attendance:RegEntry,
	enroll_course:Enrollment	
	]
	
	static mappedBy = [
	attendance:'student',
	enroll_course:'enrol_student'
	]
	
	
    static constraints = {
    }
}
