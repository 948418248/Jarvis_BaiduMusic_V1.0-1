<%@page import="com.jarvis.util.MusicUtil"%>
<%@ page language="java"  import="java.util.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	String lrc=MusicUtil.getLrc(request);
	
	out.print(lrc);
	
%>