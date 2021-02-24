<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String name = request.getParameter("name");
System.out.println("name:" +name);

String lang = request.getParameter("lang");
System.out.println("lang:" +lang);

String aboutlang = request.getParameter("aboutlang");
System.out.println("aboutlang:" +aboutlang);

String feed = request.getParameter("feed");
System.out.println("feed:" +feed);

String age = request.getParameter("age");
System.out.println("age:" +age);

int count = 0;
if(lang.equals("예")) {
	count += 1;
}

if(aboutlang.equals("중국어")){
	count += 2;
}else if(aboutlang.equals("프랑스어")){
	count += 1;
}else{
	
}

if(feed.length() > 15){
	count += 2;
}

if(age.equals("30대")){
	count+=1;
}


String Grade = null;
if(count > 5){
	Grade = "A";
}else if(count >3){
	Grade = "B";
}else if(count >2){
	Grade = "C";
}else{
	Grade = "D";
}

System.out.println(name+"님의 총점은 "+count+"점 이며 등급은 "+Grade+"입니다");
%>

자바스크립트 페이지입니다


<div>

	<h3><%=name+"님의 총점은 "+count+"점 이며 등급은 "+Grade+"입니다"%></h3>

</div>








</body>
</html>