<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>Test 목록 만들기~</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>
 td {
  /* 수평 중앙 정렬하기 */
  text-align: center;
}
</style>

</head>

<body>
<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- 공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />

   <div class="total">
   총 게시물
   <strong><c:out value="${paginationInfo.totalRecordCount}"/></strong>건
   현재페이지<strong><c:out value="${paginationInfo.currentPageNo}"/></strong>
   <c:out value="${paginationInfo.totalPageCount}"/>
   </div>
   <table>
      <thead>
         <tr>
            <th>ID</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>수정일</th>
            <th>관리</th>
         </tr>
      </thead>
      <tbody>
         <c:forEach var="result" items="${resultList}">
            <tr>
               <td><c:out value="${result.testId}"/></td>
               <td>
                  <c:url var="viewUrl" value="/test/select.do">
                     <c:param name="testId" value="${result.testId}"/>
                  </c:url>
                  <a href="${viewUrl}"><c:out value="${result.sj}"/></a>
               </td>
               <td><c:out value="${result.userNm}"/></td>
               <td><c:out value="${result.frstRegistPnttm}"/></td>
               <td><c:out value="${result.lastUpdtPnttm}"/></td>
               <td>
                  <c:url var="delUrl" value="/test/delete.do">
                     <c:param name="testId" value="${result.testId}"/>
                  </c:url>
                  <a href="${delUrl}" class="btn-del">삭제</a>
               </td>
            </tr>
         </c:forEach>
      </tbody>
   </table>
   
   <div id="paging">
   		<c:url var="pageUrl" value="/test/selectList.do${_BASE_PARAM}"/>
		<c:set var="pagingParam"><c:out value="${pageUrl}"/></c:set>
    	<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="${pagingParam}"/>
   </div>

	<div class="btn-cont ar">
		<c:url var="regUrl" value="/test/testRegist.do${_BASE_PARAM}"/>
    	<a href="${regUrl}" class="btn spot"><i class="ico-check-spot"></i> 글쓰기</a>
	</div>

<script>
$(document).ready(function(){
   $("#btn-reg").click(function(){
      location.href = $(this).data("href");
   });
   
   $(".btn-del").click(function(){
      if(!confirm("삭제하시겠습니까?")){
         return false;
      }
   });
});

</script>


</body>
</html>