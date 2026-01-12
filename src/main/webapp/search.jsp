<%@page import="com.medicine.web.model.SearchResult"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style2 {
	font-weight: bold
}

.style4 {
	font-size: 16px;
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
							<a href="userHome.jsp" class="menu-link">Home</a>
						</div>
						<div class="menu-item-box center ">
							<a href="search.jsp" class="menu-link">Search Medicine</a>
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



		<form action="search" method="get" name="searchForm" id="searchForm">
		<br/>
			<h3 align="center">
				<strong>Search Medicine </strong>
			</h3>
			<table width="81%" border="0" align="center">
				<tr>
					<td width="10%" height="53"><div align="center">&nbsp;</div></td>
					<td width="11%"><div align="center">&nbsp;</div></td>
					<td width="24%" align="left" class="tdsh"><div align="center">Search
							Medicine :</div></td>
					<td width="29%" align="left" class="tdsh"><div align="center">
							<input name="medicineName" id="medicineName" type="text" />
						</div></td>
					<td width="16%"><div align="center">
							<input name="searchBtn" id="btn" type="submit" value="Search" />
						</div></td>
					<td width="10%"><div align="center">
							<input name="allBtn" id="btn" type="submit" value="ALL" />
						</div></td>
				</tr>
				<tr>
					<td height="44"><div align="center">&nbsp;</div></td>
					<td><div align="center">&nbsp;</div></td>
					<td><div align="center">&nbsp;</div></td>
					<td><div align="center">&nbsp;</div></td>
					<td><div align="center">&nbsp;</div></td>
					<td><div align="center">&nbsp;</div></td>
				</tr>
			</table>
			<p>&nbsp;</p>
			<h3 align="center">
				<span class="style2">Medical Details</span>
			</h3>
			<table width="81%" border="0" align="center">
				<%
					List<SearchResult> results = (List<SearchResult>)request.getAttribute("results");
				%>

				<tr>
					<td width="53" height="32"><h4 align="center" class="style4">Id</h4></td>
					<td width="148"><h4 align="center" class="style4">
							<strong>Medical Name</strong>
						</h4></td>
					<td width="184"><h4 align="center" class="style4">
							<strong>Medicine Name</strong>
						</h4></td>
					<td width="149"><h4 align="center" class="style4">
							<strong>Address</strong>
						</h4></td>
					<td width="146"><h4 align="center" class="style4">
							<strong>Contact</strong>
						</h4></td>
					<td width="149"><h4 align="center" class="style4">
							<strong>Email</strong>
						</h4></td>
				</tr>
				<%
					if (null != results && !results.isEmpty()) {
				 		for (SearchResult result : results) {
				%>
				<tr>
					<td height="36"><div align="center">
							<span class="style7"> 
 							<%
							 out.print(result.getMedicalId());
							 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7">
							<%
							 out.print(result.getMedicalName());
							 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7">
							 <%
							 out.print(result.getMedicineName());
							 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> 
							<%
							 out.print(result.getAddress());
							 %>
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
							 out.print(result.getContact());
							 %> 
							</span>
						</div></td>
					<td><div align="center">
							<span class="style7"> <%
							 out.print(result.getEmail());
							 %>
							</span>
						</div></td>
				</tr>
				<%
						}
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
