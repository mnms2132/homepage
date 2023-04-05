<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Language" content="ko">
<title>데이터 가져오기~</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>
table{border-collapse: collapse;}
th{font-weight:bold;}
th, td{padding:5px;border:1px solid #000;}
</style>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>TEMP_ID</th>
			<th>TEMP_VAL</th>
		</tr>
	</thead>
	<tbody>  
		<c:forEach var="result" items="${resultList }">
			<tr>
				<td><c:out value="${result.tempId}"/></td>
				<td><c:out value="${result.tempVal}"/></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<%-- <body>
${result2.tempId} : ${result2.tempVal}
</body> --%>
<button type ="button" id="btn-reg" data-href="/temp/tempRegist.do">등록하기</button>
<script>
$(document).ready(function(){
	//등록하기  
	$("#btn-reg").click(function(){
		location.href = $(this).data("href");
	});
});
</script>
</body>
</html>
