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
        padding: 20px; border: 1px solid rgb(43, 43, 43); height: 500px; width: 900px;
        border-radius: 10px;
      }
      #profileBoxComp_table{
        margin-top: 30px;
        margin-left: 15px;
      }
      .profileBoxComp_table_1{
        border-radius: 10px;
        height: 40px;
        width: 140px; 
      }
      .profileBoxComp_table_2 input{
        border: 1px solid rgb(85, 85, 85);
        border-radius: 5px;
      }
      .profileBoxComp_phone{
        width: 60px;
        text-align: center;
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
        <div id="profileBoxComp">
          <form action="" method="post">
          <table id="profileBoxComp_table">
            <tr>
              <td class="profileBoxComp_table_1">아이디</td>
              <td class="profileBoxComp_table_2"><input style="width: 180px; font-weight: bold;" type="text" disabled value="abcd"/></td>
            </tr>
            <tr>
              <td class="profileBoxComp_table_1">패스워드</td>
              <td class="profileBoxComp_table_2"><input type="password" value=""/></td>
            </tr>
            <tr>
              <td class="profileBoxComp_table_1">패스워드 확인</td>
              <td class="profileBoxComp_table_2"><input type="password" value=""/></td>
            </tr>
            <tr>
              <td class="profileBoxComp_table_1">휴대폰</td>
              <td class="profileBoxComp_table_2"><input class="profileBoxComp_phone" type="text" value=""/><b> - </b>
              <input class="profileBoxComp_phone" type="text" value=""/><b> - </b><input class="profileBoxComp_phone" type="text" value=""/>
              </td>
            </tr>
            <tr>
              <td class="profileBoxComp_table_1">E-MAIL</td>
              <td class="profileBoxComp_table_2"><input style="width:100px;" type="text" value=""/>&nbsp;<span style="font-size: 14pt;">@ </span><input type="text" value=""/>
              </td>
            </tr>
            <tr>
              <!-- 다음 API로 대체할수있음 -->
              <td class="profileBoxComp_table_1">주소</td>
              <td class="profileBoxComp_table_2"><input style="width:390px;" type="text" value=""/>
              </td>
            </tr>
            <tr>
              <td class="profileBoxComp_table_1"></td>
              <td class="profileBoxComp_table_2"><input style="width:390px;" type="text" value=""/>
              </td>
            </tr>
          </table>
          <br><br><br>
          <div style="text-align: center;">
            <button type="button" type="submit" class="btn btn-secondary">확인</button>&emsp;
            <button type="button" class="btn btn-dark">취소</button>
          </div>
        </form>
        </div>  
      </div>        
    </section>
  </body>
</html>