<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="menudemo2.jsp" %>
    

<%
        try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql:///urvashi?useSSL=false","root","root");
		 Statement st=con.createStatement();
	     ResultSet rs=  st.executeQuery("select * from insmarks1");
	%>	 
         <center>
             <table cellpadding="12">
                 <tr>
                     <td>RNO</td>
                     <td>NAME</td>
                     <td>PHY</td>
                     <td>CHEM</td>
                     <td>MATHS</td>
                     </tr>
                     <%
		 while(rs.next())
		 {
                     %>
                 <tr>
                     <td><%= rs.getString(1)%></td>
                     <td><%= rs.getString(2)%></td>
                     <td><%= rs.getString(3)%></td>
                     <td><%= rs.getString(4)%></td>
                     <td><%= rs.getString(5)%></td>
                     </tr>
	<%
		 }
		 con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}			
         %>
         </table>
         </center>
</body>
</html>
