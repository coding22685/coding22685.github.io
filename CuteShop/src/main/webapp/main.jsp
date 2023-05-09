<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="egovframework.kjhuser.service.KjhuserVO" %>
    <%@ page import="egovframework.kjhgallery.service.KjhgalleryVO" %>
      <%@ page import="java.util.List" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
              <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                <!DOCTYPE html>
                <html>

                <head>
                  <meta charset="UTF-8" />
                  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                  <title>영진고시원 김정현 김보성 김경진 이원희</title>
                  <link rel="stylesheet" href="/css/kjh.css" />
                  <script src="/js/jquery-1.9.1.min.js"></script>
                  <script src="/js/kjh.js"></script>
                  <script src="/js/mouseani.js"></script>
                  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
                  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
                  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" />
                  <script src="https://kit.fontawesome.com/bbfc782959.js" crossorigin="anonymous"></script>
                </head>

                <body>
                  <div id="viewport">
                    <div id="header">
                      <div id="nav">
                        <div id="topnav">
                          <% KjhuserVO userVO=null; if(session.getAttribute("loginedUserVO") !=null)
                            userVO=(KjhuserVO)session.getAttribute("loginedUserVO"); if(userVO==null){ %>
                            <a href="/signin.jsp"><i class="fa-solid fa-user"></i> 로그인</a>
                            <a href="/signup.jsp"><i class="fa-solid fa-user-plus"></i> 회원가입</a>
                            <% } else{ %>
                              <a href="/kjhuser/userLogout.do"><i class="fa-solid fa-user"></i> 로그아웃</a>
                              <a href="/userinfo.jsp"><i class="fa-solid fa-user-plus"></i> 정보수정</a>
                              <% } %>
                        </div>
                      </div>
                    </div>
                    <div id="header2">
                      <div id="logowrap">
                        <h1>
                          <a href="/index.do"><img src="/image/logo.png" alt="이미지" width="100%" /></a>
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
                                  <!-- <li><a href="/notice.jsp">공지사항</a></li> -->
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
                          <!-- <p id="indextext1">Welcome to 고시원!</p>
            <p id="indextext2">김정현 김보성 김경진 이원희</p>
            <p id="indextext3">여러분들의 방문을 환영합니다</p>
            <div class="slider">
              <ul class="igms">
                <li class="slide02clone">
                  <img src="/image/indexmainimage2.jpg" />
                </li>
                <li class="slide01">
                  <img src="/image/indexmainimage1.jpg" />
                </li>
                <li class="slide02">
                  <img src="/image/indexmainimage2.jpg" />
                </li>
                <li class="slide01clone">
                  <img src="/image/indexmainimage1.jpg" />
                </li>
              </ul>
            </div>
            <div class="btnwrap">
              <input
                type="radio"
                name="slide"
                id="slideBtn1"
                value="1"
                class="slide indexbtn"
                checked
              />
              <input
                type="radio"
                name="slide"
                id="slideBtn2"
                value="2"
                class="slide indexbtn"
              />
            </div> -->
                          <div class="swiper mySwiper">
                            <div class="swiper-wrapper">
                              <div class="swiper-slide">
                                <img src="./image/banner1.jpg" />
                              </div>
                              <div class="swiper-slide">
                                <img src="./image/banner2.jpg" />
                              </div>
                              <div class="swiper-slide">
                                <img src="./image/banner3.jpg" />
                              </div>
                              <div class="swiper-slide">
                                <img src="./image/banner4.jpg" />
                              </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                          </div>
                          <!-- Swiper JS -->
                          <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
                          <style>
                            .swiper-slide img {
                              overflow: hidden;
                              max-width: 1450px;
                              height: 500px;
                            }
                          </style>

                          <!-- Initialize Swiper -->
                          <script>
                            var swiper = new Swiper(".mySwiper", {
                              spaceBetween: 0,

                              autoplay: {
                                delay: 2500,
                                disableOnInteraction: false
                              },
                              effect: "fade",
                              navigation: {
                                nextEl: ".swiper-button-next",
                                prevEl: ".swiper-button-prev",
                              },
                              pagination: {
                                el: ".swiper-pagination",
                                clickable: true,
                              },
                            });
                          </script>
                        </div>

                        <div class="bottomsection">
                          <div class="mblock">
                            <style>
                              .mblock_style_02 {
                                padding: 50px 0 0 0;
                              }

                              .mblock_style_02 ul:after {
                                content: '';
                                display: block;
                                clear: both;
                              }

                              .mblock_style_02 li {
                                float: left;
                                width: 100%;
                                padding: 20px;
                                -webkit-box-sizing: border-box;
                                -moz-box-sizing: border-box;
                                box-sizing: border-box;
                              }

                              .mblock_style_02 li figure {
                                float: left;
                                margin-right: 20px;
                              }

                              .mblock_style_02 li .info h2 {
                                text-transform: uppercase;
                                font-size: 22px;
                                font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                                font-weight: 500;
                                letter-spacing: -1px;
                                margin: 0;
                                padding-bottom: 10px;
                              }

                              .mblock_style_02 li .info h5 {
                                font-size: 16px;
                                color: #fa5c65;
                                font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                                font-weight: 500;
                                letter-spacing: -1px;
                                margin: 0;
                                padding-bottom: 10px;
                              }

                              .mblock_style_02 li .info p {
                                font-size: 13px;
                                color: #777;
                                font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                                font-weight: 400;
                                letter-spacing: -.5px;
                              }

                              .time h2 {
                                text-transform: uppercase;
                                font-size: 22px;
                                font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                                font-weight: 500;
                                letter-spacing: -1px;
                                margin: 0;
                                padding-bottom: 10px;
                              }

                              .ar-table.time_table {
                                background: #f8f8f8;
                              }

                              .ar-table.time_table td {
                                border: 0;
                                padding: 5px;
                                font-size: 14px;
                                font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                                font-weight: 400;
                                letter-spacing: -1px;
                              }

                              @media screen and (min-width: 768px) {
                                .mblock_style_02 li {
                                  width: 33.33%;
                                }
                              }

                              @media screen and (min-width: 1100px) {}
                            </style>

                            <div class="width_wrap">
                              <div class="mblock_style_02">
                                <ul>
                                  <li>
                                    <a href="#">
                                      <figure><img src="img_up/shop_pds/rpa0123/design/img/man1.png"></figure>
                                      <span class="info">
                                        <h2>의료진 소개</h2>
                                        <h5>홍길동 원장</h5>
                                        <p>정신건강의학과 전문의 / 중앙대학교 의과대학 및 동대학원 졸업</p>
                                      </span>
                                    </a>
                                  </li>
                                  <li>
                                    <a href="#">
                                      <figure><img src="img_up/shop_pds/rpa0123/design/img/man2.png"></figure>
                                      <span class="info">
                                        <h2>프로그램 소개</h2>
                                        <h5>미백 프로그램</h5>
                                        <p>한 시간 만에 이뤄지는 아름다운 변화, 블링블링 자신있게 웃을 수 있는 크리스탈 치아미백</p>
                                      </span>
                                    </a>
                                  </li>
                                  <li>
                                    <a href="#">
                                      <figure><img src="img_up/shop_pds/rpa0123/design/img/man3.png"></figure>
                                      <span class="info">
                                        <h2>온라인 예약</h2>
                                        <h5>실시간 예약</h5>
                                        <p>병원 방문 전 온라인 예약을 이용하시면 대기시간 없이 원하는 시간에 진료가 가능합니다.</p>
                                      </span>
                                    </a>
                                  </li>


                                  <!--
            			<li>
            				<div class="time">
            					<h2>진료시간</h2>
            					<table class="ar-table time_table">
            						<tr>
            							<td style="padding-left: 20px;">평일</td>
            							<td class="ar-text-center">AM 10:00 ~ PM 19:00</td>
            						</tr>
            						<tr>
            							<td style="padding-left: 20px;">토요일</td>
            							<td class="ar-text-center">AM 10:00 ~ PM 19:00</td>
            						</tr>
            						<tr>
            							<td style="padding-left: 20px;">점심</td>
            							<td class="ar-text-center">AM 12:00 ~ PM 13:00</td>
            						</tr>
            					</table>
            				</div>
            			</li>
            -->
                                </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                        <style>
                          .article1 .wrapper {
                            border: 1px solid #ccc;
                          }

                          .bottomsection {
                            margin-top: 0;
                            height: auto;
                          }

                          #mainwrap {
                            height: auto;
                          }

                          .block_03 .wrapper {
                            position: relative;
                            height: 100%;
                            margin: 0 auto;
                          }

                          .block_03 .wrapper div {
                            position: absolute;
                            left: 20%;

                          }

                          .block_03 .wrapper .title {
                            left: 27%;
                            top: 12%;
                            text-align: center;

                          }

                          .block_03 .wrapper .title strong {
                            font-size: 30px;
                          }

                          .block_03 .wrapper .title span {
                            font-size: 26px;
                          }

                          .block_03 .wrapper .content {
                            top: 30%;

                          }

                          .map .wrapper {
                            width: 100%;
                            height: 100%;
                          }

                          .map iframe {
                            display: block;
                            height: 100%;
                          }


                          .section {
                            height: auto;
                            margin-bottom: 60px;
                          }
                        </style>
                        <div class="section">
                          <ul class="section1">
                            <script>
                              $(function () {
                                $(".tab_item").not(":first").hide();
                                $(".tab_wrapper .tab").click(function () {
                                  $(".tab_wrapper .tab").removeClass("active").eq($(this).index()).addClass("active");
                                  $(".tab_item").hide().eq($(this).index()).fadeIn()
                                }).eq(0).addClass("active");
                              });
                            </script>
                            <li class="article1 mblock_style_01">
                              <div class="tab_wrapper">
                                <div class="tabs">
                                  <span class="tab" id="notice">공지사항
                                  </span>
                                  <span class="tab " id="qna">온라인 상담</span>
                                  <a href="/kjhgallery/KjhgalleryList.do" class="m_btn"><b>+</b>more</a>
                                </div>
                                <div class="tab_content">
                                  <div class="tab_item">
                                    <style>
                                      .pm-board_list_mnotice ul {
                                        margin: 0;
                                        padding: 0;
                                        list-style: none;
                                      }

                                      .pm-board_list_mnotice li {
                                        font-size: 12px;
                                      }

                                      .pm-board_list_mnotice a {
                                        position: relative;
                                        display: block;
                                        text-decoration: none;
                                        color: #777;
                                        padding: 6px 10px 5px 20px;
                                      }

                                      .pm-board_list_mnotice a:after {
                                        position: absolute;
                                        content: '';
                                        left: 10px;
                                        top: 12px;
                                        width: 3px;
                                        height: 3px;
                                        background: #777
                                      }

                                      .pm-board_list_mnotice dl {
                                        position: relative;
                                        margin: 0;
                                        padding-right: 80px;
                                      }

                                      .pm-board_list_mnotice dl dt {
                                        overflow: hidden;
                                        text-overflow: ellipsis;
                                        white-space: nowrap;
                                      }

                                      .pm-board_list_mnotice dl dd {
                                        position: absolute;
                                        right: 0;
                                        top: 0;
                                        margin: 0;
                                        font-size: 12px;
                                        font-family: Arial;
                                        color: #888;
                                      }

                                      .pm-board_list_mnotice .comment {
                                        font-weight: normal;
                                        color: #888;
                                      }

                                      .pm-board_list_mnotice .empty {
                                        padding: 10px 8px;
                                        font-size: 14px;
                                        color: #666;
                                        text-align: center;
                                      }
                                    </style>

                                    <div class="pm-board_list_mnotice">
                                      <ul>
                                        <c:forEach var="result" items="${resultList}" varStatus="status">
                                          <li style="color: white;">
                                            <a href="/kjhgallery/selectGallery.do?id=${result.id}">
                                              <dl>
                                                <dt>
                                                  ${result.subject}
                                                </dt>
                                                <dd>${result.regdate}</dd>
                                              </dl>
                                            </a>
                                          </li>
                                        </c:forEach>
                                        <style>
                                          .pm-board_list_mnotice li {
                                            width: 100%;

                                          }
                                        </style>
                                      </ul>
                                    </div>
                                  </div>
                                  <div class="tab_item">
                                    <style>
                                      .pm-board_list_bbs_list ul {
                                        margin: 0;
                                        padding: 0;
                                        list-style: none;
                                      }

                                      .pm-board_list_bbs_list li {
                                        font-size: 12px;
                                      }

                                      .pm-board_list_bbs_list a {
                                        position: relative;
                                        display: block;
                                        text-decoration: none;
                                        color: #777;
                                        padding: 6px 10px 5px 20px;
                                      }

                                      .pm-board_list_bbs_list a:after {
                                        position: absolute;
                                        content: '';
                                        left: 10px;
                                        top: 12px;
                                        width: 3px;
                                        height: 3px;
                                        background: #777
                                      }

                                      .pm-board_list_bbs_list dl {
                                        position: relative;
                                        margin: 0;
                                        padding-right: 80px;
                                      }

                                      .pm-board_list_bbs_list dl dt {
                                        overflow: hidden;
                                        text-overflow: ellipsis;
                                        white-space: nowrap;
                                      }

                                      .pm-board_list_bbs_list dl dd {
                                        position: absolute;
                                        right: 0;
                                        top: 0;
                                        margin: 0;
                                        font-size: 12px;
                                        font-family: Arial;
                                        color: #888;
                                      }

                                      .pm-board_list_bbs_list .comment {
                                        font-weight: normal;
                                        color: #888;
                                      }

                                      .pm-board_list_bbs_list .empty {
                                        padding: 10px 8px;
                                        font-size: 14px;
                                        color: #666;
                                        text-align: center;
                                      }
                                    </style>

                                    <div class="pm-board_list_bbs_list">
                                      <ul>
                                        <li>
                                          <a href="bbs_shop/read-3.htm?board_code=qna&idx=157466&cate_sub_idx=0">
                                            <dl>
                                              <dt>
                                                제작 기간은 얼마나 걸리나요? </dt>
                                              <dd>16.08.24</dd>
                                            </dl>
                                          </a>
                                        </li>
                                        <li>
                                          <a href="bbs_shop/read-4.htm?board_code=qna&idx=157467&cate_sub_idx=0">
                                            <dl>
                                              <dt>
                                                디자인 시안에서만 결정하는 경우 중복되는 사이트가 많지 않을까요? </dt>
                                              <dd>16.08.24</dd>
                                            </dl>
                                          </a>
                                        </li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </li>
                            <li class="article1 map">
                              <div class="wrapper">
                                <div class="content map">
                                  <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3232.0977165111262!2d128.61985167599096!3d35.89562237251876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565e1bb3ae69edd%3A0x8aa4f6b999146d66!2z7JiB7KeE7KCE66y464yA7ZWZ6rWQIOuzte2YhOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1683520518502!5m2!1sko!2skr"
                                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                              </div>
                            </li>

                            <li class="article1 block_03">
                              <div class="wrapper">
                                <div class="title">
                                  <strong>THECHAKAN</strong><br><span> 고객센터</span>
                                </div>
                                <div class="content cscenter">
                                  <!--
                              <div class="center_icon">
                              <span class="icon-old-phone"></span>
                              </div>
                              -->
                                  <a href="tel:1500-1234">
                                    <h1>1500-1234</h1>
                                  </a>
                                  <h2>Fax. <span>02-5678-1234</span></h2>
                                  <p>
                                    <span>평일 </span>AM 09:00 ~ PM 06:00<br>
                                    <span>점심시간 </span>PM 12:30 ~ PM 1:30<br>
                                    <!--          <span>야간 </span>월/수/목 PM 6:00 ~ PM:08:00<br>  -->
                                    <span>토, 공휴일 </span>AM 09:00 ~ PM 03:00<br>
                                    <span>일요일 </span>PM 01:00 ~ PM 06:00
                                  </p>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <link href="css-1?family=Fjalla+One|Montserrat" rel="stylesheet">
                    <style>
                      .article1 {
                        height: 380px;
                      }

                      .map iframe {
                        overflow: hidden;
                        width: 100%;
                      }

                      .article1 .map {
                        height: 100%;
                      }


                      .mblock_style_01>div>ul>li {
                        float: left;
                        width: 100%;
                        overflow: hidden;
                        padding: 10px;
                        box-sizing: border-box;
                      }

                      .mblock_style_01>div>ul>li>.wrapper {
                        display: block;
                        background: #fff;
                        box-sizing: border-box;
                        border: 1px solid #ddd;
                      }

                      .mblock_style_01>div>ul>li>.tab_wrapper {
                        display: block;
                        background: #fff;
                        box-sizing: border-box;
                        /*  border: 1px solid #ddd; */
                      }

                      .tab_wrapper {
                        height: 100%;
                      }

                      .tab_wrapper .tabs {
                        position: relative;
                      }

                      .tab_wrapper .tabs:after {
                        content: '';
                        display: block;
                        clear: both;
                      }

                      .tab_wrapper .tabs .tab {
                        display: block;
                        float: left;
                        width: 25%;
                        text-align: center;
                        font-size: 15px;
                        cursor: pointer;
                        padding: 10px 5px;
                        color: #999;
                        font-family: 'Noto Sans', 'Nanum Gothic', sans-serif;
                        font-weight: 500;
                        letter-spacing: -1px;
                        border: 1px solid #ddd;
                        /*border-top:0;*/
                        box-sizing: border-box;
                        background-color: #fff;
                        margin-bottom: -2px;
                        min-width: 92px;
                        border-radius: 5px 5px 0 0;

                      }

                      /*.tab_wrapper .tabs .tab:first-child {border-left:0; }*/
                      .tab_wrapper .tabs .tab:last-child {
                        margin-left: 5px;
                      }

                      .tab_wrapper .tabs .tab.active {
                        color: #194795;
                        border-bottom: 2px solid #fff;
                      }

                      .tab_wrapper .tab_content {
                        padding: 18px 15px;
                        height: 89%;
                        box-sizing: border-box;
                        border: 1px solid #ddd;
                      }


                      /*  **** 추가분 ****   */

                      .tab_wrapper .tabs .m_btn {
                        font-size: 14px;
                        font-family: 'Noto Sans', 'Nanum Gothic', sans-serif;
                        line-height: 1.6em;
                        letter-spacing: -.3px;
                        font-style: normal;
                        color: #666;
                        display: block;
                        position: absolute;
                        bottom: 2px;
                        right: 10px;
                        transition: all .5s;
                        font-weight: 400;
                        opacity: .8;
                      }

                      /*.tab_wrapper .tabs .m_btn i{transition:transform .5s; margin-right:3px; margin-bottom:-1px; display:inline-block; width:13px; height:13px; position:relative;}
                      .tab_wrapper .tabs .m_btn i:after, .tab_wrapper .tabs .m_btn i:before{content:''; display:block; position:absolute; top:3px; width:1px; height:10px; background-color:#666;}
                      .tab_wrapper .tabs .m_btn:hover i{}*/
                      .tab_wrapper .m_btn:hover {
                        color: #1b3776;
                        opacity: 1;
                      }

                      .tab_wrapper .m_btn b {
                        margin-right: 2px;
                        display: inline-block;
                      }



                      .mblock_style_01>div>ul>li .title {
                        padding: 10px 20px;
                        color: #777;
                        font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                        font-weight: 500;
                        letter-spacing: -1px;
                      }

                      .mblock_style_01>div>ul>li .content {
                        padding: 10px 10px;
                        height: 250px;
                        overflow: hidden;
                      }

                      .mblock_style_01>div>ul>li .content.map {
                        /*background:#6C6C6C url(/img_up/shop_pds/rpa0123/design/img/map.jpg) center center no-repeat;*/
                        height: 292px;
                        padding: 0;
                      }

                      .mblock_style_01>div>ul>li .content.map h1 {
                        font-size: 30px;
                        padding: 20px 0 20px 0;
                        text-align: center;
                        color: #fff;
                        font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                        font-weight: 500;
                        letter-spacing: -.5px;
                      }

                      .mblock_style_01>div>ul>li .content.map p {
                        font-size: 16px;
                        text-align: center;
                        color: #fff;
                        font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                        font-weight: 500;
                        letter-spacing: -.5px;
                      }

                      .mblock_style_01>div>ul>li .content.map a {
                        display: block;
                        width: 100%;
                        height: 100%;
                      }

                      .block_03 .cscenter {
                        text-align: center;
                      }

                      .block_03 .cscenter .center_icon span {
                        font-size: 55px;
                        color: #194796;
                        -webkit-transition: .3s ease-out;
                        -o-transform: .3s ease-out;
                        -moz-transform: .3s ease-out;
                        transition: .3s ease-out;
                      }

                      .block_03 .cscenter .center_icon:hover span {
                        color: #FFBB3E;
                      }

                      .block_03 .cscenter h1 {
                        font-size: 30px;
                        color: #ccc;
                        font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                        font-weight: 500;
                        letter-spacing: -.5px;
                        margin-bottom: 10px;
                      }

                      .block_03 .cscenter h2 {
                        font-size: 21px;
                        color: #666;
                        font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                        font-weight: 500;
                        letter-spacing: -.5px;
                        margin-bottom: 20px;
                      }

                      .block_03 .cscenter p {
                        font-size: 14px;
                        color: #999;
                        margin: 0;
                        font-family: 'Noto Sans', NanumGothic, '나눔고딕', 'Open Sans', sans-serif;
                        letter-spacing: -.5px;
                        font-weight: normal;
                        text-align: left;
                        padding: 10px;
                        background-color: #fafafa;
                      }

                      .block_03 .cscenter p>span {
                        display: inline-block;
                        background-color: #194795;
                        color: #fff;
                        padding: 3px 5px;
                        border-radius: 3px;
                        margin-right: 8px;
                        margin-bottom: 5px;
                        min-width: 70px;
                        text-align: center;
                      }

                      .mblock_style_01>div>ul>li>.wrapper {
                        display: block;
                        background: #fff;
                        box-sizing: border-box;
                        border: 1px solid #ddd;
                      }

                      .block_03 .cscenter p>span:last-child {
                        margin-bottom: 0;
                      }

                      @media screen and (min-width: 768px) {
                        .mblock_style_01>div>ul>li {
                          padding-bottom: 0;
                        }

                        .mblock_style_01>div>ul>li {
                          width: 33.33%;
                        }

                        .tab_wrapper .tabs .m_btn {
                          font-size: 12px;
                        }

                      }

                      @media screen and (min-width: 1100px) {
                        .tab_wrapper .tabs .m_btn {
                          font-size: 14px;
                        }

                        .block_01 .txt {
                          padding: 0 40px;
                        }

                        .block_03 .cscenter h1 {
                          font-size: 32px;
                        }

                        .block_03 .cscenter h2 {
                          font-size: 19px;
                        }

                        .block_03 .cscenter p {
                          font-size: 13px;
                        }

                        .tab_wrapper .tabs .tab {
                          padding: 10px 5px;
                        }
                      }
                    </style>
                    <div id="footer">
                      <div class="width_wrap">
                        <!-- ***템플릿 호환가능*** -->
                        <style>
                          .footer_01 {
                            padding: 20px 10px;
                          }

                          .footer_01:after {
                            content: '';
                            display: block;
                            clear: both;
                          }

                          .footer_logo {
                            float: none;
                            padding: 10px 0;
                            text-align: center;
                          }

                          .footer_logo img {
                            height: 40px;
                          }

                          .footer_info {
                            float: none;
                            padding-left: 0;
                            text-align: center;
                          }

                          .address ul {
                            text-align: center;
                          }

                          .address ul li {
                            position: relative;
                            display: inline-block;
                            padding: 0 2px;
                            font-size: 12px;
                            font-family: Arial;
                            color: #999;
                            line-height: 20px;
                            text-align: left;
                          }

                          .sns_wrap {
                            position: relative;
                            margin-top: 30px;
                            text-align: center;
                          }

                          .sns_icon a {
                            font-size: 20px;
                            color: #fff;
                            border-radius: 50%;
                            padding: 7px;
                          }

                          .sns_icon .icon-facebook2 {
                            background: #3b5999;
                          }

                          .sns_icon .icon-twitter2 {
                            background: #00bbf5;
                          }

                          .sns_icon .icon-instagram {
                            /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#ffce65+0,f91b62+51,6b36ee+100 */
                            background: #ffce65;
                            /* Old browsers */
                            background: -moz-linear-gradient(45deg, #ffce65 0%, #f91b62 51%, #6b36ee 100%);
                            /* FF3.6-15 */
                            background: -webkit-linear-gradient(45deg, #ffce65 0%, #f91b62 51%, #6b36ee 100%);
                            /* Chrome10-25,Safari5.1-6 */
                            background: linear-gradient(45deg, #ffce65 0%, #f91b62 51%, #6b36ee 100%);
                            /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffce65', endColorstr='#6b36ee', GradientType=1);
                            /* IE6-9 fallback on horizontal gradient */
                          }

                          @media screen and (min-width: 768px) {}

                          @media screen and (min-width: 1100px) {
                            .footer_01 {
                              padding: 20px 0;
                            }

                            .footer_logo {
                              float: left;
                              padding: 40px 0 0 0;
                            }

                            .footer_info {
                              float: left;
                              text-align: left;
                              padding-left: 50px;
                            }

                            .address ul {
                              text-align: left;
                            }

                            .sns_wrap {
                              position: absolute;
                              right: 0;
                              top: 20px;
                              margin-top: 0;
                            }
                          }

                          #footer {
                            width: 100%;
                            border-top: 1px solid #ccc;
                          }

                          #footer .width_wrap {
                            width: 1100px;
                            margin: 0 auto;
                          }
                        </style>
                        <div class="footer_01">
                          <div class="footer_logo">
                            <a href="main.html"><img src='img_up/shop_pds/rpa0123/site_content/logo11558343491.png'
                                style='vertical-align:middle;border:0;' alt=''></a>
                          </div>
                          <div class="footer_info">


                            <style>
                              .navi_foot {
                                margin-bottom: 20px;
                              }

                              .navi_foot li {
                                display: inline-block;
                                position: relative;
                                padding: 0 10px;
                              }

                              .navi_foot li:first-child {
                                padding: 0 10px 0 0;
                              }

                              .navi_foot li:after {
                                content: '';
                                position: absolute;
                                left: 0;
                                top: 3px;
                                width: 1px;
                                height: 10px;
                                background: #666;
                              }

                              .navi_foot li:first-child:after {
                                display: none;
                              }

                              .navi_foot li a {
                                display: block;
                                color: #999;
                                font-size: 12px;
                              }

                              .navi_foot li a:hover {
                                text-decoration: underline;
                              }
                            </style>
                            <div class="navi_foot">
                              <ul>
                              </ul>
                            </div>
                            <div class="address">
                              <ul>
                                <li>상호 : 대한민국</li>
                                <li>대표자 : 홍길동</li>
                                <li>주소 : 서울특별시 강남구 1번지 </li>

                              </ul>
                              <ul>
                                <li>사업자 등록번호 : 123-02-12345</li>
                                <li>TEL : 1500-1234</li>
                                <li>FAX : 02-5678-1234</li>
                                <li>EMAIL : aaa@aaa.com</li>
                                <li>통신판매 신고번호 : </li>
                              </ul>
                              <ul>
                                <li>Copyright(c) 대한민국. All Rights Reserved.

                                  <!-- 더착한 관리자모드 버튼  -->

                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                  <a href="admin/index.htm"><img
                                      src="img_up/shop_pds/bver/design/button/theck_admin.png" border="0"></a>
                                  <a href="http://www.thechakan.kr" target="_blank"><img
                                      src="img_up/shop_pds/bver/design/button/theck_remote.png" border="0"></a>


                                  <!-- / 더착한 관리자모드 버튼 -->
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 푸터 -->
                  </div>
                  <script type="text/javascript" src="js/all_bottom_script.js"></script>
                </body>

                </html>