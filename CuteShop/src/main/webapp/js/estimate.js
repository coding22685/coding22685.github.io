//GC-3A 2101060 김정현
function estimatecheck(){//견적 문의 버튼 누르면 호출
  var ename = document.getElementById('estimatename').value;//이름
  var ephone1 = document.getElementById('estimatephone1').value;//전화1
  var ephone2 = document.getElementById('estimatephone2').value;//전화2
  var email = document.getElementById('estimateemail').value;//이메일
  var econtent = document.getElementById('estimatecontent').value;//내용
  var eagree = document.getElementById('estimateprivacyagree').checked;//동의버튼 체크 여부

  if(ename.length < 1){//이름 썼는지 확인
    alert('이름을 입력하세요');
    document.getElementById('estimatename').focus();
    return false;
  }
  if(ephone1.length < 1){//전화1 썼는지 확인
    alert('핸드폰을 입력하세요');
    document.getElementById('estimatephone1').focus();
    return false;
  }
  if(ephone2.length < 1){//전화2 썼는지 확인
    alert('핸드폰을 입력하세요');
    document.getElementById('estimatephone2').focus();
    return false;
  }
  if(email.length < 1){//이메일 썼는지 확인
    alert('이메일을 입력하세요');
    document.getElementById('estimateemail').focus();
    return false;
  }
  if(econtent.length < 1){//내용 썼는지 확인
  alert('내용을 입력하세요');
    document.getElementById('estimatecontent').focus();
    return false;
  }
  if(eagree != true){//동의버튼 체크했는지 확인
    alert('개인정보 취급 방침에 동의 하셔야 합니다.');
    return false;
  }


  alert('문의내용이 접수되었습니다. 감사합니다.');
  location.href = "./estimate.html";//문의 정상 접수되면 새로고침 용도

}
