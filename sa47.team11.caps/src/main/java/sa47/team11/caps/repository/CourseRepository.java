package sa47.team11.caps.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import sa47.team11.caps.model.Course;

/*@Repository
@Transactional*/
public interface CourseRepository extends JpaRepository<Course,Integer> {
	/*@Query("SELECT r.courseName FROM Course r")
	List<String> getCourseName();*/
	
	@Query("SELECT r FROM Course r WHERE r.courseid=:courseId")
	Course getCoursebyId(@Param("courseId") int id);
	
}
