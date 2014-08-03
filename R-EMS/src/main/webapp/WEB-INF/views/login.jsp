<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/css/style.css" />
<title>Login</title>
</head>

<body>
	<form name="f" class="login-form" action="j_spring_security_check"
		method="post">
		<fieldset>
			<legend>Login</legend>

			<p>
				<label for="j_username">Username</label>: <input id="j_username"
					name="j_username" size="20" maxlength="50" type="text" />
			</p>

			<p>
				<label for="j_password">Password</label>: <input id="j_password"
					name="j_password" size="20" maxlength="50" type="password" />
			</p>

			<p>
				<input type="submit" value="Login" />
			</p>


		</fieldset>

	</form>
	<p class="message">
		<c:if test="${not empty error}">
		${error}
	</c:if>
	</p>
</body>
</html>