function setList() {

    console.log(members);
    // console.log(JSON.stringify(members));
    // localStorage.setItem('members', JSON.stringify(members));

    // table 의 tbody 캐스팅
    var list = $('#list');

    var tbody = '<tr>';
    tbody += '  <th>순번(index)</th>';
    tbody += '  <th>아이디</th>';
    tbody += '  <th>비밀번호</th>';
    tbody += '  <th>이름</th>';
    tbody += '  <th>생일</th>';
    tbody += '  <th>성별</th>';
    tbody += '  <th>이메일</th>';
    tbody += '  <th>번호</th>';
    tbody += '  <th>관리</th>';
    tbody += '</tr>';

    if (members.length < 1) {

        tbody += '<tr>';
        tbody += '<td colspan="5">데이터가 존재하지않습니다.</td>';
        tbody += '</tr>';


    } else {

        for (var i = 0; i < members.length; i++) {
            tbody += '<tr>';
            tbody += '  <td>' + i + '</td>';
            tbody += '  <td>' + members[i].userid + '</td>';
            tbody += '  <td>' + members[i].pw + '</td>';
            tbody += '  <td>' + members[i].username + '</td>';
            tbody += '  <td>' + members[i].birth + '</td>';
            tbody += '  <td>' + members[i].gender + '</td>';
            tbody += '  <td>' + members[i].email + '</td>';
            tbody += '  <td>' + members[i].phoneNum + '</td>';
            tbody += '  <td> <a href="javascript:deleteMember(' + i + ')">삭제</a></td>';
            tbody += '</tr>';
        }
    }
    list.html(tbody);
}

function deleteMember(index) {


    if (confirm('삭제하시겠습니까?')) {
        members.splice(index, 1);
        alert('삭제되었습니다.');

        // 저장
        localStorage.setItem('members', JSON.stringify(members));

        // 테이블 리스트를 갱신
        setList();
    }

}


