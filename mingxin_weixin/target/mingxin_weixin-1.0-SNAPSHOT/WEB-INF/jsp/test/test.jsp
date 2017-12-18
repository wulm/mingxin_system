<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017\12\15 0015
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>测试页面</title>
</head>
<body>
<table>
   <tbody>
   <th>1</th>
   <th>2</th>
   <th>3</th>
   <th>4</th>
   <th>5</th>
   </tbody>
<c:forEach var="data" items="${pageInfo.list }" >
   <tr class="text-c">
      <td><input class="selectOne" type="checkbox" name="${data.user_id}"></td>
      <td>01</td>
      <td>${data.user_name}</td>
      <td>${data.weixin_nikeName}</td>
      <td class="text-shadow">${data.user_age}</td>
      <td>${data.subscribe_time}</td>
      <td><a href="list-detail.html"> <button type="button" class="btn btn-warning radius ">点击查看</button></a></td>
   </tr>
</c:forEach>
</table>
</body>
</html>
