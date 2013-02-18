package uk.ac.shu.webarch.eregister

class Course {

	String courseName
	String courseCode
	String courseDescription
	
	Set name_of_classes
	
	static hasMany = [
	name_of_classes:RegClass
	]
	
	static mappedBy = [
	name_of_classes:'courseOwner'
	]


    static constraints = {
    }

}
