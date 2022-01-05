<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <header class="hd fix">
        <div class="hd_wrap">
               <div class="logo">
                <a href="index.html" class="logo"><img src="${path }/include/source/img/logo.gif" alt=""></a>
                <h2 class="logo_tit">울릉관광</h2>
               </div>
           <nav class="tnb">
               <ul>
              	   <c:if test="${member==null }"> 
	                   <li><a href="login.jsp">로그인</a></li>
	                   <li><a href="join.jsp">회원가입</a></li>
                   </c:if>  
               	   <c:if test="${member!=null }">
	                   <li class="user_name">${member.userid } 님</li>
	                   <li><a href="mypage.jsp">마이페이지</a></li>
	                   <li><a href="">로그아웃</a></li>
              	   </c:if> 
                   <c:if test="${member==admin }"> 
	                   <li><a href="join.jsp">글목록</a></li>
	                   <li><a href="join.jsp">회원목록</a></li>
                   </c:if> 
               </ul>
           </nav>
           <nav class="gnb">
                <ul>
                    <li>
                        <a href="" class="dp1">관광가이드</a>
                        <ul class="sub">
                            <li><a href="ship.jsp">울릉도/독도 배편</a>
                                <!-- 하위 메뉴 -->
                            </li>
                            <li><a href="helper.jsp">여행도우미</a></li>
                            <li><a href="tourmap.jsp">울릉도투어맵</a></li>
                            <li><a href="sea.jsp">해상관광</a></li>
                            <li><a href="mainLand.jsp">주요관광지</a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="" class="dp1">울릉도여행</a>
                        <ul class="sub">
                            <li><a href="course.jsp">추천코스</a></li>
                            <li><a href="ullMovie.jsp">영상으로 보는 울릉</a></li>
                            <li><a href="vr.jsp">VR로 보는 울릉</a></li>
                            <li><a href="ent.jsp">즐길거리</a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="" class="dp1">숙박 및 먹거리</a>
                        <ul class="sub">
                            <li><a href="accomodate.jsp">숙박시설</a></li>
                            <li><a href="food.jsp">일반먹거리</a></li>
                            <li><a href="infoFood.jsp">음식점안내</a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="" class="dp1">관광상품</a>
                        <ul class="sub">
                            <li><a href="tourpass.jsp">울릉아일랜드투어패스</a></li>
                            <li><a href="healing.jsp">울릉힐링로드</a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="" class="dp1">문화행사</a>
                        <ul class="sub">
                            <li><a href="squid.jsp">오징어축제</a></li>
                            <li><a href="sing.jsp">울릉해변가요제</a></li>
                            <li><a href="cultureH.jsp">회당문화제</a></li>
                            <li><a href="cultureW.jsp">우상문화제</a></li>
                            <li><a href="swing.jsp">민속그네뛰기</a></li>
                            <li><a href="moon.jsp">달맞이축제</a></li>
                            <li><a href="wish.jsp">태하성하신당제</a></li>
                        </ul>
                        
                    </li>
                    <li>
                        <a href="" class="dp1">참여마당</a>
                        <ul class="sub">
                            <li><a href="inform.jsp">공지사항</a></li>
                            <li><a href="advert.jsp">울릉홍보관</a></li>
                            <li><a href="informMini.jsp">울릉약소소식</a></li>
                            <li><a href="booklet.jsp">관광안내책자신청</a></li>
                            <li><a href="faq.jsp">FAQ</a></li>
                            <li><a href="wifi.jsp">무선와이파이</a></li>
                            <li><a href=""></a></li>
                        </ul>
                        
                    </li>
                </ul>
           </nav>
        </div>
       </header>
