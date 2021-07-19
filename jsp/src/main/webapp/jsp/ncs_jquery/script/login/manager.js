
// 회원의 정보를 저장하는 배열
var members = []; // new Array()

// 사용자 입력한 정보를 가지고 Member객체를 생성

// submit  이벤트 연결
$(document).ready(function() {
        //localStorage 저장된 데이터가 있는지 확인
        // localStorage.getItem('members') 없으면 null 반환
        if (localStorage.getItem('members') == null) {
            // 배열 members 를 저장
            localStorage.setItem('members', JSON.stringify(members));
        } else {
            members = JSON.parse(localStorage.getItem('members')); // JSON 문자열 -> 객체로 변환
            console.log(members);
            // 테이블 세팅
        }
    let id = $('#loginID');
    let pw = $('#loginPW');
    let temp = false;
    // regForm 캐스팅
    $('#loginForm').submit(function () {
        temp = false;
        for (let i = 0; i < members.length; i++) {
            if (members[i].userid === id.val()){
                if (members[i].pw === pw.val()){
                    alert('로그인 성공');
                    temp = true;
                }
            }
        }
        if (temp == false){
            alert('로그인 실패')
        }

        return false;
    });
});



