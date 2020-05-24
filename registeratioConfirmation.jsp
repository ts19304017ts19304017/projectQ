<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.User"%>
<%User  /*~User*/= (User) session.getAttribute/*("~User")*/;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー確認</title>
</head>
<body>
	<div>
		<div>
	    	<h2>下記のユーザーを登録します</h2>
		</div>
	   	<div>
	   		<p>ログインID:<%=/*~User*/.getId()%> </p>
	    </div>
	     <div>
	         <p>パスワード:<%=/*~User*/.getPass()%></p>
	     </div>

	     <div>
	    	<a href="/UserRegistration/RegisterUser">戻る</a>
	     </div>
	     <div>
	    	<a href="/UserRegistration/RegisterUser?action=done">登録</a>
	     </div>

		
	</div>
</body>
</html>