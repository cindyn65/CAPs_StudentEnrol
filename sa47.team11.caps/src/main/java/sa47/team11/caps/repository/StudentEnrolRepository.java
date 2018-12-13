package sa47.team11.caps.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import sa47.team11.caps.model.StudentEnrolment;

public interface StudentEnrolRepository extends JpaRepository<StudentEnrolment, String> {

	@Query
	(value = "SELECT * from Student_Enrolment c WHERE c.StudentID = null", nativeQuery = true)
	ArrayList<StudentEnrolment> findCoursesByCID(@Param("cid") Integer courseID);
	
	@Query
	(value = "SELECT * from Student_Enrolment c WHERE c.StudentID=:userid", nativeQuery = true)
	ArrayList<StudentEnrolment> findAllStudentEnrolmentbyCID(@Param("userid") int userid);
	
	@Query
	(value = "SELECT c from Student_Enrolment c WHERE c.DateRegistered != null", nativeQuery = true)
	ArrayList<StudentEnrolment> findStudentEnrolment();
	
	@Modifying
	@Query
	(value = "UPDATE student_enrolment set Status_Enroll=: statusEnroll WHERE studentid=: userid", nativeQuery = true)
	void editEnrolment(@Param ("statusEnroll") String statusEnroll, @Param("userid") Integer userid);
	

	//@Modifying
	//@Query(value="UPDATE student_enrolment set first_Mid_Name=:firstMidName, last_Name=:lastName, `STATUS`=:status where userid=:userid", nativeQuery=true)
	//void editEnrolment(@Param("firstMidName") String firstMidName, 
		//	@Param("lastName") String lastName, @Param("status") String status, @Param("userid") Integer userid);
	
	@Modifying
	@Query(value="INSERT INTO student_enrolment(COURSEID,STUDENTID,DATE_REGISTERED,STATUS_ENROLL,SCORE) VALUES(:courseid, :studentid, now(), :status,:score)", nativeQuery=true)
	void createEnrolment(@Param("courseid") int courseid, @Param("studentid") int studentid,@Param("score") int score,@Param("status") String status);
	
	/*@Modifying
	@Query(value="SELECT * FROM student_enrolment se WHERE se.COURSEID =:CourseId and se.STUDENTID =:UserId",nativeQuery=true)
    StudentEnrolment getEnrolledStudent(Integer UserId,Integer CourseId);*/
}
