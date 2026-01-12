<%@page import="com.medicine.web.model.MedicineInformation"%>
<%@page import="java.util.List"%>
<%
String medicalId = request.getParameter("medicalId");
String medicalName = request.getParameter("medicalName");
%>
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

		<form action="" method="post" name="form1" id="form1">
			<p>&nbsp;</p>
			<h2 align="center">
				<span class="style2">View Medicine</span>
			</h2>
			<table width="81%" border="0" align="center">
				<%
				List<MedicineInformation> medicineInfos = (List<MedicineInformation>) request.getAttribute("medicineInformations");
				
				%>

				<tr>
					<td width="57" height="32"><h4 align="center" class="style1">
							<strong><span class="style1">Id</span></strong>
						</h4></td>
					<td width="144"><h4 align="center" class="style1">
							<strong>Medicine Name</strong>
						</h4></td>
					<td width="166"><h4 align="center" class="style1">
							<strong>Disease</strong>
						</h4></td>
					<td width="168"><h4 align="center" class="style1">
							<strong>Power</strong>
						</h4></td>
					<td width="295"><h4 align="center" class="style1">
							<strong>Description</strong>
						</h4></td>
				</tr>
				<%
				for (MedicineInformation medicineInfo : medicineInfos) {
				%>
				<tr>
					<td height="43"><div align="center">
							<span class="style7"> <%
								 out.print(medicineInfo.getId());
								 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
								 out.print(medicineInfo.getName());
								 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
								 out.print(medicineInfo.getDisease());
								 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
								 out.print(medicineInfo.getPower());
								 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
								 out.print(medicineInfo.getDescription());
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
