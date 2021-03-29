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
    </style>
  </head>
  
  <body>
    <section class="row">
      <div id="ToG" class="col-4"> 
        <div> MY PAGE </div><br>
        <ul>
          <li><a href="#">Nav1</a></li>
          <li><a href="#">Nav2</a></li>
          <li><a href="#">Nav3</a></li>
          <li><a href="#">Nav4</a></li>
        </ul>
      </div>
      <div id="profileBox" class="col-8">
        <div id="profileBoxComp" class="row">
          <div class="col-8">
          <h4>ID : ABCD</h4>
          <p style="font-size: 10pt;">abcd@gmail.com</p>
          <button type="button" class="btn btn-secondary">Profile Modify</button>
          </div>
          <div id="profileBoxComp_1" class="col-4"><h4>Grade : VIP</h4></div>          
        </div>
        <div id="purchaseBox">
          <h4>구매내역</h4><br>
          <div>
            <table>
              <tr>
                <th>
                  <div class="purchaseStat">
                    <h5>결제완료</h5>
                    <h5>0</h5>
                  </div>
                </th>
                <th>
                  <div class="purchaseStat">
                    <h5>배송완료</h5>
                    <h5>0</h5>
                  </div>  
                </th>
              </tr>
            </table>            
          </div>
        </div><br>
        <table id="purchaseStatTable">
          <tr style="height: 80px; font-size: 14pt;">
            <th style="width: 150px;">날짜</th>
            <th style="width: 200px;">주문번호</th>
            <th style="width: 400px;">상품명</th>
            <th style="width: 100px;">상태</th>
          </tr>
          <!-- 마지막 주문목록이 위부터 내림차순 정렬  -->
          <tr class="purchaseStatTable_raw">
            <td>2021-03-16</td>
            <td><a href="#">ABCD123456789</a></td>
            <td><a href="#">SOMETHING BLAHBLAH</a></td>
            <td>배송중</td>
          </tr>
          <tr class="purchaseStatTable_raw">
            <td>2021-03-15</td>
            <td><a href="#">ABCD123456789</a></td>
            <td><a href="#">SOMETHING BLAHBLAH</a></td>
            <td>배송중</td>
          </tr>
          <tr class="purchaseStatTable_raw">
            <td>2021-03-14</td>
            <td><a href="#">ABCD123456789</a></td>
            <td><a href="#">SOMETHING BLAHBLAH</a></td>
            <td>배송완료</td>
          </tr>
        </table>
      </div>
    </section>
    
  </body>
</html>