<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/css/index_work.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script> --%>
</head>
<body>
	<a href="toAdd">添加</a>
	<table>
		<tr>
			<th>编号</th>
			<th>商品名称</th>
			<th>价格</th>
			<th>总量</th>
			<th>售出</th>
		</tr>
		<c:forEach items="${goodsList }" var="goods">
			<tr>
				<td>${goods.gid }</td>
				<td>${goods.gname }</td>
				<td>${goods.price }</td>
				<td>${goods.gcount }</td>
				<td>${goods.saleCount }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>