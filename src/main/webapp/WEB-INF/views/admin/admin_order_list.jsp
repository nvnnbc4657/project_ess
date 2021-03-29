<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <title>title</title>
    <style>
    *{
    	margin:0 auto;
    }
      a {color: black; text-decoration: none; outline: none}
      a:hover, a:active {text-decoration: none; color:black; background-color:none;}
      #ToG > div{
        padding-top: 100px;
        padding-left: 100px;
        font-size: 35pt;        
      }
      #ToG ul{
        padding-left: 100px;        
        list-style: none;
      }
      #ToG li{
        margin: 10px;        
      }
      #profileBox{
        padding-top: 100px;        
      }
      #profileBoxComp{
        padding: 20px; border: 1px solid rgb(43, 43, 43); height: 160px; width: 900px;
        border-radius: 10px;
      }
      #profileBoxComp_1{
        padding-top: 38px;
        text-align: center;  
      }
      #ListSelect label{
        margin: 0px 21px;
      }
      #ListSelect select{
        width: 115px;
      }
      #LoG{
        margin-left: 80px;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
      }
      .items{
        margin: 15px;
      }
      .items h5{
        text-align: center;
      }
      #purchaseBox{
        margin-top: 50px;
        display: flex;
        flex-direction: column;
      }
      .purchaseStat{
        color: #2A263B;
        padding-top: 30px;        
        width: 436px;
        height: 120px;
        border-radius: 7px;       
        border: 0.1em solid rgb(52, 58, 64);
        text-align: center;
      }
      #purchaseStatTable{
        margin-top: 50px;
        text-align: center;
      }
      .purchaseStatTable_raw{
        height: 40px;
      }
      #page
      {
      padding: 10px;
      margin-bottom: 20px;
      }
    </style>
  </head>
  
  <body>
    <section class="row">
      <div id="ToG" class="col-2"> 
        <div> 관리자 페이지 </div><br>
        <ul>
          <li><a href="#">회원 목록</a></li>
          <li><a href="#">상품 목록</a></li>
          <li><a href="#">상품 등록</a></li>
          <li><a href="#">주문 목록</a></li>
        </ul>
      </div>
      <div id="profileBox" class="col-10">
        <div id="purchaseBox">
          <h3>주문 목록</h3>
          <br>
        </div>
        <br>
        <hr>
        <div>
        	<div class="btn-group" role="group">
        		<a href="#" class="btn btn-outline-primary">주문 확인</a>
        		<a href="#" class="btn btn-outline-primary">입금 확인</a>
        		<a href="#" class="btn btn-outline-primary">배송중</a>
        		<a href="#" class="btn btn-outline-primary">배송 완료</a>
        	</div>
        </div>
        <br>
			<form>
				<table id="purchaseStatTable">
					<tr style="height: 80px; font-size: 14pt;">
						<th style="width: 150px;">번호</th>
						<th style="width: 200px;">주문번호</th>
						<th style="width: 400px;">주문자(아이디)</th>
						<th style="width: 100px;">상태</th>
					</tr>
					<hr>
					<!-- 마지막 주문목록이 위부터 내림차순 정렬  -->
					<tr class="purchaseStatTable_raw">
						<td><label><input type="checkbox" name="order"
								value="1">1</label></td>
						<td>123456789123456</td>
						<td>test123</td>
						<td>배송중</td>
					</tr>
					<tr class="purchaseStatTable_raw">
						<td><label><input type="checkbox" name="order"
								value="1">1</label></td>
						<td>123456789123456</td>
						<td>test123</td>
						<td>배송중</td>
					</tr>
					<tr class="purchaseStatTable_raw">
						<td><label><input type="checkbox" name="order"
								value="1">1</label></td>
						<td>123456789123456</td>
						<td>test123</td>
						<td>배송중</td>
					</tr>
					<tr class="purchaseStatTable_raw">
						<td><label><input type="checkbox" name="order"
								value="1">1</label></td>
						<td>123456789123456</td>
						<td>test123</td>
						<td>배송중</td>
					</tr>
				</table>
				<br>
				<hr>
				<div class="col-6">
					<select name="type">
						<option value="0">주문 확인</option>
						<option value="1">입금 확인</option>
						<option value="2">배송중</option>
						<option value="3">배송 완료</option>
					</select> <input type="submit" class="btn btn-primary" value="이동"
						name="submit">
				</div>
			</form>
			<hr>
        <div class="col-3" id="page">
        	<h3>페이징 버튼 영역</h3>
        </div>
        
        <div class="col-3" >
	      	<form action="#" class="form-inline">
	      		<input type="text" class="form-control" placeholder="아이디">
	      		<input type="submit" class="btn btn-secondary" value="검색">
	      	</form>
      </div>
        
      </div>
    </section>
    
  </body>
</html>