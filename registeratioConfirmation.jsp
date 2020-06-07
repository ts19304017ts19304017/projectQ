<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー確認</title>
</head>
<body>
	<div>
		<form action="RegisterServlet" method="post">
			<div>
		    	<h2>下記のユーザーを登録します</h2>
			</div>
		   	<div>
		   		<span>ユーザーID:${id}</span>
		    </div>
		     <div>
		     	<span>ユーザー名:${name}</span>
		     </div>
		     <div>
		     	<span>パスワード:${pass}</span>
		     </div>
		     <div>
		    	<a href="register.jsp">戻る</a>
		     </div>
		     <div>
		    	<input type="submit" value="完了" >
		     </div>
		</form>
	</div>
</body>
</html>