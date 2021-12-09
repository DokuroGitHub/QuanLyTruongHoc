package org.javabase.apps.mapper;

import java.util.List;
import java.util.Map;

import org.javabase.apps.entity.StudentDetails;

/**
 * @author  Rashedunnabi <rashedunnabi21@gmail.com>
 * @version	1.0.0
 * @since	1.0.0
 */
public interface StudentDetailsMapper {
	
	public List<StudentDetails> getAllStudentDetails();
	public List<StudentDetails> getAllStudentDetailsByParam(Map<String, Object> params);
	public StudentDetails getStudentDetailsById(int studentDetailsId);
	public boolean addStudentDetails(StudentDetails studentDetails);
	public boolean updateStudentDetails(StudentDetails studentDetails);
    public boolean deleteStudentDetails(int studentDetailsId);

}
