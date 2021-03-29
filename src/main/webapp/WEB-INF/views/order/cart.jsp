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
    section > h4{
      padding-left: 60px;
      padding-top: 10px;
    }    
    td{
      padding-left: 100px; 
      padding-top: 50px;
    }
    a:hover{
      text-decoration: none;
    }
    .cart_titles{
      width: 600px;
    }
    .cart_titles > a > h5{
      font-size: 8pt; color: red;
    }
    .cart_btns{
      font-size: 8pt; width: 100px;
    }
    </style>
  </head>
  <body>
    <section>
      <h4>SHOPPING CART</h4>
      <div class="row">
      <form action="" method="POST">
      <table id="A_table">
        <tr>
          <td><div><img class="" src="http://via.placeholder.com/100?text=Sample" alt=""></div></td>
          <td>
            <div class="cart_titles">
              <h5>PRODUCT ID A</h5>
              <h5>$500</h5>
              <a href="javascript:deleteCart('A');"><h5>REMOVE</h5></a>
            </div>
          </td>
          <td>
            <div class="cart_btns">
              <input type="button" value="-" id="minus" onclick="cartVAR.minus('A')">
              <input style="text-align: center;" type="text" size="1" value="1" id="A">
              <input type="button" value="+" id="plus" onclick="cartVAR.plus('A')">
            </div>
          </td>
          <td>
            <input type="text" value="500" id="A_product_price" hidden="hidden"/>
            <input type="text" class="total_price" value="500" id="A_total_price" hidden="hidden" />
            <h5 id="A_total_price_view">$500</h5>
          </td>
        </tr>
      </table>

      <table id="B_table">
        <tr>
          <td><div><img class="" src="http://via.placeholder.com/100?text=Sample" alt=""></div></td>
          <td>
            <div class="cart_titles">
              <h5>PRODUCT ID B</h5>
              <h5>$1000</h5>
              <a href="javascript:deleteCart('B');"><h5>REMOVE</h5></a>
            </div>
          </td>
          <td>
            <div class="cart_btns">
              <input type="button" value="-" id="minus" onclick="cartVAR.minus('B')">
              <input style="text-align: center;" type="text" size="1" value="1" id="B">
              <input type="button" value="+" id="plus" onclick="cartVAR.plus('B')">
            </div>
          </td>
          <td>
            <input type="text" value="1000" id="B_product_price" hidden="hidden"/>
            <input type="text" class="total_price" value="1000" id="B_total_price" hidden="hidden"/>
            <h5 id="B_total_price_view">$1000</h5>
          </td>
        </tr>
      </table>
            
      <table id="C_table">
        <tr>
          <td><div><img class="" src="http://via.placeholder.com/100?text=Sample" alt=""></div></td>
          <td>
            <div class="cart_titles">
              <h5>PRODUCT ID C</h5>
              <h5>$1500</h5>
              <a href="javascript:deleteCart('C');"><h5>REMOVE</h5></a>
            </div>
          </td>
          <td>
            <div class="cart_btns">
              <input type="button" value="-" id="minus" onclick="cartVAR.minus('C')">
              <input style="text-align: center;" type="text" size="1" value="1" id="C">
              <input type="button" value="+" id="minus" onclick="cartVAR.plus('C')">
            </div>
          </td>
          <td>
            <input type="text" value="1500" id="C_product_price" hidden="hidden"/>
            <input type="text" class="total_price" value="1500" id="C_total_price" hidden="hidden"/>
            <h5 id="C_total_price_view">$1500</h5>
          </td>
        </tr>
      </table>
      
      <div class="row">
        <div style="padding: 120px;" class="col-6">
          <label for="">SPECIAL INSTRUCTIONS FOR SELLER</label>
          <textarea style="width: 700px; height: 150px;" class="form-control" aria-label="With textarea"></textarea>
        </div>
        <div style="padding-top: 140px; text-align: right;" class="col-6">
          <h1 id="result" style="margin-left: 140px;">$10000</h1><br>
          <button style="width: 180px; height: 60px; margin-left: 100px;" type="submit" class="btn btn-danger">CHECK OUT</button>
        </div>
      </div>
    </div>
    </form>
    </section>      
  </body>
  <script>

  var cartVAR = {
    product_price : null,
    total_price : null,
    total_price_view : null,
    deleteTargetTable : null,
    convert : function (arg) {
      this.product_price = arg + "_product_price";      
      this.total_price = arg + "_total_price";
      this.total_price_view = arg + "_total_price_view";
    },
    plus : function (arg) {      
      this.convert(arg);
      var count = document.getElementById(arg).value;
      count++;
      document.getElementById(arg).value = count;
      document.getElementById(cartVAR.total_price).value = document.getElementById(cartVAR.product_price).value * count;
      document.getElementById(cartVAR.total_price_view).innerText = '$'+document.getElementById(cartVAR.total_price).value;
      updateCart();
    },
    minus : function (arg) {    
      this.convert(arg);
      var count = document.getElementById(arg).value;
      if (count > 1) {
      count--;
      document.getElementById(arg).value = count;
      document.getElementById(cartVAR.total_price).value = document.getElementById(cartVAR.product_price).value * count;
      document.getElementById(cartVAR.total_price_view).innerText = '$'+document.getElementById(cartVAR.total_price).value; 
      }
      updateCart();
    }
  }
  
  function deleteCart(arg){
    cartVAR.deleteTargetTable = arg+"_table";      
    var target = document.getElementById(cartVAR.deleteTargetTable);    
    target.parentNode.removeChild(target);
    updateCart();
  }

  
  function updateCart(){
    var result = 0;
    var cartTables = document.getElementsByClassName('total_price');
    
    if(cartTables[0] != null){
    for(var i=0; i<cartTables.length; i++){
      result += parseInt(cartTables[i].value);
    }    
    document.getElementById('result').innerText = "$"+result;
    }else{
      // 장바구니 없는 페이지로 이동
      alert('장바구니가 비었습니다.');
      document.location.replace('http://www.google.com');
    }    
  }
  window.onload = () => {    
    updateCart();    
  }
  </script>
</html>