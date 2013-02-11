package uk.ac.shu.webarch.eregister

class RegSheet {

	RegClass class_name

	static hasMany = [
	name_of_students:Student
	]
	
	static mappedBy = [
	name_of_students:'studentName'
	]

    static constraints = {
    }
}
