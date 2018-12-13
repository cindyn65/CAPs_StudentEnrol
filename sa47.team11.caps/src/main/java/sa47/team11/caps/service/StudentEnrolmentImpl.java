package sa47.team11.caps.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sa47.team11.caps.model.StudentEnrolment;
import sa47.team11.caps.repository.StudentEnrolRepository;

@Service
public class StudentEnrolmentImpl implements StudentEnrolmentService {
		
			@Resource
			StudentEnrolRepository srepo;
			
			
			@Override
			@Transactional
			public ArrayList<StudentEnrolment> findAllStudentEnrolment() {
				// TODO Auto-generated method stub
				return (ArrayList<StudentEnrolment>) srepo.findAll();
			}

			/*@Override
			@Transactional
			public ArrayList<StudentEnrolment> getEnrolledStudent(Integer UserId,Integer CourseId) {
				//System.out.println("Course ID" + CourseID);
				// TODO Auto-generated method stub
				return srepo.findById(String.valueOf(CourseId)).//getEnrolledStudent(UserId,CourseId);
				
			}*/

			@Override
			@Transactional
			public StudentEnrolment findStudentEnrolment(Integer CourseId) {
				//System.out.println("Course ID" + CourseID);
				// TODO Auto-generated method stub
				StudentEnrolment stud = srepo.findAll().get(CourseId);
				System.out.println(stud.toString());
				return stud;
			}
			
			@Override
			@Transactional
			public StudentEnrolment createStudentEnrolment(StudentEnrolment s) {
				// TODO Auto-generated method stub
				return srepo.saveAndFlush(s);
			}

			@Override
			@Transactional
			public StudentEnrolment updateStudentEnrolment(StudentEnrolment s) {
				// TODO Auto-generated method stub
				return srepo.saveAndFlush(s);
			}

			@Override
			@Transactional
			public void removeStudentEnrolment(StudentEnrolment s) {
				// TODO Auto-generated method stub
				srepo.delete(s);
			}

			@Override
			public ArrayList<StudentEnrolment> findStudentEnrolmentbyCriteria(StudentEnrolment student) {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public ArrayList<StudentEnrolment> findCoursesByID() {
				// TODO Auto-generated method stub
				return null;
			}

			@Transactional
			@Override
			public void createEnrolment(Integer courseid, Integer studentid) {
				int score = 0;
				String status = "successful";
				srepo.createEnrolment(courseid.intValue(), studentid.intValue(),score,status);
			}

			@Override
			public StudentEnrolment getEnrolledStudent(Integer UserId, Integer CourseId) {
				// TODO Auto-generated method stub
				return null;
			}
}
