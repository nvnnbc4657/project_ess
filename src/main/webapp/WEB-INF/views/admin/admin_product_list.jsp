<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<title>title</title>
<style>
* {
	margin: 0 auto;
}

a {
	color: black;
	text-decoration: none;
	outline: none
}

a:hover, a:active {
	text-decoration: none;
	color: black;
	background-color: none;
}

#ToG>div {
	padding-top: 100px;
	padding-left: 100px;
	font-size: 35pt;
}

#ToG ul {
	padding-left: 100px;
	list-style: none;
}

#ToG li {
	margin: 10px;
}

#profileBox {
	padding-top: 100px;
}

#profileBoxComp {
	padding: 20px;
	border: 1px solid rgb(43, 43, 43);
	height: 160px;
	width: 900px;
	border-radius: 10px;
}

#profileBoxComp_1 {
	padding-top: 38px;
	text-align: center;
}

#ListSelect label {
	margin: 0px 21px;
}

#ListSelect select {
	width: 115px;
}

#LoG {
	margin-left: 80px;
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
}

.items {
	margin: 15px;
}

.items h5 {
	text-align: center;
}

#purchaseBox {
	margin-top: 50px;
	display: flex;
	flex-direction: column;
}

.purchaseStat {
	color: #2A263B;
	padding-top: 30px;
	width: 436px;
	height: 120px;
	border-radius: 7px;
	border: 0.1em solid rgb(52, 58, 64);
	text-align: center;
}

#purchaseStatTable {
	margin-top: 50px;
	text-align: center;
}

.purchaseStatTable_raw {
	height: 40px;
}

#page {
	padding: 10px;
	margin-bottom: 20px;
}
</style>
</head>

<body>
	<section class="row">
		<div id="ToG" class="col-2">
			<div>관리자 페이지</div>
			<br>
			<ul>
				<li><a href="admin_member_list">회원 목록</a></li>
				<li><a href="admin_product_list">상품 목록</a></li>
				<li><a href="admin_product_add">상품 등록</a></li>
				<li><a href="admin_order_list">주문 목록</a></li>
			</ul>
		</div>
		<div id="profileBox" class="col-10">
			<div id="purchaseBox">
				<h3>상품 목록</h3>
				<br>
			</div>
			<br>
			<table id="purchaseStatTable">
				<tr style="height: 80px; font-size: 14pt;">
					<th style="width: 150px;"></th>
					<th style="width: 200px;">상품명</th>
					<th style="width: 400px;">상품코드</th>
					<th style="width: 100px;"></th>
				</tr>
				<hr>
				<c:forEach var="dto" items="${ list }">
					<tr class="purchaseStatTable_raw">
						<td><img src="${dto.prd_img1 }"
							alt="상품 이미지"></td>
						<td>${dto.prd_name}</td>
						<td>${dto.prd_no }</td>
						<td><button type="button" class="btn btn-secondary">수정</button></td>
					</tr>
				</c:forEach>
			</table>
			<hr>
			<div class="col-3" id="page">
				<h3>페이징 버튼 영역</h3>
			</div>

			<div class="col-3">
				<form action="#" class="form-inline">
					<input type="text" class="form-control" placeholder="상품 코드">
					<input type="submit" class="btn btn-secondary" value="검색">
				</form>
			</div>

		</div>
	</section>

</body>
</html>