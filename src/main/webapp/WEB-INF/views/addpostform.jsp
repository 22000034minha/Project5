
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CCM 등록</title>
</head>
<body>
<form action="addok" method="post">
  <table id="edit">
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>닉네임</td><td><input type="text" name="nickname"/></td></tr>
    <tr><td>가수</td><td><input type="text" name="singer"/></td></tr>
    <tr><td>앨범</td><td><input type="text" name="album"/></td></tr>
    <tr><td>재생시간</td><td>
      <input type="radio" name="playtime" value="1분 미만" checked>1분 미만
      <input type="radio" name="playtime" value="1~2분">1~2분
      <input type="radio" name="playtime" value="2~3분">2~3분
      <input type="radio" name="playtime" value="3분 이상"/>3분 이상</td></tr>
    <tr><td>장르</td><td>
      <input type="checkbox" id="hobby1" name="genre" value="잔잔한">잔잔한
      <input type="checkbox" id="hobby2" name="genre" value="신나는">신나는
      <input type="checkbox" id="hobby3" name="genre" value="피아노"/>피아노</td></tr>
    <tr><td>내용</td><td><textarea cols="50" rows="5" name="comment"></textarea></td></tr>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type="submit">등록하기</button>
</form>

</body>
</html>
