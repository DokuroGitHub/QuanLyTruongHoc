/**
 * 
 */
package org.javabase.apps.mapper;

import java.util.List;
import java.util.Map;

import org.javabase.apps.entity.StudentDetails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author  Rashedunnabi <rashedunnabi21@gmail.com>
 * @version	1.0.0
 * @since	1.0.0
 */
@Repository
@SuppressWarnings("unchecked")
public class StudentDetailsMapperImpl implements StudentDetailsMapper{

	@Autowired
	private HibernateTemplate  hibernateTemplate;
	private static final Logger log = LoggerFactory.getLogger(StudentDetailsMapperImpl.class);
	
	@Override
	@Transactional(readOnly=true)
	public List<StudentDetails> getAllStudentDetails() {
		String hql = "FROM student_details";
		return (List<StudentDetails>) hibernateTemplate.find(hql);
	}
	
	@Override
	@Transactional(readOnly=true)
	public List<StudentDetails> getAllStudentDetailsByParam(Map<String, Object> params) {
		String hql = "FROM student_details";
		return (List<StudentDetails>) hibernateTemplate.find(hql);
	}

	@Override
	@Transactional(readOnly=true)
	public StudentDetails getStudentDetailsById(int studentDetailsId) {
		return hibernateTemplate.get(StudentDetails.class, studentDetailsId);
	}

	@Override
	@Transactional
	public boolean addStudentDetails(StudentDetails studentDetails) {
		try {
			hibernateTemplate.save(studentDetails);
			
			return true;
		} catch (Exception e) {
			log.error(e.getMessage(),e);
			return false;
		}
	}

	@Override
	@Transactional
	public boolean updateStudentDetails(StudentDetails studentDetails) {
		try {
			hibernateTemplate.update(studentDetails);
			
			return true;
		} catch (Exception e) {
			log.error(e.getMessage(),e);
			return false;
		}
	}

	@Override
	@Transactional
	public boolean deleteStudentDetails(int studentDetailsId) {
		try {
			hibernateTemplate.delete(studentDetailsId);
			
			return true;
		} catch (Exception e) {
			log.error(e.getMessage(),e);
			return false;
		}
	}

}
