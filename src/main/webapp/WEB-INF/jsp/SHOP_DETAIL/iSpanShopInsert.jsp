<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<title>新增產品資料</title>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



			<!-- Custom fonts for this template-->
			<link href="http://localhost:8080/iSpanCar/script/vendor/fontawesome-free/css/all.min.css"
				rel="stylesheet" type="text/css">
			<link
				href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
				rel="stylesheet">

			<!-- Custom styles for this template-->
			<link href="http://localhost:8080/iSpanCar/script/css/sb-admin-2.min.css" rel="stylesheet">
			<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
			<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
			<link rel="stylesheet" href="/resources/demos/style.css">
<style>
.sendbtn{
border:0;
background-color:#2db5c2;
color:#fff;
border-radius:10px;
height:30px;
width:80px;
opacity:1;
}
.sendbtn:hover{
opacity:0.6;
}
.imgbtn{
border:0;
background-color:#2db5c2;
color:#fff;
border-radius:10px;
height:30px;
width:80px;
opacity:1;
}
.imgbtn:hover{
opacity:0.6;
}
.backshopbtn{
border:0;
background-color:#2db5c2;
color:#fff;
border-radius:8px;
height:40px;
width:122px;
opacity:1;
}
.backshopbtn:hover{
opacity:0.6;
}
</style>
		</head>

		<body id="page-top">
