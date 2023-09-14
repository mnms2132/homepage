<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-language" content="ko">
<title>Test 목록 만들기~</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- 공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />

<div class="container">
	<div id="contents">
		<div id="bbs_wrap">
			<div class="board_view">
				<dl class="tit_view">
					<dt>제목</dt>
					<dd><c:out value="${result.sj}"/></dd>
				</dl>
				<dl class="info_view2">
					<dt>작성자ID</dt>
					<dd><c:out value="${result.userNm}"/></dd>
					<dt>작성일</dt>
					<dd><fmt:formatDate value="${result.frstRegistPnttm}"  pattern="yyyy-MM-dd"/></dd>
				</dl>
				
				<div class="view_cont">
					<c:out value="${result.cn}" escapeXml="false" />
				</div>
			</div>
			
			<div class="btn_cont ar">
			
				<c:url var="uptUrl" value="/test/testRegist.do${_BASE_PARAM}">
					<c:param name="testId" value="${result.testId}"/>
				</c:url>
				<a href="${uptUrl}" class="btn">수정</a>
				
				<c:url var="delUrl" value="/test/delete.do${_BASE_PARAM}">
					<c:param name="testId" value="${result.testId}"/>
				</c:url>
				<a href="${delUrl}" id="btn-del" class="btn"><i class="ico-del"></i> 삭제</a>
				<c:url var="listUrl" value="/test/selectList.do${_BASE_PARAM}"/>
				<a href="${listUrl}" class="btn">목록</a>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	//게시 글 삭제
	$("#btn-del").click(function(){
		if(!confirm("삭제하시겠습니까?")){
			return false;
		}
	});
});
</script>

</body>
</html>
