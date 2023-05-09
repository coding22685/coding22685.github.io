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
    <script type="text/javascript" src="/js/signup.js"></script>
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
            <p id="severaltext1">영진 기숙사에 온걸 환영합니다</p>
                            <p id="severaltext2">WELCOME</p>
            <img src="/image/signmainimage.jpg" alt="이미지" width="100%" />
          </div>
          <div id="centercontentdiv">
            <div id="centerleftmenu">
              <ul>
                <li><a href="/signin.jsp">로그인</a></li>
                <li style="background-color: #3176f9">
                  <a href="/signup.jsp">회원가입</a>
                </li>
              </ul>
            </div>
            <div id="centercontent">
              <div style="font-weight: bold; font-size: 2em; height: 34px">
                &nbsp;&nbsp;회원가입
              </div>
              <br />
              <div style="height: 10px; width: 80%"><hr /></div>
              <br />
              <div style="height: 790px; margin: 15px; width: 80%">
                <form name="memberjoinfrm" id="memberjoinfrm" class="" target="ABC" action ="/kjhuser/userJoin.do">
                  <div
                    style="
                      height: 50px;
                      margin: 15px;
                      font-weight: bold;
                      font-size: 1.1em;
                    "
                  >
                    <i class="fa-solid fa-pen"> 필수 입력 항목</i>
                  </div>
                  <div
                    style="
                      border: 1px solid gray;
                      height: 370px;
                      margin: 15px;
                      padding: 15px;
                      font-size: 0.9em;
                    "
                  >
                    <div style="height: 17%">
                      <span style="width: 10%; line-height: 33px">아이디</span
                      ><input
                        type="text"
                        class="signininput"
                        id="userid" 
                        name="userid"
                      /><span
                        class="signupdoublecheck"
                        onclick="iddoublecheck(document.memberjoinfrm.userid.value);"
                        style="width: 7%; line-height: 35px; cursor: pointer"
                        >중복체크</span
                      >
                    </div>
                    <div style="height: 17%">
                      <span style="width: 10%; line-height: 33px">비밀번호</span
                      ><input
                        type="password"
                        class="signininput"
                        id="userpw" 
                        name="userpw"
                      /><span id="pwspan" style="line-height: 35px"
                        >&nbsp;</span
                      >
                    </div>

                    <div style="height: 17%">
                      <span style="width: 10%; line-height: 33px">전화번호</span
                      ><input
                        type="text"
                        class="signininput"
                        id="userphone" 
                        name="userphone"
                      />
                    </div>
                  </div>

                  <div
                    style="
                      height: 130px;
                      margin: 15px;
                      padding: 30px;
                      font-size: 0.9em;
                      text-align: center;
                    "
                  >
                    <div>
                      <input
                        type="button"
                        style="
                          width: 10%;
                          height: 60px;
                          font-weight: bold;
                          cursor: pointer;
                        "
                        value="취소"
                        onclick="location.href='/signin.jsp'"
                      />
                      &nbsp;&nbsp;<button
                        type="button"
                        onclick="signupcheck();"
                        style="
                          width: 10%;
                          height: 60px;
                          font-weight: bold;
                          background-color: #212020;
                          color: white;
                          cursor: pointer;
                        "
                      >
                        회원가입
                      </button>
                    </div>
                  </div>
                </form>
                <!-- <div
                  style="
                    height: 130px;
                    margin: 15px;
                    padding: 30px;
                    font-size: 0.9em;
                    text-align: center;
                  "
                >
                  <div>
                    <input
                      type="button"
                      style="
                        width: 10%;
                        height: 60px;
                        font-weight: bold;
                        cursor: pointer;
                      "
                      value="취소"
                      onclick="location.href='/signin.jsp'"
                    />
                    &nbsp;&nbsp;<button type="submit" form="signupform"
                      onclick="signupcheck();"
                      style="
                        width: 10%;
                        height: 60px;
                        font-weight: bold;
                        background-color: #212020;
                        color: white;
                        cursor: pointer;
                      "
                    >
                      회원가입
                    </button>
                  </div>
                </div> -->
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
                  <li><a href="/estimate.jsp">견적문의</a></li>
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
                  사업자 등록번호 : 123-12-12345 TEL. 02-1234-5678 FAX.
                  0212345678 EMAIL. kjh@kjh.co.kr 통신판매 신고번호 :
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
    </div>
  </body>
</html>