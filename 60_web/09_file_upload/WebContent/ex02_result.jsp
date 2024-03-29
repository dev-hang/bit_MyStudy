<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 여러개 파일 업로드 처리 --%>
<%
	request.setCharacterEncoding("UTF-8");

	//파일을 저장할 위치 지정(upload)
	ServletContext sc = this.getServletContext();
	String path = sc.getRealPath("/upload");
	System.out.println("path : " + path);
	
	//MultipartRequest 객체 생성
	MultipartRequest mr = new MultipartRequest(
			request, path, 10 * 1024 * 1024, 
			"UTF-8", new DefaultFileRenamePolicy());
%>
	<h1>파일 업로드 결과보기</h1>
	<h2>등록자(name) : <%=mr.getParameter("name") %></h2>
	<h2>제목(title) : <%=mr.getParameter("title") %></h2>
	<hr><hr>
<%	
	//여러개 파일에 대한 처리(여러개)
	Enumeration m = mr.getFileNames();
	while (m.hasMoreElements()) {
		String fname = (String) m.nextElement();
		
		//파일정보 표시
		out.println("<p>업로드 파라미터명 : " + fname + "</p>");
		out.println("<p>원본파일명 : " + mr.getOriginalFileName(fname) + "</p>");
		out.println("<p>저장파일명 : " + mr.getFilesystemName(fname) + "</p>");
		out.println("<p>파일타입 : " + mr.getContentType(fname) + "</p>");
		
		//실제 파일 정보 확인
		File file = mr.getFile(fname);
		out.println("<h2>파일이름 : " + file.getName() + "</h2>");
		out.println("<h2>파일크기 : " + file.length() + "</h2>");
%>		
	    <h2>다운로드 링크</h2>
	    <a href="download.jsp?path=upload&name=<%=mr.getFilesystemName(fname) %>">
	    	파일다운로드(<%=mr.getFilesystemName(fname) %>)
	    </a>
		<hr><hr>
<%
	}
%>    