
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>CCM 리스트</h1>
<br/><a href="add">Add New Song</a><br/><a href="login/logout">logout</a><br/>

<table id="list" width="90%">
<tr>
    <th>Id</th>
    <th>title</th>
    <th>nickname</th>
    <th>singer</th>
    <th>album</th>
    <th>playtime</th>
    <th>genre</th>
    <th>comment</th>
    <th>regdate</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<c:forEach items="${list}" var="u">
    <tr>
        <td>${u.seq}</td>
        <td>${u.title}</td>
        <td>${u.nickname}</td>
        <td>${u.singer}</td>
        <td>${u.album}</td>
        <td>${u.playtime}</td>
        <td>${u.genre}</td>
        <td>${u.comment}</td>
        <td>${u.regdate}</td>
        <td><a href="editform/${u.seq}">Edit</a></td>
        <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
    </tr>
</c:forEach>
</table>

</body>
</html>