<c:set value="${LoginOK}" var="login"/>
			<!-- Page Wrapper -->
			<div id="wrapper">

				<!-- Sidebar -->
				<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion bg-gradient-info"
					id="accordionSidebar">

					<!-- Sidebar - Brand 左上標誌 -->
					<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/index">
						<div class="sidebar-brand-icon rotate-n-15">
							<i class="fa-solid fa-car-rear"></i>
						</div>
						<div class="sidebar-brand-text mx-3">
							資車會<sup></sup>
						</div>
					</a>

					<!-- Divider -->
					<hr class="sidebar-divider my-0">

					<!-- Nav Item - Dashboard -->
					<li class="nav-item"><a class="nav-link" href="/backstage/memberchartjs">
							<i class="fas fa-fw fa-tachometer-alt"></i> <span>統計圖表</span>
						</a></li>

					<!-- Divider -->
					<hr class="sidebar-divider">

					<!-- Heading -->
					<div class="sidebar-heading">功能列表</div>

					<!-- Nav Item - Pages Collapse Menu -->
					<!-- <li class="nav-item active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>會員</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div>
            </li> -->
					<li class="nav-item">
                <a class="nav-link" href="memberselectall.controller">
                    <i class="fa-solid fa-user"></i>
                    <span>會員</span></a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item"><a class="nav-link" href="findAllDealer.controller">
							<i class="fa-solid fa-car"></i> <span>車廠</span>
			</a></li>
        <li class="nav-item"><a class="nav-link" href="SelectAllCar.controller">
				<i class="fa-solid fa-car"></i> <span>車輛</span>
		</a></li>

            <!-- Divider -->
            <!-- <hr class="sidebar-divider"> -->

            <!-- Heading -->
            <!-- <div class="sidebar-heading">
                Addons
            </div> -->

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="serviceAllController">
                    <i class="fa-solid fa-screwdriver-wrench"></i>
                    <span>保養廠</span></a>
            </li>

					<!-- Nav Item - Charts -->
					<li class="nav-item"><a class="nav-link" href="threadsView">
							<i class="fa-brands fa-rocketchat"></i> <span>論壇</span>
						</a></li>

					<!-- Nav Item - Tables -->
					<li class="nav-item"><a class="nav-link" href="<c:url value='/backstage/iSpancarShop.ProductListAll'/>"> <i
								class="fa-sharp fa-solid fa-cart-shopping"></i> <span>商城</span></a></li>

					<li class="nav-item"><a class="nav-link" href="orderBack">
							<i class="fa-solid fa-coins"></i> <span>訂單</span>
						</a></li>
					<!-- Divider -->
					<hr class="sidebar-divider d-none d-md-block">

					<!-- Sidebar Toggler (Sidebar) -->
					<div class="text-center d-none d-md-inline">
						<button class="rounded-circle border-0" id="sidebarToggle"></button>
					</div>

				</ul>
				<!-- End of Sidebar -->

				<!-- Content Wrapper -->
				<div id="content-wrapper" class="d-flex flex-column">

					<!-- Main Content -->
					<div id="content">

						<!-- Topbar -->
						<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

							<div class="h4 mt-2 text-gray-800">資車國際</div>


							<!-- Topbar Navbar 右邊頭像 -->
							<ul class="navbar-nav ml-auto">

								<!-- Nav Item - Search Dropdown (Visible Only XS) -->
								<li class="nav-item dropdown no-arrow d-sm-none"><a class="nav-link dropdown-toggle"
										href="#" id="searchDropdown" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
									</a> <!-- Dropdown - Messages -->
									<div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
										aria-labelledby="searchDropdown">
										<form class="form-inline mr-auto w-100 navbar-search">
											<div class="input-group">
												<input type="text" class="form-control bg-light border-0 small"
													placeholder="Search for..." aria-label="Search"
													aria-describedby="basic-addon2">
												<div class="input-group-append">
													<button class="btn btn-primary" type="button">
														<i class="fas fa-search fa-sm"></i>
													</button>
												</div>
											</div>
										</form>
									</div>
								</li>

								<div class="topbar-divider d-none d-sm-block"></div>

								<!-- Nav Item - User Information -->
								<li class="nav-item dropdown no-arrow"><a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${login.memberName}</span>
                            <!-- 職位 -->
                                <input type="hidden" value="${login.accountnumber}" id="myAccountnumber">
                                <input type="hidden" value="${memberPosition.positionPk}" id="myPosition">
                                <input type="hidden" value="${memberPosition.permissionsInsert}" id="myPositionInsert">
                                <input type="hidden" value="${memberPosition.permissionsUpdate}" id="myPositionUpdate">
                                <input type="hidden" value="${memberPosition.permissionsDelete}" id="myPositionDelete">
                                <input type="hidden" value="${memberPosition.permissionsSelect}" id="myPositionSelect">
                                <img class="img-profile rounded-circle" id="myImage" src="/showimageforthismember.controller\?accountnumber=${login.accountnumber}">
                            </a> <!-- Dropdown - User Information -->
									<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
										aria-labelledby="userDropdown">
										<a class="dropdown-item" href="#"> <i
												class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
										</a>

										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#" data-toggle="modal"
											data-target="#logoutModal"> <i
												class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
											Logout
										</a>
									</div>
								</li>

							</ul>

						</nav>
						<!-- End of Topbar -->

						<!-- Begin Page Content 內容 -->
						<div class="container-fluid">
						<form action="<c:url value='/backstage/iSpancarShop.ProductListAll'/>"
							method="get">
							<input type="submit" value="回商城管理頁面" class="backshopbtn">
						</form>

							<!--                     Page Heading -->
							<!--                     <h1 class="h3 mb-4 text-gray-800">商城商品新增</h1> -->
