import uk.ac.shu.webarch.eregister.*;
class BootStrap {

    def init = { servletContext ->

	println ("BootStrap::init");

	def frankie_instructor = Instructor.findByStaffNumber('0001') ?: new Instructor(staffNumber:'0001', name:'Frankie Preston').save();
	def rob_instructor = Instructor.findByStaffNumber('0002') ?: new Instructor(staffNumber:'0002', name:'Rob Wallace').save();

	def webArch_course = Course.findByCourseCode('0001a') ?: new Course(courseCode:'0001a', 
									    courseName:'Web Architectures',
									    courseDescription:'A fun and exciting module.. For reals').save();
	

	}
    def destroy = {
    }
}
