<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!-- =========================== Admin Role Menu Section START ========================= -->

<sec:authorize access="hasRole('ADMIN')">

<li class="header">ĐIỀU HƯỚNG</li>
<li><a href='<c:url value="/home"/>'><i class="fa fa-home"></i> <span>Trang chủ</span></a></li>
<li><a href='<c:url value="/dashboard"/>'><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
<li class="treeview">
	<a href="#"><i class="fa fa-group"></i> <span>Học sinh</span> <i class="fa fa-angle-left pull-right"></i></a>
	<ul class="treeview-menu">
	  <li><a href='<c:url value="/dashboard/student/add"/>'><i class="fa fa-link"></i>Thêm Học Sinh</a></li>
	  <li><a href='<c:url value="/dashboard/student"/>'><i class="fa fa-link"></i>Thông Tin Học Sinh</a></li>
	  <li><a href="#">Student Promotion</a></li>
	</ul>
</li>
<li class="treeview">
    <a href="#"><i class="fa fa-link"></i> <span>Nhân Viên</span> <i class="fa fa-angle-left pull-right"></i></a>
    <ul class="treeview-menu">
	    <li><a href='<c:url value="/dashboard/employee"/>'><i class="fa fa-link"></i>Nhân Viên</a></li>
	    <li><a href='<c:url value="/dashboard/teacher"/>'><i class="fa fa-link"></i>Giáo Viên</a></li>
	</ul>
</li>
<li class="treeview">
    <a href="#"><i class="fa fa-link"></i> <span>Lớp</span> <i class="fa fa-angle-left pull-right"></i></a>
    <ul class="treeview-menu">
	    <li><a href='<c:url value="/dashboard/class/manage"/>'><i class="fa fa-link"></i>Quản Lý Lớp</a></li>
		<li><a href='<c:url value="/dashboard/class/section"/>'><i class="fa fa-link"></i>Quản Lý Section</a></li>
		<li><a href='<c:url value="/dashboard/class/syllabus"/>'><i class="fa fa-link"></i>Quản Lý Syllabus</a></li>
	</ul>
</li>
<li class="treeview">
    <a href="#"><i class="fa fa-user"></i> <span>Quản Lý Người Dùng</span> <i class="fa fa-angle-left pull-right"></i></a>
	<ul class="treeview-menu">
	    <li><a href='<c:url value="/dashboard/role"/>'><i class="fa fa-link"></i> <span>Vai Trò</span></a></li>
	    <li><a href='<c:url value="/dashboard/user"/>'><i class="fa fa-plus"></i> <span>Thêm người dùng</span></a></li>
	    <li><a href='<c:url value="/dashboard/permission"/>'><i class="fa fa-link"></i> <span>Quyền</span></a></li>
	</ul>
</li>
<li class="treeview">
	<a href="#"><i class="fa fa-gear"></i> <span>Setup</span> <i class="fa fa-angle-left pull-right"></i></a>
	<ul class="treeview-menu">
		<li><a href='<c:url value="/dashboard/institution"/>'><i class="fa fa-link"></i>Add Institution</a></li>
		<li><a href='<c:url value="/dashboard/building"/>'><i class="fa fa-link"></i>Building </a></li>
		<li><a href='<c:url value="/dashboard/roomUsed"/>'><i class="fa fa-link"></i>Room Used </a></li>
		<li><a href='<c:url value="/dashboard/room"/>'><i class="fa fa-link"></i>Room </a></li>
		<li><a href='<c:url value="/dashboard/shift"/>'><i class="fa fa-link"></i>Shift </a></li>
		<li><a href='<c:url value="/dashboard/insClass"/>'><i class="fa fa-link"></i>Class </a></li>
		<li><a href='<c:url value="/dashboard/subject"/>'><i class="fa fa-link"></i>Subject </a></li>
		<li><a href='<c:url value="/dashboard/classOnShift"/>'><i class="fa fa-link"></i>Class On Shift </a></li>
		<li><a href='<c:url value="/dashboard/section"/>'><i class="fa fa-link"></i>Class Section</a></li>
		<li><a href='<c:url value="/dashboard/session"/>'><i class="fa fa-link"></i>Academic Session</a></li>
		<li><a href='<c:url value="/dashboard/empPost"/>'><i class="fa fa-link"></i>Employee Post</a></li>
		<li><a href='<c:url value="/dashboard/teachersPost"/>'><i class="fa fa-link"></i>Teachers Post</a></li>
	</ul>
</li>
</sec:authorize>
<!-- =========================== Admin Role Menu Section END =========================== -->


<!-- =========================== Student Role Menu Section START ========================= -->

<sec:authorize access="hasRole('STUDENT')">

</sec:authorize>
<!-- =========================== Student Role Menu Section END =========================== -->



<!-- =========================== Teacher Role Menu Section START ========================= -->


<sec:authorize access="hasRole('TEACHER')">

</sec:authorize>
<!-- =========================== Teacher Role Menu Section END =========================== -->



<!-- =========================== Staff Role Menu Section START ========================= -->

<sec:authorize access="hasRole('STAFF')">


</sec:authorize>
<!-- =========================== Staff Role Menu Section END =========================== -->


<!-- =========================== DEVELOPER Role Menu Section START ========================= -->

<sec:authorize access="hasRole('DEVELOPER')">

</sec:authorize>
<!-- =========================== DEVELOPER Role Menu Section END =========================== -->


