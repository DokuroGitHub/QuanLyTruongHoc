
/*
 * DataTable function add Student Page
 */
$(function() {
	$("#studentTable").dataTable();
});

$(document).ready(function($) {

	//insert
	$("#student_form").submit(function(event) {
		event.preventDefault();

		var save = jbf.form.validate("#student_form");
		if (!save) {
			return;
		}

		var data = {},
			url = "addStudent";

		data["class_name"] = $("#class_name").val();
		data["class_section"] = $("#class_section").val();
		data["roll_id"] = $("#roll_id").val();
		data["first_name"] = $("#first_name").val();
		data["middle_name"] = $("#middle_name").val();
		data["last_name"] = $("#last_name").val();
		data["gender"] = $("#gender").val();
		data["birth_date"] = $("#birth_date").val();
		data["address"] = $("#address").val();
		data["city_name"] = $("#city_name").val();
		data["state_name"] = $("#state_name").val();
		data["zip_code"] = $("#zip_code").val();
		data["mobile_number"] = $("#mobile_number").val();
		data["alternet_mobile_number"] = $("#alternet_mobile_number").val();
		data["phone"] = $("#phone").val();
		data["email"] = $("#email").val();
		data["username"] = $("#username").val();
		data["password"] = $("#password").val();
		
		data["createUser"] 	= $("#createUser").val();
		//image??????????????????????????
		/*  
		 * if in spring aplication csrf enable
		 * send csrf parameter in header otherwise 405 error
		 */
		$.ajax({
			type: "POST",
			url: url,
			data: JSON.stringify(data),
			dataType: 'json',
			contentType: "application/json; charset=utf-8",
			success: function(resonse) {
				document.getElementById("student_form").reset();
				success(resonse.message);
				location.href = window.location;
			},
			error: function(e) {
				console.log("ERROR: ", e);
				error("Insert falied");
			}
		});

	});


});