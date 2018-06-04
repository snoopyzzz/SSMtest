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
<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>" type="text/css">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.8.3.min.js"/>"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<base href="<%=basePath%>">    
</head>
<body> 

<c:if test="${!empty userPage}">
	<table> 
		<tr>
			<th width="80">ID</th>
			<th width="80">姓名</th>
			<th width="80">年龄</th>     
			<th width="80">部门ID</th>     
		</tr>
		<c:forEach items="${userPage.list}" var="user">   
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.age}</td>
			<td>${user.departmentId}</td>
		</tr>
		</c:forEach>
	</table>
</c:if>


   <span>第${userPage.currPage }/ ${userPage.totalPage}页</span>&nbsp;&nbsp;
   
   <span>
       <c:if test="${userPage.currPage != 1}">
           <a href="all?currPage=1">[首页]</a>&nbsp;&nbsp;
           <a href="all?currPage=${userPage.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>

       <c:if test="${userPage.currPage != userPage.totalPage}">
           <a href="all?currPage=${userPage.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="all?currPage=${userPage.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
<span>总记录数：${userPage.totalCount }&nbsp;&nbsp;每页显示:${userPage.pageSize}</span>&nbsp;&nbsp;

</body>

<script type="text/javascript"> 



</script>

</html>