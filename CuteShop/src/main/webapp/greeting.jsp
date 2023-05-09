<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="egovframework.kjhuser.service.KjhuserVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>영진고시원 김정현 김보성 김경진 이원희</title>
    <link rel="stylesheet" href="/css/kjh.css" />
    <script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/js/gallery.js"></script>
    <script type="text/javascript" src="/js/textani.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    />
    <script
      src="https://kit.fontawesome.com/bbfc782959.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div id="viewport">
      <div id="header">
        <div id="nav">
          <div id="topnav">
<%
	KjhuserVO userVO = null;
	if(session.getAttribute("loginedUserVO") != null)
		userVO = (KjhuserVO)session.getAttribute("loginedUserVO");
	if(userVO==null){
%>
            <a href="/signin.jsp"><i class="fa-solid fa-user"></i> 로그인</a>
            <a href="/signup.jsp"
              ><i class="fa-solid fa-user-plus"></i> 회원가입</a
            >
<% 
	} else{
%>
			<a href="/kjhuser/userLogout.do"><i class="fa-solid fa-user"></i> 로그아웃</a>
            <a href="/userinfo.jsp"
              ><i class="fa-solid fa-user-plus"></i> 정보수정</a
            >
<%
	}
%>
          </div>
        </div>
      </div>
      <div id="header2">
        <div id="logowrap">
          <h1>
            <a href="/index.do"
              ><img src="/image/logo.png" alt="이미지" width="100%"
            /></a>
          </h1>
          <div id="topnav2">
            <ul>
              <li class="topnav2">
                <a href="/greeting.jsp">고시원소개</a>
                <div class="topmenu">
                  <ul>
                    <li><a href="/greeting.jsp">고시원소개</a></li>
                  </ul>
                </div>
              </li>
              <li class="topnav2">
                <a href="/living.jsp">생활안내</a>
                <div class="topmenu">
                  <ul>
                    <li><a href="/living.jsp">생활안내</a></li>
                  </ul>
                </div>
              </li>
              <li class="topnav2">
                <a href="/map.jsp">오시는길</a>
                <div class="topmenu">
                  <ul>
                    <li><a href="/map.jsp">오시는길</a></li>
                  </ul>
                </div>
              </li>
              <li class="topnav2">
                <a href="/estimate.jsp">입실문의</a>
                <div class="topmenu">
                  <ul>
                    <li><a href="/estimate.jsp">입실문의</a></li>
                  </ul>
                </div>
              </li>
              <li class="topnav2">
                <a href="/kjhgallery/KjhgalleryList.do">게시판</a>
                <div class="topmenu">
                  <ul>
                    <!-- <li><a href="/kjhgallery/KjhgalleryList.do">공지사항</a></li> -->
                    <li><a href="/kjhgallery/KjhgalleryList.do">갤러리</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div id="mainwrap">
        <div class="main">
          <div class="banner">
            <p id="severaltext1">Good Luck To You</p>
            <p id="severaltext2">김정현 김보성 김경진 이원희</p>
            <img src="/image/gallerymainimage.jpg" alt="이미지" width="100%" />
          </div>
          <div id="centercontentdiv">
            <div id="centerleftmenu">
              <ul>
                <li style="background-color: #3176f9">
                  <a href="greeting.jsp">고시원소개</a>
                </li>
              </ul>
              <ul>
                <div>
                  <img src="/image/call.jpg" alt="이미지" width="100%" />
                </div>
                <div>
                  <p>
                    <span
                      style="color: #1b5e20; font-weight: 600; font-size: 20px"
                      >더착한 고시원</span
                    >
                    <br />
                    입실문의 전화걸기
                    <br />
                    <strong style="color: #e65100">053-1234-5678</strong>
                  </p>
                </div>
              </ul>
            </div>
            <div id="gallerycontent" style="margin-left: 20px">
              <div><br /></div>
              <div><br /></div>

              <div
                class="gallerycontentunderdiv"
                style="font-weight: bold; font-size: 2em"
              >
                &nbsp;&nbsp;고시원소개
              </div>
              <br />
              <hr />
              <br />
              <div id="greetingimg">
                <img src="/image/info.jpg" width="400px" />
              </div>
              <div id="greetingcontent">
                <h1>저희 고시원을 찾아주셔서 감사합니다.</h1>
                <p>
                  저희 회사는 1999년 창립 이후 한 사업분야에 집중하여 사업을
                  안정시키고 기술개발을 꾸준히하여 관련 업계중 최고의 전문
                  기업이 되었습니다.
                  <br />저희 회사는 앞으로도 더욱 노력하여 고객에게 신뢰 받고
                  사랑 받는 기업이 되도록 노력할 것 입니다.
                </p>
                <p>
                  내 지역 내 고향에서 최고의 기업이 되어 대한민국의 대표 기업이
                  되어 더 나아가 21세기 글로벌 기업이 되겠습니다. 항상 저희
                  서비스를 이용해 주시는 많은 고객님께 다시 한번 감사의 인사
                  드리고 지속적으로 고객과 소통하고 상생하는 서비스와 비즈니스를
                  만들기 위해 더 많은 노력과 정성을 기울이겠습니다.
                </p>
                <p>
                  내 지역 내 고향에서 최고의 기업이 되어 대한민국의 대표 기업이
                  되어 더 나아가 21세기 글로벌 기업이 되겠습니다. 항상 저희
                  서비스를 이용해 주시는 많은 고객님께 다시 한번 감사의 인사
                  드리고 지속적으로 고객과 소통하고 상생하는 서비스와 비즈니스를
                  만들기 위해 더 많은 노력과 정성을 기울이겠습니다.
                </p>
                <p>
                  하시는 사업과 가정에 항상 웃음과 행운이 가득하시기를
                  기원합니다.
                </p>
                <p style="text-align: right"><br />JH고시원 <br />올림</p>
              </div>
            </div>
          </div>
          <!--end of contentdiv -->
        </div>
      </div>
      <div class="footer">
        <div class="footer_width">
          <div class="footerlogo">
            <img src="/image/logo.png" alt="" width="70%" />
          </div>
          <div class="footer_content">
            <div class="foot_nav" style="overflow: auto">
              <ul>
                <li><a href="/greeting.jsp">회사소개</a></li>
                <li>
                  <a
                    href='javascript:window.open("/privacy.jsp","name", "width=600px,height=380px,left=500px,top=450px");'
                    >개인정보취급방침</a
                  >
                </li>
                <li><a href="/estimate.jsp">입실문의</a></li>
              </ul>
              <ul style="float: right">
                <li style="border: 0px solid white">
                  <a href="https://facebook.com" target="_blank"
                    ><i class="fa-brands fa-facebook"></i
                  ></a>
                </li>
                <li style="border: 0px solid white">
                  <a href="https://twitter.com" target="_blank"
                    ><i class="fa-brands fa-twitter"></i
                  ></a>
                </li>
                <li style="border: 0px solid white">
                  <a href="https://instagram.com" target="_blank"
                    ><i class="fa-brands fa-instagram"></i
                  ></a>
                </li>
              </ul>
            </div>
            <div>
              <br />
              <p>
                상호 : 대한민국 대표자 : 김정현 주소 : 대구광역시 북구 영진로
              </p>
              <p>
                사업자 등록번호 : 123-12-12345 TEL. 02-1234-5678 FAX. 0212345678
                EMAIL. kjh@kjh.co.kr 통신판매 신고번호 :
              </p>
              <p>
                Copyright(c) 대한민국. All Rights Reserved.
                <i class="fa-solid fa-copyright"></i>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>