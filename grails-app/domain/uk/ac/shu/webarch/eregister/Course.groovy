package uk.ac.shu.webarch.eregister

class Course {

	String courseName
	String courseCode
	String courseDescription

	static hasMany = [
	name_of_classes:RegClass
	]
	
	static mappedBy = [
	name_of_classes:'Course'
	]


    static constraints = {
    }

}
