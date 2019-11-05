<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/pages/header.jsp"%>
	<div class="container">
		<c:if test="${not empty loginFailed}">
			<b>Username i password nisu tačni, pokušajte ponovo.</b>
		</c:if>

		<div id="modalLoginForm" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<form
						action="http://localhost:8080/TaskManagementServlet/LoginServlet?action=login"
						method="post">
						<div class="modal-body mx-3">
							<div class="md-form mb-5">
								<i class="fas fa-envelope prefix grey-text"></i> <input
									type="text" name="username"> <label>Korisničko
									ime</label>
							</div>

							<div class="md-form mb-4">
								<i class="fas fa-lock prefix grey-text"></i> <input
									type="password" name="password"> <label>Lozinka</label>
							</div>

						</div>
						<div class="modal-footer d-flex justify-content-center">
							<button class="btn btn-default">Prijavi se</button>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>