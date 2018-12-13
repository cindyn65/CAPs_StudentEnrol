package sa47.team11.caps.service;

import java.util.ArrayList;

import org.springframework.data.repository.query.Param;

import sa47.team11.caps.model.StudentEnrolment;

public interface StudentEnrolmentService {

	ArrayList<StudentEnrolment> findCoursesByID();
	
	ArrayList<StudentEnrolment> findAllStudentEnrolment();
	StudentEnrolment getEnrolledStudent(Integer UserId,Integer CourseId);
	StudentEnrolment findStudentEnrolment(Integer CourseId);

	StudentEnrolment createStudentEnrolment(StudentEnrolment s);

	StudentEnrolment updateStudentEnrolment(StudentEnrolment s);

	void removeStudentEnrolment(StudentEnrolment s);

	ArrayList<StudentEnrolment> findStudentEnrolmentbyCriteria(StudentEnrolment student);
	
	void createEnrolment(Integer courseid, Integer studentid);

}
