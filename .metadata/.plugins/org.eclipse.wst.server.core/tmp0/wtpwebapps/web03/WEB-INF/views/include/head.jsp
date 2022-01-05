<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="com.board.example.dto.*" %>
<%
	MemberDTO member = (MemberDTO) session.getAttribute("member");
%>
<c:set var="path" value="${pageContext.request.contextPath }" />
 <!-- 파비콘 설정 -->
    <link rel="shortcut icon" href="${path }/include/source/favicon.ico">
    <link rel="apple-touch-icon" href="${path }/include/source/favicon.ico" sizes="48x48">
    <!-- 메타포 설정 -->
    <meta name="title" content="울릉군" />
    <meta name="Keywords" content="울릉군, 독도, 울릉도, Ulleung-gun, Dokdo" />
    <meta name="Description" content="울릉군 홈페이지입니다." />
    <!-- 오픈그래프 설정 -->
    <meta property="og:url" content="www.Ulleung-travel.kr">
    <meta property="og:site_name" content="울릉관광">
    <meta property="og:locale" content="울릉">
    <meta property="og:title" content="project3">
    <meta property="og:description" content="울릉관광 홍보사이트">
    <meta property="og:country-name" content="TheJoeun.co">
    <!-- 폰트 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 필수 API 설정 -->
    <script src="${path }/include/js/jquery-latest.js"></script>
    <script src="${path }/include/js/jquery.bxslider.min.js"></script>
    <!-- 외부 스타일 로딩-->
    <!-- <link rel="stylesheet" href="${path }/include./css/reset2.css"> -->
    <!-- <link rel="stylesheet" href="${path }/include./css/normalize.css"> -->
    <link rel="stylesheet" href="${path }/include/css/jquery.bxslider.min.css">
    <link rel="stylesheet"href="${path }/include/css/grid.css">
    <link rel="stylesheet"href="${path }/include/css/common.css">
    

