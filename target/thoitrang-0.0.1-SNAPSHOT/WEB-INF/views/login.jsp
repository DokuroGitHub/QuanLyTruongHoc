<%@ include file="/WEB-INF/tags/layout/includes.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign in Login</title>
<link href="<c:url value='/resources/css/login.css' />" rel="stylesheet"></link>
<script src="resources/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/jschool/login.js' />"></script>
</head>

<body>
	<!-- Spring authentication checking -->
	<sec:authorize var="loggedIn" access="isAuthenticated()" />

	<c:choose>
		<c:when test="${loggedIn}">
			<jsp:forward page="./dashboard.jsp" />
		</c:when>
		<c:otherwise>
			<div class="login-page">
				<div class="form">
					<font color="red"> <span style="align: center"> <c:if
								test="${not empty param['error']}">
								<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
							</c:if>
					</span>
					</font>
					<form class="register-form" id="registerForm" action="#"
						method="post">
						<input type="text" placeholder="username" id="username"
							autocomplete="off" title="Vui lòng nhập id đăng nhập" /> <input
							type="password" placeholder="password" id="password"
							title="Vui lòng nhập mật khẩu" /> <input type="email"
							placeholder="email address" id="email" autocomplete="off"  title="Vui lòng nhập địa chỉ"/> <input
							type="hidden" id="csrfToken" value="${_csrf.token}" /> <input
							type="hidden" id="csrfHeader" value="${_csrf.headerName}" />
						<button>create</button>
						<p class="message">
							Already registered? <a href="#"
								onclick="toggle_visibility(); return false;" class="message">Sign
								In</a>
						</p>
					</form>
					<form class="login-form" action="<c:url value='/login' />"
						method="post">
						<input type="text" name="username" placeholder="username"
							title="id người dùng" /> <input type="password" name="password"
							placeholder="password" title="Mật khẩu" /> <input type="hidden"
							name="${_csrf.parameterName}" value="${_csrf.token}" />
						<button>login</button>
						<!--
						<p class="message">
							Not registered? <a href="#"
								onclick="toggle_visibility(); return false;" class="message">Create
								an account</a>
						</p>
						 -->
					</form>
				</div>
				<h2>🥕Tài khoản:</h2>
				<table id="loginTable"
					style="border: 1px solid white; text-align: center; color: white;">
					<thead>
						<tr>
							<th>Username</th>
							<th>Password</th>
							<th>Email</th>
							<th>Role</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>admin</td>
							<td>123456</td>
							<td>admin@gmail.com</td>
							<td>Admin</td>
						</tr>
						<tr>
							<td>admin</td>
							<td>123456</td>
							<td>admin@gmail.com</td>
							<td>Admin</td>
						</tr>
					</tbody>
				</table>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>