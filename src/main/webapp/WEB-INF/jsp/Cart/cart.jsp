<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Grayscale - Start Bootstrap Theme</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesh0eet" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="http://localhost:8080/iSpanCar/script/css/styles.css" rel="stylesheet" />
    <script src="http://localhost:8080/iSpanCar/script/vendor/jquery/jquery.min.js"></script>
    <script src="http://localhost:8080/iSpanCar/script/js/navhtml.js"></script>
    <script src="http://localhost:8080/iSpanCar/script/js/footerhtml.js"></script>
    <link href="http://localhost:8080/iSpanCar/script/css/cartClient.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@900&display=swap" rel="stylesheet">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body id="page-top">
<c:set value="${LoginOK}" var="login" />
<c:set value="${login.memberPosition.permissionsofposition}" var="memberPosition" />
<input type="hidden" value="${login.accountnumber}" id="logincheck">
<input type="hidden" value="${login.memberName}" id="loginName">

    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav"></nav>
    <header class="masthead2">
                <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                    <div class="d-flex justify-content-center">
                        <div class="text-center">
                            <h2 class="mx-auto my-0 text-uppercase"
                                style="color:white;font-size:6em;font-family: 'Noto Sans TC', sans-serif;">?????????</h2>
                            <!--                     <h2 class=" mx-auto mt-2 mb-5" style="color:white;font-size:2em;font-family:DFKai-SB;font-family: 'Noto Sans TC', sans-serif;">????????????</h2> -->
                        </div>
                    </div>
                </div>
            </header>
    
<!--     content -->
    <div class="bg-black" id="content">
	   <div class="row rounded">
		   <div class="col-1"></div>
			   <div class="col-10 bg-white justify-content-center text-center rounded">
			       <div style="text-align: center; padding: 50px 200px;">
			     	
		  <div class="progress-text" style="position: relative; height: 30px;">
  <div style="position: absolute; left: 16.6%;">????????????</div>
  <div style="position: absolute; left: 49.6%;">????????????</div>
  <div style="position: absolute; left: 82.6%;">????????????</div>
</div>
        <div class="progress" style="margin-bottom: 30px;">
          <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 33%"></div>
        </div>
     
	<table class=table>
			<thead >
				<tr class=head>
					<td>????????????</td>
					<td></td>
					<td>??????</td>	
					<td>??????</td>
					<td>??????</td>
					<td>??????</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cart" varStatus="statusX" items="${AllCartById}">
					
								<tr>
									<td><c:out value="${shopDetailMap[Integer.valueOf(cart.productNumber)].productname}" /></td>
									<td><img src="productimgfront.controller?productno=${shopDetailMap[Integer.valueOf(cart.productNumber)].productno}"width="180" height="180" /></td>
									<td  name="price" ><c:out value="${shopDetailMap[Integer.valueOf(cart.productNumber)].price}" /></td>
									<td><input type="hidden" style="display: none" name="cartId"value="${cart.cartId}">
									<input name="quantity" type="number" id="quantity" value="${cart.quantity}" style="width:50px;">
									</td>								
										
										<td name="TotalPrice">
										
										</td>
									<td>
									<form action="<c:url value='/cartdeletecart.controller'/>"
										method="POST" enctype="multipart/form-data">
										<input type="hidden" style="display: none"  class="cartId"
											value="${cart.cartId}">
										<button type="button" class="btn2"
											style="border-radius: 80%; width: 40px; height: 40px" >
											<i class="fa-sharp fa-solid fa-trash-can fa-lg"></i>
										</button></form></td>
									
									</c:forEach>
									<tr><td></td><td></td><td></td><td></td><td>????????????</td><td name="sumTotal"></td></tr>
									
			</tbody>
		</table>
		<a id="back" href="http://localhost:8080/iSpancarShop.Shop_Cart.controller"><i class="fa-solid fa-backward"></i>????????????</a>
<button id="checkout" type="button" onclick="window.location.href='/CartCheckout'">
  <i class="fa-solid fa-forward"></i>????????????
</button>	</div>
			   </div>
		   <div class="col-1"></div>
	   </div>
	 </div>

<!-- 	footer -->	
	<div id="footertext"></div>
	
	
    <script src="http://localhost:8080/iSpanCar/script/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!--     <script src="http://localhost:8080/iSpanCar/script/js/scripts.js"></script> -->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>




<script>
    window.onload = function() {
        //????????????????????????
        var quantities = document.getElementsByName("quantity");
        for (var i = 0; i < quantities.length; i++) {
            //????????????????????????
            updateTotalPrice(quantities[i]);
            quantities[i].addEventListener("input", function() {
                //???????????????
                updateTotalPrice(this);
            });
        }
    };
    
    
    function updateTotalPrice(quantityInput) {
    // ????????????????????????
    var price = parseFloat(quantityInput.parentNode.previousElementSibling.innerText);
    // ????????????????????????
    var quantity = parseInt(quantityInput.value);
    // ????????????????????????1
    if (quantity < 1) {
        quantity = 1;
        quantityInput.value = 1;
    }
    // ???????????????????????????
    var totalPrice = price * quantity;
    // ???????????????????????????
    quantityInput.parentNode.nextElementSibling.innerText = totalPrice.toLocaleString();

    var totalPrices = document.getElementsByName("TotalPrice");
    var sum = 0;
    for (var i = 0; i < totalPrices.length; i++) {
        sum += parseFloat(totalPrices[i].innerText.replace(/,/g,''));
    }
    document.getElementsByName("sumTotal")[0].innerText = sum.toLocaleString();
}
    
    $("input[name='quantity']").on("change", function() {
        var $quantityInput = $(this);
        var quantity = $quantityInput.val();
        var $cartIdInput = $quantityInput.siblings("input[name='cartId']");
        var cartId = $cartIdInput.length ? $cartIdInput.val() : "";
        $.ajax({
            url: "/cartInsert",
            type: "POST",
            data: {
                quantity: quantity,
                cartId: cartId
            },
            success: function(result) {
                console.log("Successfully updated quantity in the database.");
            }
        });
    });
 
    $(document).ready(function() {
    	$(".btn2").click(function() {
    	Swal.fire({
    	title: '?????????????',
    	text: "??????????????????",
    	icon: 'warning',
    	showCancelButton: true,
    	confirmButtonColor: '#3085d6',
    	cancelButtonColor: '#d33',
    	confirmButtonText: '??????',
    	cancelButtonText: '??????'
    	}).then((result) => {
    	if (result.isConfirmed) {
    	var btn = $(this);
    	var cartId = $(this).closest("tr").find("input[class='cartId']").val();
    	$.ajax({
    	    type: "POST",
    	    url: "/cartdeletecart.controller",
    	    data: {
    	    cartId: cartId
    	    },
    	    success: function(response) {
    	        Swal.fire({
    	            title: '?????????!',
    	            text: 'Your file has been deleted.',
    	            icon: 'success'
    	        }).then(function() {
    	            btn.closest("tr").remove();
    	            updateTotalPrice();
    	        });
    	    },
    	   
    	});
    	
    	
    	}
    	});
    	});
    	function updateTotalPrice() {
    	    //??????????????????????????????
    	    var totalPrices = document.getElementsByName("TotalPrice");
    	    var sum = 0;
    	    //????????????????????????
    	    for (var i = 0; i < totalPrices.length; i++) {
    	        sum += parseFloat(totalPrices[i].innerText.replace(/,/g,''));
    	    }
    	    //????????????????????????
    	    document.getElementsByName("sumTotal")[0].innerText = sum.toLocaleString();
    	}
    });



</script>

</body>

</html>