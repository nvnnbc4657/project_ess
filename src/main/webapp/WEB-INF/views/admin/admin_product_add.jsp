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
      td{
      	padding: 10px;
      }
      #btn_con{
      	margin: 20px;
      	margin-left: 300px;
      	display:inline;
      }
      #btn_con > input{
      	margin: 10px;
      }
    </style>
  </head>
  
  <body>
    <section class="row">
      <div id="ToG" class="col-2"> 
        <div> ????????? ????????? </div><br>
        <ul>
          <li><a href="admin_member_list">?????? ??????</a></li>
          <li><a href="admin_product_list">?????? ??????</a></li>
          <li><a href="admin_product_add">?????? ??????</a></li>
          <li><a href="admin_order_list">?????? ??????</a></li>
        </ul>
      </div>
      <div id="profileBox" class="col-10">
        <div id="purchaseBox">
          <h3>?????? ??????</h3>
          <br>
        </div>
        <hr>
        
		<div class="col-6">
			<form method = "post">
				<table>
					<tr>
						<td>
							<label>?????????</label>
						</td>
						<td>
							<input type="text" name="prd_name">
						</td>
					</tr>
					<tr>
						<td>
							<label>?????? ??????</label>
						</td>
						<td>
							<input type="number" name="prd_price">
						</td>
					</tr>
					<tr>
						<td>
							<label>?????? ??????</label>
						</td>
						<td>
							<select name="prd_type">
								<option value="" selected disabled hidden>???????????????</option>
								<option value="0">?????????</option>
								<option value="1">?????????</option>
								<option value="2">?????????</option>
								<option value="3">????????????</option>
								<option value="4">ESS+</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<label>?????? ???</label>
						</td>
						<td>
							<select name="prd_team">
								<option value="" selected disabled hidden>???????????????</option>
								<option value="0">DK</option>
								<option value="1">GEN.G</option>
								<option value="2">SK T1</option>
								<option value="3">DRX</option>
								<option value="4">HLE</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td>
							<label>?????? 1</label>
						</td>
						<td>
							<input type="file" accept="image/png, image/jpeg" name="prd_img1">
						</td>
					</tr>
					<tr>
						<td>
							<label>?????? 2</label>
						</td>
						<td>
							<input type="file" accept="image/png, image/jpeg" name="prd_img2">
						</td>
					</tr>
					<tr>
						<td>
							<label>?????? 3</label>
						</td>
						<td>
							<input type="file" accept="image/png, image/jpeg" name="prd_img3">
						</td>
					</tr>
					
				</table>
				<div class="col-2" id="btn_con">
					<input type="submit" class="btn btn-primary" value="??????" formaction="admin_product_add">
				</div>
			</form>
		</div>

      </div>
    </section>
    
  </body>
</html>