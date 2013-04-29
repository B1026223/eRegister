package uk.ac.shu.webarch.eregister

class RegSheet {

	RegClass class_name
	

	Set signatures


	static hasMany = [
	signatures:RegEntry
	
	]
	
	static mappedBy = [
	signatures:'sheet'
	]

    static constraints = {
    }
}
