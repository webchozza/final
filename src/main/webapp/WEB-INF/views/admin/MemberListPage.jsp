<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/main/Taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원 관리</title>
<script src="${pageContext.request.contextPath}/resources/assets/js/admin/memberlistpage.js?v=10"></script>
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
	<div class="table-wrapper">
		<table>
			<thead>
				<tr>
					<td width="20%" align="center" style="margin-left:80%;"><b>이메일</b></td>
					<td width="10%" align="center"><b>닉네임</b></td>
					<td width="10%" align="center"><b>가입일</b></td>
					<td width="10%" align="center"><b>등급</b></td>
					<td width="10%" align="center"><b>관리</b></td>
					<td width="7%" align="center"><b>접속</b></td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="member" items="${memberlist}">
				<c:if test="${member.member_admin ne 2}">
					<tr>
						<td align="center">${member.member_email}</td>
						<td align="center">${member.member_name}</td>
						<td align="center"><fmt:formatDate
								value="${member.member_date}" pattern="yyyy.MM.dd" /></td>
						<td align="center"><c:if test="${member.member_admin eq 0}">회원</c:if> 
						<c:if test="${member.member_admin eq 1}">관리자</c:if></td><!-- 멤버칼럼에 관리자 체크 하는 로직하나 만들자 -->
						<td align="center">
						<a href="javascript:;" onclick='memberModifyForm("${member.member_id}")'>수정</a>&nbsp;&nbsp;&nbsp;
							<a href="javascript:;"
							onclick='return deleteMember("${member.member_id}")'>탈퇴</a></td>
						<c:if test="${member.member_ch eq 0}">
							<td align="center"><img src="/dokky/resources/images/chu.jpg" style="width: 25px; height: 22px;"></td>
						</c:if>
						<c:if test="${member.member_ch eq 1}">
							<td align="center"><img src="/dokky/resources/images/ch.jpg" style="width: 25px; height: 22px;"></td>
						</c:if>
					</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
			<!--ㅡㅡㅡㅡㅡ paging ㅡㅡㅡㅡㅡ-->
			<div><p id="cm" class="hc vc">${page}</p></div>
			<style>
			div { position:relative; } 
			#cm { position:absolute; } 
			.hc { width:10%; left:0; right:0; margin-left:50%; margin-right:auto; }
			.vc { height:3%; top: 0; bottom:0; margin-top:auto; margin-bottom:auto; }
			</style>
			<!--ㅡㅡㅡㅡㅡ paging ㅡㅡㅡㅡㅡ-->
			<br/><br/><br/>
</body>
</html>