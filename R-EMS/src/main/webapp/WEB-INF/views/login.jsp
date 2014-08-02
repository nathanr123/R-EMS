<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>
	<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL }">
		<div class="errorblock">Invalid Credentials
			${sessionScope[SPRING_SECURITY_LAST_EXCEPTION].message}</div>
	</c:if>

	<form name="f" action='<c:url value="j_spring_security_check"/>'
		method="post">
		<table>
			<tr>
				<td>username :</td>
				<td><input type="text" name="j_username" value=""></td>
			</tr>
			<tr>
				<td>password :</td>
				<td><input type="password" name="j_password" value=""></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit"
					value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>