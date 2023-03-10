<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Blank</title>

<!-- Custom fonts for this template-->
<link
	href="http://localhost:8080/iSpanCar/script/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="http://localhost:8080/iSpanCar/script/css/sb-admin-2.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
	<style>
	textarea{
	background:transparent;  
      border-style:none;
	}
	
	.addNewCar{
		display: inline;
	}
	
	</style>

</head>

<body id="page-top">
	<c:set value="${LoginOK}" var="login" />
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion bg-gradient-info"
			id="accordionSidebar">

			<!-- Sidebar - Brand 左上標誌 -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/index">
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
			<li class="nav-item">
                <a class="nav-link" href="/backstage/memberchartjs">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>統計圖表</span></a>
            </li>

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
			<li class="nav-item"><a class="nav-link"
				href="memberselectall.controller"> <i class="fa-solid fa-user"></i>
					<span>會員</span>
			</a></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link"
				href="/backstage/findAllDealer.controller"><i
					class="fa-solid fa-car"></i><span>車廠</span></a></li>
			<li class="nav-item"><a class="nav-link" href="/backstage/SelectAllCar.controller">
					<i class="fa-solid fa-car"></i> <span>車輛</span>
			</a></li>

			<!-- Divider -->
			<!-- <hr class="sidebar-divider"> -->

			<!-- Heading -->
			<!-- <div class="sidebar-heading">
                Addons
            </div> -->

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link"
				href="serviceAllController"> <i
					class="fa-solid fa-screwdriver-wrench"></i> <span>保養廠</span>
			</a></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="threadsView">
					<i class="fa-brands fa-rocketchat"></i> <span>論壇</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="iSpancarShop.ProductListAll"> <i
					class="fa-sharp fa-solid fa-cart-shopping"></i> <span>商城</span></a></li>

			<li class="nav-item"><a class="nav-link"
				href="orderQueryAll.controller"> <i
					class="fa-solid fa-coins"></i> <span>訂單</span>
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
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<div class="h4 mt-2 text-gray-800">資車國際</div>


					<!-- Topbar Navbar 右邊頭像 -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${login.memberName}</span>
								<!-- 職位 --> <input type="hidden" value="${login.accountnumber}"
								id="myAccountnumber"> <input type="hidden"
								value="${memberPosition.positionPk}" id="myPosition"> <input
								type="hidden" value="${memberPosition.permissionsInsert}"
								id="myPositionInsert"> <input type="hidden"
								value="${memberPosition.permissionsUpdate}"
								id="myPositionUpdate"> <input type="hidden"
								value="${memberPosition.permissionsDelete}"
								id="myPositionDelete"> <input type="hidden"
								value="${memberPosition.permissionsSelect}"
								id="myPositionSelect"> <img
								class="img-profile rounded-circle" id="myImage"
								src="/showimageforthismember.controller\?accountnumber=${login.accountnumber}">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
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
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content 內容 -->
				<div class="container-fluid">
					<div class="container1">

						<!-- Page Heading -->
						<h1 class="h3 mb-4 text-gray-800">嚴選二手車商</h1>
						<table id="selectDealer">

							<thead>
								<tr>
									<th>車商名稱</th>
									<th>車商電話</th>
									<th>地址</th>
									<th>營業時間</th>
									<th>聯絡人</th>
									<th>統一編號</th>
									<th>刪除</th>
									<th>修改</th>
								</tr>
							</thead>
							<c:forEach var="dealer" items="${SelectCarDealName}" varStatus="vs">
								<tbody>
									<tr>
										<td class="carDealerName">${dealer.carDealName}</td>
										<td>${dealer.carDealPhone}</td>
										<td>${dealer.carDealAddress}</td>
										<td>${dealer.openTime}</td>
										<td>${dealer.contactPerson}</td>
										<td>${dealer.carDealVATNumber}</td>
										<td class="button"><button id="btn1"
												class="delete btn btn-danger btn-circle">
												<i class="fas fa-trash"></i>
											</button></td>
										<td><form action="/backstage/JumpToUpdateDealerSheet.controller" method="post">
											<input type="hidden" value="${dealer.carDealName}" name="carDealName">
											<button type="submit" class="btn4 btn btn-info btn-circle" id="btn3"
													style="border-radius: 80%; width: 40px; height: 40px">
													<i class="fa-solid fa-pen"></i>
												</button>
											</form></td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
						<br>
						<div class="row">
							<div class="col-sm-10 ">
								<h3 class="h3 mb-4 text-gray-800">在庫車輛</h3>
							</div>
							<div class="col-sm-2">
								<span class="mr-2">新增車輛</span>
								<form action="/backstage/SelectDealerNameToAdd.controller" class= "addNewCar">
									<input type="hidden" id="sellerName" name="carDealName">
									<button class="insert btn btn-success btn-circle" type="submit">
										<i class="fa-solid fa-car"></i>
									</button>
								</form>
							</div>
						</div>
						<br>
						<table id="selectCar">
							<thead>
								<tr>
									<th>車輛編號</th>
									<th>車商名稱</th>
									<th>帳號</th>
									<th>車輛品牌</th>
									<th>車輛名稱</th>
									<th>庫存</th>
									<th>車輛照片</th>
									<th>車輛描述</th>
									<th>發布日期</th>
									<th>刪除</th>
									<th>修改</th>
								</tr>
							</thead>
							<c:forEach var="car" items="${SelectAllCar}" varStatus="vs">
								<tbody>
									<tr>
										<td class="carNo">${car.carNo}</td>
										<td>${car.carDealerBean.carDealName}</td>
										<td>${car.accountNumber}</td>
										<td>${car.carBrand}</td>
										<td>${car.carName}</td>
										<td id="stock">${car.stock}</td>
										<!--<td>${car.carImage}</td>-->
										<td><img src="/carInfoImage.controller/${car.carNo}"
											width="180px" height="120px" /></td>
										<td><textarea readonly cols="10" rows="5"
												style="text-align: left">${car.carDescription}</textarea></td>
										<td>${car.announceDate}</td>
										<td class="button"><button id="btn2"
												class="delete btn btn-danger btn-circle">
												<i class="fas fa-trash"></i>
											</button></td>
										<!-- 修改按鈕，跳轉至修改頁面 -->
										<!--<td><form action="JumptoUpdateCarInfoSheet" method="post"><input type="hidden" value="${car.carNo}" name="carNo"><button type="submit" class="btn2" id="btn2"  style="border-radius:80%;width:40px;height:40px"><i class="fa-solid fa-pen fa-lg"></i></button></form></td> -->
										<td><form action="/backstage/JumptoUpdateCarInfoSheet.controller" method="post">
											<input type="hidden" value="${car.carNo}" name="carNo">
											<button type="submit" class="btn3 btn btn-info btn-circle" id="btn3"
													style="border-radius: 80%; width: 40px; height: 40px">
													<i class="fa-solid fa-pen"></i>
												</button>
											</form></td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<a href="/backstage/findAllDealer.controller">回上一頁</a>
					</div>
				</div>
				<!-- /.container-fluid -->

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
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">決定登出?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">取消</button>
					<a class="btn btn-primary"
						href="/logout.controller">登出</a>
				</div>
				<!--                 <div class="modal-footer"> -->

				<!--                 </div> -->
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script
		src="http://localhost:8080/iSpanCar/script/vendor/jquery/jquery.min.js"></script>
	<script
		src="http://localhost:8080/iSpanCar/script/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="http://localhost:8080/iSpanCar/script/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="http://localhost:8080/iSpanCare/script/js/sb-admin-2.min.js"></script>

	<!-- Bootstrap core JavaScript-->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script src="https://kit.fontawesome.com/dbb4662278.js"
		crossorigin="anonymous"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
	
	<script>
		$(document).ready( function () {
	   		 $('#selectDealer').DataTable({
	   			"searching": false, //搜尋功能, 預設是開啟
	   		    "paging": false, //分頁功能, 預設是開啟
	   		    "ordering": false, //排序功能, 預設是開啟
	   		 	"info": false	//頁面訊息功能, 預設是開啟
	   		 });
		} );
		
		$('.insert').on('click', function(){
			var carDealerName = $('.carDealerName').text();
			$('#sellerName').val(carDealerName);
		})
		
	</script>
	<script>
				$(document).ready(function () {
					$('#selectCar').DataTable();
				});

	</script>
	<script>
				$('.container1').on('click', '#btn1', function () {
					
					var carNo = $('.carNo').text()
					console.log(carNo)
					if( carNo == '' ){
					Swal.fire({
						  title: '確定刪除?',
						  text: "資料將被刪除",
						  icon: 'warning',
						  showCancelButton: true,
						  confirmButtonColor: '#3085d6',
						  cancelButtonColor: '#d33',
						  confirmButtonText: '刪除',
						  cancelButtonText: '取消'
						}).then((result) => {
						  if (result.isConfirmed) {
						    Swal.fire(
						      '已刪除!',
						      'Your file has been deleted.',
						      'success'
						    )
						    
					$.ajax({
						type: "POST",
						url: "/backstage/deleteCarDealer",
						//contentType text
						context: this,
						dataType: "text",
						data: {
							"carDealName": $(this).parent().parent().children(
								'.carDealerName').text()
						},
						success: function (response) {
							location.href = '/backstage/findAllDealer.controller';
							console.log("OK")
							$(this).parent().parent().remove();
						}
					})    
				 }
				})	
					}else{
						Swal.fire({
	 						  title: '無法刪除?',
	 						  text: "車輛資料尚存",
	 						  icon: 'warning',
	 						})
					}
					
			});
	</script>
	<script>
	$('.container1').on('click', '#btn2', function () {
		Swal.fire({
			  title: '確定刪除?',
			  text: "資料將被刪除",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '刪除',
			  cancelButtonText: '取消'
			}).then((result) => {
			  if (result.isConfirmed) {
			    Swal.fire(
			      '已刪除!',
			      'Your file has been deleted.',
			      'success'
			    )
			    
		$.ajax({
			type: "POST",
			url: "/backstage/deleteCarInfo",
			//contentType text
			context: this,
			dataType: "text",
			data: {
				"carNo": $(this).parent().parent().children(
					'.carNo').text()
			},
			success: function (response) {
				console.log("OK")
				$(this).parent().parent().remove();
			},
			error:function(xhr, ajaxOptions, thrownError){
           	 
                alert(xhr.status+"\n"+thrownError);
            }
		})    
	 }
	})
});
	</script>

</body>

</html>