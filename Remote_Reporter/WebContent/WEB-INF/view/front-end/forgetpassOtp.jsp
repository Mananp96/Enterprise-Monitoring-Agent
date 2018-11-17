<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/login.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:30:56 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />

<title>EMA - Login</title>

<!-- BEGIN CORE FRAMEWORK -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet" />
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- END CORE FRAMEWORK -->

<!-- BEGIN PLUGIN STYLES -->
<link href="assets/plugins/animate/animate.css" rel="stylesheet" />
<link
	href="assets/plugins/bootstrapValidator/bootstrapValidator.min.css"
	rel="stylesheet" />
<link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" />
<!-- END PLUGIN STYLES -->

<!-- BEGIN THEME STYLES -->
<link href="assets/css/material.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/plugins.css" rel="stylesheet" />
<link href="assets/css/helpers.css" rel="stylesheet" />
<link href="assets/css/responsive.css" rel="stylesheet" />
<!-- END THEME STYLES -->
<style>
body {
	width: 100%;
	height: auto;
	background-image: url('assets/img/single-blog-1.png');
	background-size: cover;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<!-- BEGIN CONTENT -->
	<div class="wrapper animated fadeInDown">
		<div class="panel overflow-hidden"
			style="margin: 60px 434px 0px 437px;">
			<c:forEach items="${forgetId}" var="i">
			<div
				class="bg-teal-500 padding-top-25 padding-bottom-25 no-margin-bottom font-size-20 color-white text-center text-uppercase">
				 Forget Password
			</div>
			<form id="checkform" method="post" action="newPass.do">
				
				<div class="box-body padding-md">
					<span style="color: red; text-align: center;"> <%
 	String invalid = (String) session.getAttribute("invalid");

 	if (invalid != null) {

 		out.println(invalid);
 		session.invalidate();

 	} else {

 		out.println();

 	}
 %>
					</span>
					<div class="form-group" style="margin-bottom: 39px;">
						<p style="color: grey;font-size: 15px">Enter verification code sent to your Email Address.
						</p>
					</div>

					<div class="form-group">
					<input type="hidden" value="${i.logid }" name="logid"/>
						<span><label for="text" class="control-label">
								Verfication code</label><input type="text" name="code"
							class="form-control input-lg"
							placeholder="Enter verification code" /></span>
					</div>

					<div class="form-group">

						<span><label for="text" class="control-label">
								New Password</label><input type="text" name="newPass"
							class="form-control input-lg"
							placeholder="Enter new Password" /></span>
					</div>
					
					<div class="form-group">

						<span><label for="text" class="control-label">
							   Confirm Password</label><input type="text" name="confirmPass"
							class="form-control input-lg"
							placeholder="Repeat Password" />
							<p style="color:red"><%
							String passwordMatch = (String) session.getAttribute("passwordMatch");

						 	if (invalid != null) {

						 		out.println(passwordMatch);
						 		session.invalidate();

						 	} else {

						 		out.println();

						 	}
							
							%></p>
							</span>
					</div>
					

					<button type="submit"
						class="btn btn-dark  padding-10 btn-block color-white"
						style="background-color: #293c4e !important; opacity: 0.9;">
						 SUBMIT
					</button>

				</div>
			</form>
			<div
				class="panel-footer padding-md no-margin no-border bg-teal-500 font-size-15 text-left text-uppercase ">
				<a href="login.do" style="color: white;"><i class="fa fa-long-arrow-left" style="margin-right:10px"></i>BACK TO LOGIN</a>
			</div>
			</c:forEach>
		</div>
	</div>
	<!-- END CONTENT -->

	<!-- BEGIN JAVASCRIPTS -->

	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-1.11.1.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/holder.js"></script>
	<script src="assets/plugins/slimScroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets/js/core.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->

	<!-- bootstrap validator -->
	<script
		src="assets/plugins/bootstrapValidator/bootstrapValidator.min.js"
		type="text/javascript"></script>

	<!-- switchery -->
	<script src="assets/plugins/switchery/switchery.min.js"
		type="text/javascript"></script>

	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	<script type="text/javascript">
		maniac.loadvalidator();
		maniac.loadswitchery();
	</script>

	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/login.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:01 GMT -->
</html>