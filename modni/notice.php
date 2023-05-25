<?php
/*ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);*/
 
include($_SERVER['DOCUMENT_ROOT'].'/modni/simple_html_dom.php');
//simple_html_dom.php 파일 수정 필요합니다.
//https://mandu-mandu.tistory.com/358
 
 
function naver_cafe_article_parser($page_no){
  //작성자 M4ndU
 
  //카페 url
  //카페 링크 aaaaa처리
  //search.clubid, search.menuid 0 처리
  //하였기 때문에 본인 카페 링크및 게시판 확인하셔서 변경하셔야합니다.
  $url = "https://cafe.naver.com/ArticleList.nhn?search.clubid=29874834&search.menuid=23&search.boardtype=L&search.totalCount=21&search.cafeId=29874834&search.page=".$page_no;
 //https://cafe.naver.com/ArticleRead.nhn?clubid=30524522&page=1&menuid=7&boardtype=L&articleid=3&referrerAllArticles=false
 //https://cafe.naver.com/ArticleList.nhn?search.clubid=29874834&search.menuid=23&search.boardtype=L&search.totalCount=21&search.cafeId=29874834&search.page=1
  $html = file_get_html($url);
 
  $board = $html->find('div[class=article-board m-tcol-c]');
  foreach ($board[1]->find('tr') as $article) {
 
    @$article_title_link = $article->find('a[class=article]')[0];
    @$article_title = $article_title_link->plaintext;
    @$article_link = $article_title_link->href;
    @$article_publisher = $article->find('td[class=p-nick]')[0]->plaintext;
    @$article_date = $article->find('td[class=td_date]')[0]->innertext;
 
    if ($article_title == "") {
      continue;
    }
 
 
    echo "<tr>";
    echo "<td>".$article_title."</td>";
    echo "<td>".$article_publisher."</td>";
    echo "<td>".$article_date."</td>";
    echo "<td> <a href=https://cafe.naver.com".$article_link.">링크</a></td>"; //카페링크 aaaaa처리하였음. 본인이 변경하세요.
    echo "</tr>";
  }
}
?>
<!DOCTYPE html>
<html lang="kr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <table class="table">
        <thead>
            <th>글제목</th>
            <th>작성자</th>
            <th>등록일시</th>
            <th>링크</th>
        </thead>
<?php
for ($i=1; $i<10 ; $i++) { // 파싱할 게시판의 최대 페이지를 고려하세요.
  naver_cafe_article_parser($i);
}
?>
</table>
</body>
</html>