<%@ page pageEncoding="utf8"
		 contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>登録</title>
</head>
<body>
	<div>	
		<form action="RegisterServlet" method="post">
			<div>
				ログインID<input pattern="^([a-zA-Z0-9]{6,})$" type="text" name="login_id" required>
			</div>
			<div>
				パスワード<input pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" type="password" name="user_pass"  maxlength="16" required>
			</div>
			<div>
				<input type="submit" value="確認" >
			</div>
		</form>
	</div>

</body>
</html>