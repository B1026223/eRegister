package uk.ac.shu.webarch.eregister

class RegClass {

	String name
	Instructor class_instructor
	
	static hasMany = [
	name_of_classes:RegSheet
	]
	
	static mappedBy = [
	name_of_classes:'class_name'
	]


    static constraints = {
    }
}
