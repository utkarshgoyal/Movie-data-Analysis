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
			<li><a href="#">year</a></li>
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
                        MOVIES WITH RATING > 4
                        <br><br>
                        <table>
                            
                            <th>Movie ID</th> <th>Movie Name</th> <th>Release Year</th> <th>Rating</th>  <th>Runtime</th>
                         <%
                String HQL = "select * from movie where rating>=4";
                ResultSet rs = dbConn.HiveConn.getData(HQL);
                while(rs.next()){
                    String mid = rs.getString(1);
                    String name = rs.getString(2);
                    String yor = rs.getString(3);
                    String rating = rs.getString(4);
                    String runtime = rs.getString(5);
                    
                    
                %>
                <tr>
                    <td><%=mid%></td> <td><%=name%></td> <td><%=yor%></td> <td> <%=rating%></td> <td><%=runtime%></td>
                </tr>
                
                <%
                }
                %>
                
		</table>
                
                <br><br>
                        MOVIES WITH RATING BETWEEN 3 AND 4
                        <br><br>
                        <table>
                            
                            <th>Movie ID</th> <th>Movie Name</th> <th>Release Year</th> <th>Rating</th>  <th>Runtime</th>
                         <%
                String Hive = "select * from movie where rating>=3 and rating<=4";
                ResultSet rs1 = dbConn.HiveConn.getData(Hive);
                while(rs1.next()){
                    String mid = rs1.getString(1);
                    String name = rs1.getString(2);
                    String yor = rs1.getString(3);
                    String rating = rs1.getString(4);
                    String runtime = rs1.getString(5);
                    
                    
                %>
                <tr>
                    <td><%=mid%></td> <td><%=name%></td> <td><%=yor%></td> <td> <%=rating%></td> <td><%=runtime%></td>
                </tr>
                
                <%
                }
                %>
                
		</table>
                
                
                
                
                
                </h2>
</body>
</html>
