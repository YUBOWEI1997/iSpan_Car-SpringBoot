<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<style>
.resellernonreseller {
	font-size: 28px;
	color: black;
}
</style>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Grayscale - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesh0eet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="http://localhost:8080/iSpanCar/script/css/styles.css"
	rel="stylesheet" />
<script
	src="http://localhost:8080/iSpanCar/script/vendor/jquery/jquery.min.js"></script>
<script src="http://localhost:8080/iSpanCar/script/js/navhtml.js"></script>
<script src="http://localhost:8080/iSpanCar/script/js/footerhtml.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@900&display=swap" rel="stylesheet">

</head>

<body id="page-top">
	<!-- Navigation-->
	<c:set value="${LoginOK}" var="login" />
            <c:set value="${login.memberPosition.permissionsofposition}" var="memberPosition" />
            <input type="hidden" value="${login.accountnumber}" id="logincheck">
			<input type="hidden" value="${login.memberName}" id="loginName">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            </nav>

            <header class="masthead2">
                <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                    <div class="d-flex justify-content-center">
                        <div class="text-center">
                            <h2 class="mx-auto my-0 text-uppercase"
                                style="color:white;font-size:6em;font-family: 'Noto Sans TC', sans-serif;">???????????????</h2>
                            <!--                     <h2 class=" mx-auto mt-2 mb-5" style="color:white;font-size:2em;font-family:DFKai-SB;font-family: 'Noto Sans TC', sans-serif;">????????????</h2> -->
                        </div>
                    </div>
                </div>
            </header>

	<!--     content -->
	<div class="bg-black" id="content">
		<div class="row rounded"
			style=" display: flex; justify-content: center;">
			<div class="col-10 bg-white text-center rounded">
				<div style="text-align: left;">
					<br>
				</div>
				<div class="container">
					<br>
					<div class="row justify-content-center">
						<form id="signin" action="" method="POST"
							enctype="multipart/form-data">
<%-- 	<c:set var="addservicename"> --%>
				<!-- <label for="ordername" class="form-label" >??????????????????</label>
   <input class="form-control" id="servicename" name="servicename"> <br> -->
  							<label for="servicename" class="form-label" >??????????????????</label>
   <input class="form-control" id="servicename" name="servicename" value ="${serviceName}" readonly>
							<label for="ordername" class="form-label" >???????????????</label>
   <input class="form-control" id="ordername" name="ordername"> <br>
							  <label for="orderemail" class="form-label">?????????????????????</label><input type="email" id="orderemail" class="form-control" name="orderemail" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" aria-describedby="emailHelp" required>
							   <div id="emailHelp" class="form-text">???????????????????????????:@gmail.com,@yahoo.com???</div>
<br><label for="orderphonenumber" class="form-label">???????????????</label><input type="text" name="orderphonenumber" id="orderphonenumber" class="form-control" pattern="09\d{8}"aria-describedby="phonehelp" required><div id="phonehelp" class="form-text">???????????????????????????:09XXXXXXXX</div><br>  <label for="orderdate" class="form-label">???????????????</label><input
								type="date"class="form-control" id="orderdate" name="orderdate"
								min="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())%>">
							<br><%@ page import="java.util.*"%>
							<%@ page import="java.text.*"%>

							<label for="ordertime" class="form-label">???????????????</label> <input type="time" id="ordertime" class="form-control"name="ordertime"><br>

							<label>???????????????</label> <select class="form-select" aria-label="Default select example" name="orderproduct" id="orderproduct">

								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="??????">??????</option>
							</select><br><label for="orderremarks" class="form-label">?????????</label><br><textarea class="form-control" id="orderremarks" name="orderremarks" rows="6" cols="40" required></textarea>
							<br><input type="submit"class="btn btn-info" value="??????????????????????????????" 
								formaction="/orderserviceclientInsert.controller"><br><br>
							<input type ="button"class="btn btn-info" onclick="history.go(-1)" value="???????????????"></input>
							
							<input type="button" value="????????????" id="inputForm" class="btn btn-info"></input>

<%-- </c:set> --%>
						</form>
						
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
	<div class="col-1"></div>

	<!--  footer -->
	<div id="footertext"></div>

<script src="http://localhost:8080/iSpanCar/script/js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!--     <script src="http://localhost:8080/iSpanCar/script/js/scripts.js"></script> -->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script>
	$('#inputForm').on('click', function(){
		$('#ordername').val('?????????')
		$('#orderemail').val('a0926855118@gmail.com')
		$('#orderphonenumber').val('0926855118')
		$('#orderdate').val('2023-02-21')
		$('#ordertime').val('17:30')
		$('#orderproduct').val('????????????')
		$('#orderremarks').val('?????????????????????F1A5 ??????:235/35/19?????? ?????????GOLF')
		
	})
	</script>
</body>

</html>