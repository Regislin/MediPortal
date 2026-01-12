<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@include file="header.jsp"%>
<body>
	<div class="main">
		<header class="header">
			<div class="container">
				<div class="col-12">
					<div class="col-4 mb-11 logo-set">
						<div class="logo">
							<img src="image/blacklogo.png" />
						</div>

					</div>

					<nav class="mob-menu-icon mb-1">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</nav>


					<nav class="col-8 menu mob-menu pull-right">

						<nav class="mob-menu-icon"
							style="padding: 26px 26px; width: 100%; box-sizing: border-box; border-bottom: 2px solid #1565C0;">

							<span class="icon-bar slide-icon-menu-color"></span> <span
								class="icon-bar slide-icon-menu-color"></span> <span
								class="icon-bar slide-icon-menu-color"></span>

						</nav>

						<div class="menu-item-box center ">
							<a href="adminHome.jsp" class="menu-link">Admin Home</a>
						</div>
						<div class="menu-item-box center ">
							<a href="addMedical.jsp" class="menu-link">Add Medical</a>
						</div>
						<div class="menu-item-box center ">
							<a href="user" class="menu-link">View User</a>
						</div>
						<div class="menu-item-box center ">
							<a href="medical" class="menu-link">View Medical</a>
						</div>
						<div class="menu-item-box center ">
							<a href="logout.jsp" class="menu-link">Logout</a>
						</div>
					</nav>





				</div>
			</div>
		</header>

		<section class="banner1 top" id="home"
			style="background-image: url(image/banner1.jpg);"></section>

		<br> <br> <br> <br>
		<h1 align="center">
			<strong>Welcome Admin Home</strong>
		</h1>

		<br> <br> <br> <br>







	</div>




	<%@include file="footer.jsp"%>

</body>
</html>
