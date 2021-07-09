<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="board_ex.model.*,board_ex.service.*" %>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="rec" class="board_ex.model.BoardVO">
	<jsp:setProperty name="rec" property="*"/>
</jsp:useBean>

<%
	
	WriteArticleService.getInstance().write(rec);
	//BoardSave.jsp에서 새로고침을 하게 되면 중복 입력되기에
	// 추후에 입력 후 BoardView.jsp?id=글번호 로 넘겨서 처리하고자
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판글저장</title>
</head>
<body>
글이 작성되었습니다.<br/>
<a href="BoardList.jsp">[게시판 글 보기]</a>
							<!-- 게시클 번호가 계속 바뀌기 때문에 SEQ번호를 가져온다 -->
</body>
</html>