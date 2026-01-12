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
		<br />
		<%
		Boolean medicalAdded = (Boolean) request.getAttribute("medicalAdded");
		if (medicalAdded != null) {
			if (medicalAdded == Boolean.TRUE) {
		%>
		<div align="center">
			<strong>You successfully added new medical store
				information. Please <a href="adminHome.jsp">click here</a> to go to admin home page.
			</strong>
		</div>

		<%
		} else if (medicalAdded == Boolean.FALSE) {
		%>
		<div align="center">Failed to add the medical store
			information. Please try again.</div>
		<%
		}
		}
		%>

		<br />
		<div align="center" class="style1">
			<h2>
				<strong>Add Medical </strong>
			</h2>
		</div>
		<form id="medicalForm" name="medicalForm" method="post"
			action="medical">
			<table width="100%" border="0">
				<tr>
					<td width="5%" height="28">&nbsp;</td>
					<td width="5%">&nbsp;</td>
					<td width="20%">&nbsp;</td>
					<td width="14%">&nbsp;</td>
					<td width="36%">&nbsp;</td>
					<td width="11%">&nbsp;</td>
					<td width="4%">&nbsp;</td>
					<td width="5%">&nbsp;</td>
				</tr>
				<tr>
					<td height="44">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Name</span></td>
					<td><label> <input name="name" type="text" id="name"
							required />
					</label></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td height="52">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Address</span></td>
					<td><textarea name="address" id="address" required></textarea></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="38">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Phone Number </span></td>
					<td><input name="pnumber" type="text" id="pnumber" required /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="37">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Email Id </span></td>
					<td><input name="email" type="text" id="email" required /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>

					<td><input name="uname" type="hidden" id="uname" value="test" /></td>

				</tr>
				<tr>

					<td><input name="password" type="hidden" id="password"
						value="test" /></td>

				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
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
					<td><label><input name="btn" type="submit" id="btn"
							value="Add Medical" /></label></td>
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
