<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/main/Taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원 관리</title>
<script src="${pageContext.request.contextPath}/resources/assets/js/admin/memberlist.js?v=12"></script>
</head>
<style>
input[type="text"] {
	-moz-appearance: none;
	-webkit-appearance: none;
	-ms-appearance: none;
	appearance: none;
	background: #ffffff;
	border-radius: 0.375em;
	border: none;
	border: solid 1px rgba(210, 215, 217, 0.75);
	color: inherit;
	display: inline;
	outline: 0;
	padding: 0 1em;
	text-decoration: none;
	width: 100%;
}

.select-wrapper {
	text-decoration: none;
	display: inline-block;
	position: relative;
	width: 10%;
}

</style>
<body>
<div id="membermodifyarea">
	<h4>Member Information Management</h4>
	
	<form id="searchform" method="post">
	<input type="hidden" name="i" id="i" value="${i}"/>
		<div class="select-wrapper">
			<select name="n" id="demo-category">
				<option value="0" <c:if test="${n eq 0}">selected</c:if>>이메일</option>
				<option value="1" <c:if test="${n eq 1}">selected</c:if>>닉네임</option>
			</select>
		</div>
		<input type="text" id="searchvalue" name="search" value="${search}"  style="width:20%"/> 
	</form>
	
		<a href="javascript:;" onclick='MemberCheck("on")'>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;접속 회원&nbsp;&nbsp;|&nbsp;&nbsp;</a> 
			<a href="javascript:;" onclick='MemberCheck("out")'>미접속 회원&nbsp;&nbsp;|&nbsp;&nbsp;</a> 
			<a href="javascript:;" onclick='MemberCheck("all")'>전체 회원&nbsp;&nbsp;|&nbsp;&nbsp;</a>
	<div id="area">
	</div>
</div>
<form id="valueform">
	<input type="hidden" name="ch" id="ch" value="${ch}"/>
	<input type="hidden" name="i" id="i" value="${i}"/>
	<input type="hidden" id="member_id" value="${member_id}"/>
	<input type="hidden" id="path" value="${path}"/>
	<input type="hidden" id="session_id" value="${sessionScope.member_id}"/>
</form>
</body>
</html>