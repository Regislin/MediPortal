
<%
String medicalId = request.getParameter("medicalId");
String medicalName = request.getParameter("medicalName");
%>
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
		Boolean medicineAdded = (Boolean) request.getAttribute("medicineAdded");
		if (medicineAdded != null) {
			if (medicineAdded == Boolean.TRUE) {
		%>
		<div align="center" style="color:green;">
			<strong>You successfully added new medicine to the medical
				store. </strong>
		</div>

		<%
		} else if (medicineAdded == Boolean.FALSE) {
		%>
		<div align="center">Failed to add the medical store information.
			Please try again.</div>
		<%
		}
		}
		%>

		<br />
		<div align="center" class="style1">
			<h2>
				<strong>Add Medicine </strong>
			</h2>
		</div>
		<form id="addMedicine" name="medicine" method="post" action="medicine">
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
					<td><span class="style2">Medical Name</span></td>
					<td><label> <input name="medicalName" type="text"
							id="medicalName" value="<%out.print(medicalName);%>" />
					</label></td>
					<td><input name="medicalId" type="hidden" id="medicalId"
						value="<%=medicalId%>" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td height="44">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Medicine Name</span></td>
					<td><label> <input name="name" type="text" id="name" />
					</label></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>



				<tr>
					<td height="52">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Disease</span></td>
					<td><textarea name="disease" id="disease"></textarea></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="38">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Power </span></td>
					<td><input name="power" type="text" id="power" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td height="37">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><span class="style2">Description</span></td>
					<td><input name="description" type="text" id="descr" /></td>
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
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><label><input name="btn" type="submit" id="btn"
							value="Add Medicine" /></label></td>
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
