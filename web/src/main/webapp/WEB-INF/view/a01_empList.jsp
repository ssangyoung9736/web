<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 >사원정보(spring MVC)</h2>

</div><!-- // deptCom, mgrCom jobCom -->
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input name="ename" value="${sch.ename}" class="form-control mr-sm-2" placeholder="사원명입력" />
	    <input name="job" value="${sch.job}" class="form-control mr-sm-2" placeholder="직책입력" />
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
    <thead>
      <tr class="table-success text-center">
        <th>사원번호</th>
        <th>사원명</th>

       
        <th>직책명</th>
        <th>관리자번호</th>
        <th>부서번호</th>
      </tr>
    </thead>
    <!-- 
    사원번호 사원명 부서명 관리자명 직책명 
     -->	
    <tbody>
    	<c:forEach var="emp" items="${empList}">
    	<tr><td>${emp.empno}</td>
    		<td>${emp.ename}</td>
    		<td>${emp.job}</td>
    		<td>${emp.mgr}</td>
    		<td>${emp.deptno}</td>
    		
    		</tr>
    	</c:forEach>
    </tbody>
	</table>    
</div>
</body>
</html>