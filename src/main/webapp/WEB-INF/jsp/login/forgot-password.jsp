<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>忘記密碼</title>

    <!-- Custom fonts for this template-->
    <link href="http://localhost:8080/iSpanCar/script/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="http://localhost:8080/iSpanCar/script/css/sb-admin-2.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">忘記密碼?</h1>
                                        <p class="mb-4">請輸入帳號及信箱</p>
                                    </div>
                                    <form class="user" action="findaccountnumber.controller" method="POST" id="pwdresetForm">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" name="accountnumber" 
                                                id="accountnumber" aria-describedby="emailHelp"
                                                placeholder="輸入帳號">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user" name="email" 
                                                id="email" aria-describedby="emailHelp"
                                                placeholder="Email">
                                        </div>
                                        
                                        <a href="" class="btn btn-success btn-user btn-block" id="sendmessage">
                                            寄送驗證信
                                        </a>
                                        <br>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="verifycode" aria-describedby="emailHelp"
                                                placeholder="驗證碼">
                                        </div>
                                        
                                        <a href="" class="btn btn-primary btn-user btn-block" id="resetpassword">
                                            重設密碼
                                        </a>
                                    </form>
                                    <hr>
                                    <div class="row">
	                                    <div class="text-right col-lg-6">
	                                        <a class="small" href="memberInsert">創建帳號</a>
	                                    </div>
	                                    <div class="text-left col-lg-6">
	                                        <a class="small" href="login">已有帳號</a>
	                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="http://localhost:8080/iSpanCar/script/vendor/jquery/jquery.min.js"></script>
    <script src="http://localhost:8080/iSpanCar/script/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="http://localhost:8080/iSpanCar/script/vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Custom scripts for all pages-->
    <script src="http://localhost:8080/iSpanCar/script/js/sb-admin-2.min.js"></script>
    
	<script type="text/javascript">
	
		$(function(){
			var checkVo ='';
			$('#sendmessage').on('click',function(e){
				e.preventDefault();
				$.ajax({
				    url: "checkAccountEmail.controller",
				    dataType: 'text',
				    type:'POST',
				    async:false,
				    data:{
				    	accountnumber : $("#accountnumber").val(),
				    	email : $("#email").val()
				    },
				    error: function(xhr) {
				        alert('Ajax request 發生錯誤');
				    },
				    success: function(response) {
				        if(response.trim() == "OK") {
				        	$.ajax({
							    url: "sendmailforverify.controller",
							    dataType: 'text',
							    type:'POST',
							    //async:false,
							    data:{
							    	email : $("#email").val()
							    },
							    error: function(xhr) {
							        alert('Ajax request 發生錯誤');
							    },
							    success: function(response){
							    	checkVo = response;
							    	Swal.fire({
							    		  icon: 'success',
							    		  title: '已寄送驗證信'
							    		})
							    }
							})
				        } else {
				        	Swal.fire({
				        		  icon: 'error',
				        		  title: '錯誤',
				        		  text: '帳號信箱錯誤，請重新輸入!'
				        		  //footer: '<a href="memberInsert">沒有帳號? 創建帳號</a>'
				        		})
				        }
				    }
				})
			})
			
			$('#resetpassword').on('click',function(e){
				e.preventDefault();
				var verifycode = $('#verifycode').val();
				console.log(verifycode +'  '+checkVo)
				if((verifycode == checkVo) && (checkVo != '')){
					$('#pwdresetForm').submit();
				}else{
					Swal.fire({
		        		  icon: 'error',
		        		  title: '錯誤',
		        		  text: '驗證碼錯誤，請重新輸入!'
		        		  //footer: '<a href="memberInsert">沒有帳號? 創建帳號</a>'
		        		})
				}
			})
			
			
			
		})
	
	</script>
</body>

</html>