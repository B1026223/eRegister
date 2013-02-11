package uk.ac.shu.webarch.eregister

class Student {
	
	String studentName
	String studentNumber

	static hasMany = [
	students_on_this_course:RegSheet
	]
	
	static mappedBy = [
	students_on_this_course:'class_name'
	]
	
	
    static constraints = {
    }
}
