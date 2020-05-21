<%@ page pageEncoding="utf8"
		 contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>ログインフォーム</title>
</head>
<body>
	<form action="" method="post">
		<div>
			ログインID<input pattern="^([a-zA-Z0-9]{6,})$" type="text" name="login_id" required>
			<!-- 半角英数字6文字以上 ^([a-zA-Z0-9]{6,})$ -->
		</div>
		<div>
			パスワード<input pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" type="password" name="user_pass"  maxlength="16" required>
			<!-- (?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}
			8文字以上で1文字以上の数字、小文字アルファベット、大文字アルファベットがそれぞれ含まれていること -->
		</div>
		<div>
			<input type="submit" value="ログイン" >
		</div>
	</form>
	<a href="">登録画面</a>
	<!-- 登録画面の名前を決めていないため空欄です。 -->
</body>
</html>