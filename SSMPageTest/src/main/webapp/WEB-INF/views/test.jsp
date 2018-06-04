<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.8.3.min.js"/>"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<base href="<%=basePath%>">    
</head>
<body> 
<!-- ================================================================== -->
<a href="all?currPage=1">1111</a>
<!-- ================================================================== -->         
   
请输入部门编号：<input type="text" id="text1">
 <input type="button" id="btn1" value="按部门编号查询1"><br><br>   
<!-- ================================================================== -->     
</body>

<script type="text/javascript"> 

//跳转到想要查询的部门（通过部门id）
$(function(){   
	$("#btn1").click(function(){ 
		
		$.ajax({
			url					:	'allEmp',
			data					:	$("#text1").val(),
			contentType	:	"application/json;charset=UTF-8",
			type					:	"post",
			success			:	function(data){
				window.location.href=data; 
			}
		});  
		    
	});   
});     

</script>

</html>