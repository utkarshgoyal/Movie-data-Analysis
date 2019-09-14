<%-- 
    Document   : total
    Created on : May 19, 2018, 1:03:41 AM
    Author     : Duttatreya
--%>

<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
	<title>MovieHive</title>
	<meta charset="utf-8" name="viewport" content-type="width=device-width initial-scale=1">
	<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
	<div id="header">
		<div id="logo">
			<a href="index.html"><img src="mhive.png" width="150" height="150"></a>
		</div>
		<ul id="navbar">
			<li><a href="index.html">home </a></li>
                        <li><a href="#">year count</a></li>
			<li><a href="runtime.jsp">runtime</a></li>
			<li><a href="year.jsp">year</a></li>
			<li><a href="rating.jsp">rating</a></li>
			<li><a href="total.jsp">total</a></li>
		</ul>
	</div>
 			<br>
		

		<h2>
			<div>
			<img src="hive.png" width="260" height="260">
			</div>

			<br><br>
                         <%
                String HQL = "select count(*) from movie";
                ResultSet rs = dbConn.HiveConn.getData(HQL);
                while(rs.next()){
                    String count = rs.getString(1);
               
                %>
                Total Movies: <%=count%>
		<% } %>
                </h2>
</body>
</html>
