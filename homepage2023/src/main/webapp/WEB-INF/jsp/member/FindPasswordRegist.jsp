<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title></title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="/asset/member/css/login.css">
</head>
<body>

<h2 class="icon1">비밀번호 재발급</h2>

<div class="bg-area change_box">
	<form id="passwordCnfirm" action="/member/findPasswordComplete.do" method="post" onsubmit="return checkForm(this)">
		<fieldset>
			<legend>비밀번호 변경 폼</legend>
			<input type="hidden" name="esntlId" value="${result.esntlId}"/>
			<input type="hidden" name="emplyrId" value="${result.emplyrId}"/>
			<div class="change_intro">
				<cite><span>TIP</span>보안에 취약한 비밀번호는 사용하지 마세요!</cite>
				<p>
				어쩌구 저쩌구
				</p>
			</div>
			<div class="change_inp">
				<div>
					<label for="password">새로운 비밀번호</label>
					<input type="password" name="password" class="inp" id="password"/>
					<span>비밀번호는 영문, 숫자</span>
				</div>
				<div>
					<label for="password2">새 비밀번호 확인</label>
					<input type="password" name="password2" class="inp" id="password2"/>
					<span>비밀번호는 영문, 숫자</span>
				</div>
			</div>
			<div class="btn-cont">
				<button type="submit" class="btn spot">확인</button>
				<button type="reset" class="btn">취소</button>
			</div>
		</fieldset>
	</form>
</div>

<script>
function checkForm() {
	if(!$("#password").val()) {
		alert("비밀번호 입력해주세요.");
		return false;
	}else if(!$("#password2").val()){
		alert("비밀번호 확인을 입력해주세요.");
		return false;
	}else if($("#password").val() != $("#password2").val()){
		alert("비밀번호와 비밀번호 확인 정보가 다릅니다.");
		return false;
	}
}
</script>
</body>
</html>