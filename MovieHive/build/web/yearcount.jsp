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
                        <li><a href="yearcount.jsp">year count</a></li>
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
                        MOVIE COUNT BY YEAR
                        
                        <br><br>
                        
                        <table>
                            <th>Year</th> <th>Movie Count</th>
                         <%
                       String currentYear = new String();
                       int count = 1;
                String HQL = "select yor from movie order by yor";
                ResultSet rs = dbConn.HiveConn.getData(HQL);
                rs.next();
                currentYear = rs.getString(1);
                while(rs.next()){
                    
                    String yor = rs.getString(1);
                    if(currentYear.equals(yor)){
                        count++;
                        
                    }
                    else {
                         
                %>
                <tr>
                    <td><%=currentYear%></td> <td><%=count%></td> 
                </tr>
                
                <%
                    currentYear = yor;
                    count = 1;
                    }
                }
                %>
                
		</table>
                
                
                
                
                
                </h2>
</body>
</html>
