package org.javabase.apps.controller.student;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.javabase.apps.controller.user.UserController;
import org.javabase.apps.entity.Role;
import org.javabase.apps.entity.StudentDetails;
import org.javabase.apps.entity.User;
import org.javabase.apps.entity.UserInformation;
import org.javabase.apps.service.StudentDetailsService;
import org.javabase.apps.service.UserInformationService;
import org.javabase.apps.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "dashboard/student")
public class AddStudentController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userservice;
	
	@Autowired
	UserInformationService userInformationService;
	
	@Autowired
	StudentDetailsService studentDetailsService;
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
    public String studentPage() {
        return "student/addStudent";
    }
	
	@ResponseBody
	@RequestMapping(value="addStudent",  method=RequestMethod.POST)
	public Map<String, Object> saveStudent(@RequestBody Map<String, String> entity){
		Map<String, Object> response = new HashMap<>();
		
		String class_name   = entity.get("class_name");
		String class_section   = entity.get("class_section");
		//String roll_id      = entity.get("roll_id");
		String first_name  = entity.get("first_name");
		//String middle_name   = entity.get("middle_name");
		String last_name     = entity.get("last_name");
		String gender = entity.get("gender");
		String address     = entity.get("address");
		String city_name      = entity.get("city_name");
		String state_name  = entity.get("state_name");
		String zip_code   = entity.get("zip_code");
		String mobile_number     = entity.get("mobile_number");
		String alternet_mobile_number = entity.get("alternet_mobile_number");
		String phone     = entity.get("phone");
		String email     = entity.get("email");
		String username = entity.get("username");
		String password     = entity.get("password");
		
		String createUser = entity.get("createUser");
		Date createDate   = new Date();
		
		Role role = new Role();
		User user = new User();
		UserInformation userInfo= new UserInformation();
		StudentDetails studentDetails = new StudentDetails();
		
		role.setRoleId(Integer.valueOf("3"));
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setFirstName(first_name);
		user.setLastName(last_name);
		user.setCreateDate(createDate);
		user.setActive(true);
		user.setCredintialNonExpired(true);
		user.setAccountNonExpired(true);
		user.setNonLocked(true);
		user.setUserInformation(userInfo);
		user.setRole(role);
	
		userInfo.setEmailPrimary(email);
        userInfo.setFirstName(first_name);
        userInfo.setPhoneMobile(mobile_number);
        userInfo.setLastName(last_name);
        userInfo.setGender(gender);
        userInfo.setEntryUser(createUser);
        userInfo.setZipCode(zip_code);
        userInfo.setCity(city_name);
        userInfo.setState(state_name);
        userInfo.setIsStudent(true);
        userInfo.setPhoneOffice(alternet_mobile_number);
        userInfo.setPhoneHome(phone);
        
		boolean save = userservice.addUser(user);
		
		if (save) {
			user = userservice.getUserByUsername(username);
			userInfo.setUser(user);
			userInformationService.save(userInfo);
			
			studentDetails.setClassId(Integer.valueOf(class_name));
			studentDetails.setSession(class_section);
			studentDetails.setClassRoel(Integer.valueOf("1"));
			studentDetails.setPermaAddress(address);
			studentDetails.setPresentAddress(city_name);
			studentDetails.setHomeDistrict(state_name);
			
			boolean addStudentDetails = studentDetailsService.addStudentDetails(studentDetails);
			
			if(addStudentDetails) {
			    response.put("success", true);
			    response.put("message", "save success");	
			}
        }else {
            log.info("insert failed");
            response.put("error", true);
            response.put("message", "unable to save");
        }
		
		return response; 
	}
}
