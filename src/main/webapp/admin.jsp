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
						<!-- <div class="menu-item-box center "><a href="#" class="menu_link">Home</a>

                            <div class="sub_cata" style="height: 200px;position: absolute;z-index: 99999;background-color: #000;margin-top: 29px;">
                                Test sub cata
                            
                            </div>

                        </div>-->
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
		<form method="post" name="adminLogin" action="login">
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
				<%  Boolean userExists = (Boolean)request.getAttribute("userExists");
				  if (userExists != null) {
					  if(userExists == Boolean.TRUE) { %>
						<tr>
							<td>&nbsp;</td>
							<td colspan="2">You are successfully logged in. You will be
								redirected to admin home page</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<% RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminHome.jsp");
				           requestDispatcher.forward(request, response);
					} else { %>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2"><div align="center" style="color:red;">Login Failed. Please try again!</div></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<% }
				} %>
				<tr>
					<td>&nbsp;</td>
					<td colspan="2">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td width="35%">&nbsp;</td>
					<td colspan="2"><div class="page-title" align="center" class="style1">Welcome
							To Admin Login</div></td>
					<td width="25%">&nbsp;</td>
					<td width="8%">&nbsp;</td>
				</tr>
				<br/>
				<tr>
					<td height="50">&nbsp;</td>
					<td width="11%"><span class="style2">User Name </span></td>
					<td width="21%"><input name="userName" type="text" id="uname" /></td>
					<td><input name="adminUser" type="hidden" id="adminUser" value="true"/></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="51">&nbsp;</td>
					<td><span class="style2">Password</span></td>
					<td><input name="password" type="password" id="password" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					
					<td>
						<p>
							<label> <input name="btn" type="submit" id="btn" class="button"
								value="Login" /> 

							</label>
						</p>
					</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
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
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
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
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>

	</div>


	<%@include file="footer.jsp"%>

</body>
</html>