<!--                     Page Heading -->
							<!--                     <h1 class="h3 mb-4 text-gray-800">商城商品新增</h1> -->
							<form name="insertProductFormA" action="iSpancarShop.InsertShopDetail.controller"
								method="POST" enctype="multipart/form-data">
								<table border="1" id="insertP">
									<thead>
										<tr bgcolor='transparent'>
											<th height="60" colspan="2" align="center">
												<h2 style="margin:0 auto;">
													<b>新增產品資料</b>
													<input type="button" value="一鍵輸入" id="clickToFill" class="btn btn-info"></input>
												</h2>
											</th>
										</tr>
									</thead>
									<tbody>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">產品名稱</font>
											</td>
											<td width="600" height="40" align="left"><input required id='productname'
													style="text-align: left" name="productname"
													value="${param.productname}" type="text" size="30"></td>
										</tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">產品類型</font>
											</td>
											<td width="600" height="40" align="left">
											<select required name="type" id="type">
											<option>${param.spec}</option>
											<option>內飾</option>
											<option>外飾</option>
											<option>配件</option>
											<option>機油</option>
											<option>雨刷</option>
											<option>輪胎</option>
											</select>
											</td>
										</tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">規 格</font>
											</td>
											<td width="600" height="40" align="left">
											<select required name="spec" id="spec">
											<option>${param.spec}</option>
											<option>通用</option>
											<option>特殊</option>
											</select>
											</td>
										</tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">價 格</font>
											</td>
											<td width="600" height="40" align="left"><input required name="price"
											id="price" value="${param.price}" type="number" oninput="value=value.replace('-', '')" size="14" ></td>
										</tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">庫存數量</font>
											</td>
											<td width="600" height="40" align="left"><input required name="stock"
											id="stock" value="${param.stock}" type="number" oninput="value=value.replace('-', '')" size="14"></td>
										</tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">發售日期</font>
											</td>
											<td width="600" height="40" align="left"><input required name="uptime" 
													id="updatepick" value="${param.uptime}" type="text" size="20">
												<!-- 												<font color='blue' size="-1">&nbsp;&nbsp;格式為yyyy-MM-dd</font> -->
											</td>
										</tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">產品資訊</font>
											</td>

											<td width="120" height="400" align="left"><textarea required rows="30" cols="90"
													name="productinfo" id="productinfo">${param.productinfo}</textarea>
												<!-- 									<input --> <%-- name="productinfo"
													value="${param.productinfo}" type="text" --%>
													<!-- 										size="14"> --></td>
										</tr>
										<tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">產品圖片</font>
											</td>
											<td width="600" height="40" align="left"><input required name="productimage" id="productimage"
													value="${param.productimage}" type="file">
										</tr>
										<tr>
										<tr bgcolor='transparent'>
											<td width="120" height="40" style="text-align: center">
												<font size="4">產品圖片(詳細頁面)</font>
											</td>
											<td width="600" height="40" align="left"><input required name="manyimgs" id="productimage"
													value="${param.manyimgs}" type="file" multiple="multiple">
										</tr>

										<tr bgcolor='transparent'>
											<td height="50" colspan="2" align="center"><input type="submit" value="送出" class="sendbtn">
											</td>
										</tr>
									</tbody>
								</table>
							</form>
						</div>
						<!-- /.container-fluid -->
						<script src="http://localhost:8080/iSpanCar/script/plugins/jquery/jquery.min.js"></script>
						<script>
							let productname = document.querySelector("#productname")
							productname.addEventListener("blur", function () {
								let s1 = this.validity;
								let msg1 = "";
								switch (true) {
									case s1.valueMissing:
										msg1 = "請輸入商品名稱!!!";
										break;
								}
								this.setCustomValidity(msg1);
							})
							
							let type = document.querySelector("#type")
							type.addEventListener("blur", function () {
								let s2 = this.validity;
								let msg2 = "";
								switch (true) {
									case s2.valueMissing:
										msg2 = "請輸入產品類型!!!";
										break;
								}
								this.setCustomValidity(msg2);
							})
							
							let spec = document.querySelector("#spec")
							type.addEventListener("blur", function () {
								let s3 = this.validity;
								let msg3 = "";
								switch (true) {
									case s3.valueMissing:
										msg3 = "請輸入規格!!!";
										break;
								}
								this.setCustomValidity(msg3);
							})
							
							let price = document.querySelector("#price")
							type.addEventListener("blur", function () {
								let s4 = this.validity;
								let msg4 = "";
								switch (true) {
									case s4.valueMissing:
										msg4 = "請輸入價格!!!";
										break;
								}
								this.setCustomValidity(msg4);
							})
							
							let stock = document.querySelector("#stock")
							type.addEventListener("blur", function () {
								let s5 = this.validity;
								let msg5 = "";
								switch (true) {
									case s5.valueMissing:
										msg5 = "請輸入庫存!!!";
										break;
								}
								this.setCustomValidity(msg5);
							})
							
							let uptime = document.querySelector("#uptime")
							type.addEventListener("blur", function () {
								let s6 = this.validity;
								let msg6 = "";
								switch (true) {
									case s6.valueMissing:
										msg6 = "請輸入發售時間!!!";
										break;
								}
								this.setCustomValidity(msg6);
							})
							
							let productinfo = document.querySelector("#productinfo")
							type.addEventListener("blur", function () {
								let s7 = this.validity;
								let msg7 = "";
								switch (true) {
									case s7.valueMissing:
										msg7 = "請輸入商品資訊!!!";
										break;
								}
								this.setCustomValidity(msg7);
							})
							
							let productimage = document.querySelector("#productimage")
							type.addEventListener("blur", function () {
								let s8 = this.validity;
								let msg8 = "";
								switch (true) {
									case s8.valueMissing:
										msg8 = "請上傳產品圖片!!!";
										break;
								}
								this.setCustomValidity(msg8);
							})
							
						</script>
						<script>
						//一鍵輸入
						$('#clickToFill').on('click', function(){
							$('#productname').val('Pirelli P Zero Corsa 19”')
							$('#type').val('輪胎')
							$('#spec').val('通用')
							$('#price').val('12000')
							$('#stock').val('60')
							$('#updatepick').val('02/24/2023')
							$('#productinfo').val('大塊狀花紋大量分布於輪胎胎肩和中部，能發揮極度的操控性能、高速過彎性能和出色的出彎加速性能.雙重胎面配方技術實現了高速性能和抓地力/牽引力的卓越融合.從賽車運動中衍生出的新材料能有效抵抗高熱高壓運動對輪胎產生的壓力.')
						});
						</script>
					</div>
					<!-- End of Main Content -->

					<!-- Footer -->
					<footer class="sticky-footer bg-white">
						<div class="container my-auto">
							<div class="copyright text-center my-auto">
								<span>Copyright &copy; Your Website 2020</span>
							</div>
						</div>
					</footer>
					<!-- End of Footer -->

				</div>
				<!-- End of Content Wrapper -->

			</div>
			<!-- End of Page Wrapper -->

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
			</a>

			<!-- Logout Modal-->
		    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		        aria-hidden="true">
		        <div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <h5 class="modal-title" id="exampleModalLabel">決定登出?</h5>
		                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
		                        <span aria-hidden="true">×</span>
		                    </button>
		                </div>
		                <div class="modal-body"> <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
		                    <a class="btn btn-primary" href="<c:url value='/logoutServlet.do' />">登出</a></div>
		<!--                 <div class="modal-footer"> -->
		                   
		<!--                 </div> -->
		            </div>
		        </div>
		    </div>

			<!-- Bootstrap core JavaScript-->
			<script src="http://localhost:8080/iSpanCar/script/vendor/jquery/jquery.min.js"></script>
			<script
				src="http://localhost:8080/iSpanCar/script/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Core plugin JavaScript-->
			<script
				src="http://localhost:8080/iSpanCar/script/vendor/jquery-easing/jquery.easing.min.js"></script>

			<!-- Custom scripts for all pages-->
			<script src="http://localhost:8080/iSpanCar/script/js/sb-admin-2.min.js"></script>

			<script src="https://kit.fontawesome.com/dbb4662278.js" crossorigin="anonymous"></script>
			<script type="text/javascript" charset="utf8"
				src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
			
			<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
			<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
			<script>
			$(function() { 
				  $('#updatepick').datepicker({ 
				    minDate: new Date() 
				  });
				});
			 </script> 
			 <script>
			 
			 </script>

		</body>

		</html>