<%@page import="com.medicine.web.model.UserInformation"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style1 {
	font-size: 16px
}

.style2 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
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
							<a href=user class="menu-link">View User</a>
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

		<form action="" method="post" name="form1" id="form1">
			<p>&nbsp;</p>
			<h3 align="center">
				<span class="style2">User Details </span>
			</h3>
			<table width="81%" border="0" align="center">
				<%
				List<UserInformation> userInfos = (List<UserInformation>) request.getAttribute("userInformations");
				%>

				<tr>
					<td width="51" height="32"><h4 align="center" class="style1">
							<strong><span class="style1">Id</span></strong>
						</h4></td>
					<td width="114"><h4 align="center" class="style1">
							<strong>Name</strong>
						</h4></td>
					<td width="158"><h4 align="center" class="style1">
							<strong>gender</strong>
						</h4></td>
					<td width="223"><h4 align="center" class="style1">
							<strong>address</strong>
						</h4></td>
					<td width="146"><h4 align="center" class="style1">
							<strong>Contact</strong>
						</h4></td>
					<td width="134"><h4 align="center" class="style1">
							<strong>Email</strong>
						</h4></td>
				</tr>
				<%
				for (UserInformation user : userInfos) {
				%>
				<tr>
					<td><div align="center">
							<span class="style7"> <%
 out.print(user.getId());
 %>
							</span>
						</div></td>
					<td height="42"><div align="center">
							<span class="style7"> <%
 out.print(user.getName());
 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
 out.print(user.getGender());
 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
 out.print(user.getAddress());
 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
 out.print(user.getContact());
 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
 out.print(user.getEmail());
 %>
							</span>
						</div></td>
				</tr>
				<%
				}
				%>
			</table>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		</form>

	</div>

	<%@include file="footer.jsp"%>

</body>
</html>
