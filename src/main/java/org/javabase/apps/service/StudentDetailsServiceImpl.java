/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;
import java.util.Map;

import org.javabase.apps.entity.StudentDetails;
import org.javabase.apps.mapper.StudentDetailsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author  Rashedunnabi <rashedunnabi21@gmail.com>
 * @version	1.0.0
 * @since	1.0.0
 */
@Service
public class StudentDetailsServiceImpl implements StudentDetailsService{

	@Autowired
	StudentDetailsMapper studentDetailsMapper;

	@Override
	public List<StudentDetails> getAllStudentDetails() {
		return studentDetailsMapper.getAllStudentDetails();
	}

	@Override
	public List<StudentDetails> getAllStudentDetailsByParam(Map<String, Object> params) {
		return studentDetailsMapper.getAllStudentDetailsByParam(params);
	}

	@Override
	public StudentDetails getStudentDetailsById(int subjectId) {
		return studentDetailsMapper.getStudentDetailsById(subjectId);
	}

	@Override
	public boolean addStudentDetails(StudentDetails studentDetails) {
		return studentDetailsMapper.addStudentDetails(studentDetails);
	}

	@Override
	public boolean updateStudentDetails(StudentDetails studentDetails) {
		return studentDetailsMapper.updateStudentDetails(studentDetails);
	}

	@Override
	public boolean deleteStudentDetails(int studentDetailsId) {
		return studentDetailsMapper.deleteStudentDetails(studentDetailsId);
	}
	
}
