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
							<a href="index.jsp" class="menu-link">Home</a>
						</div>
						<div class="menu-item-box center ">
							<a href="admin.jsp" class="menu-link">Admin</a>
						</div>
						<div class="menu-item-box center ">
							<a href="user.jsp" class="menu-link">User</a>
						</div>



					</nav>


				</div>
			</div>
		</header>

		<section class="banner1 top" id="home"
			style="background-image: url(image/banner1.jpg);"></section>
		<div style="width:1920px; margin:0 auto;">
			<form name="userForm" method="post" action="login">
				<table width="100%" border="0">
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<%
					String name = (String) session.getAttribute("name");
					Boolean userExists = (Boolean) request.getAttribute("userExists");
					if (name != null) {
					%>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2"><strong>You are successfully logged
								in. You will be redirected to admin home page. Please <a
								href="userHome.jsp">click here</a> to go to user home page.
						</strong></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<%
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("userHome.jsp");
					requestDispatcher.forward(request, response);
					} else if (null != userExists && userExists == Boolean.FALSE) {
					%>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2"><div align="right" style="color: red;">Login
								Failed. Please try again!</div></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<%
					}
					%>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2">&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" rowspan="10"></td>
						<td height="31" colspan="2"><div align="center">
								<span class="page-title">User Login </span>
							</div></td>
						<td width="25%">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td width="10%">&nbsp;</td>
						<td width="22%">&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td height="55"><span class="style8">User Name </span></td>
						<td><label> <input name="userName" type="text"
								id="uname">
						</label></td>
						<td><input name="adminUser" type="hidden" id="adminUser"
							value="false" /></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td height="50"><span class="style8">Password</span></td>
						<td><label> <input name="password" type="password"
								id="password">
						</label></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td height="40">&nbsp;</td>
						<td><label> <input name="btn" type="submit" id="btn"
								value="Login" class="button"> <input type="reset"
								name="Submit2" value="Reset" class="button">

						</label></td>

						<td></td>
						<td>&nbsp;</td>
					</tr>
					<br />
					<tr>
						<td>&nbsp;</td>
						<td><a class="button-blue" href="userRegistration.jsp">New
								User Register Here... </a></td>
						<td>&nbsp;</td>
						<td></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</form>
		</div>

	</div>


	<%@include file="footer.jsp"%>
</body>
</html>
