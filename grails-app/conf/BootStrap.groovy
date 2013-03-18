import uk.ac.shu.webarch.eregister.*;
class BootStrap {

    def init = { servletContext ->

	println ("BootStrap::init");

	def frankie_instructor = Instructor.findByStaffNumber('0001');
	
	if ( frankie_instructor == null ) {
		println("Instuctor not found, create...");
		frankie_instructor = new Instructor ()
		frankie_instructor.staffNumber = '0001';
		frankie_instructor.name = 'Frankie Preston';
		frankie_instructor.save();
	}
	else {
		println("Result of find by staff number for Frankie: ${frankie_instructor}");

    	     }
	}
    def destroy = {
    }
}
