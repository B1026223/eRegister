import uk.ac.shu.webarch.eregister.*;
class BootStrap {

    def init = { servletContext ->

	println ("BootStrap::init");

	def frankie_instructor = Instructor.findByStaffNumber('0001') ?: new Instructor(staffNumber:'0001', name:'Frankie 	  Preston').save();
	def rob_instructor = Instructor.findByStaffNumber('0002') ?: new Instructor(staffNumber:'0002', name:'Rob 		Wallace').save();

	def webArch_course = Course.findByCourseCode('0001a') ?: new Course(courseCode:'0001a', 
							         courseName:'Web Architectures',
							         courseDescription:'A fun and exciting module.. 								 For reals').save();
	def databaseSystems_course = Course.findByCourseCode('0002') ?: new Course(courseCode:'0002', 
							         courseName:'Database Systems',
							         courseDescription:'A not so fun and exciting 									 module').save();

	def new_class = new RegClass(name:'WebArch-Mondays', class_instructor:frankie_instructor, 
							     courseOwner:webArch_course).save(failOnError:true);

	def ian_student = Student.findByStudentNumber('1234') ?: new Student(studentNumber:'1234', 
								 studentName:'Ian  Ibbotson').save();
	def matthew_student = Student.findByStudentNumber('5555') ?: new Student(studentNumber:'5555', 
								     studentName:'Mathhew Love').save();


	}
    def destroy = {
    }
}
