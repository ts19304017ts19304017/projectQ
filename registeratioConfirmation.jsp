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
		<form action="RegisterServle" method="post">
			<div>
		    	<h2>下記のユーザーを登録します</h2>
			</div>
		   	<div>
		   		<p>ユーザーID:${id} </p>
		    </div>
		     <div>
		         <p>パスワード:${pass}</p>
		     </div>
		     <div>
		     	<p>ユーザー名:${name}</p>
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