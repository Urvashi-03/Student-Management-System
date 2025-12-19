<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="menudemo2.jsp" %>

<div >
<form action="searchdemo.jsp">
    
<center>
<table cellpadding="12">
<tr>
<td>Enter RollNo<b></td>
<td><input type="text" name="u1" id="t1" placeholder="Enter RollNo..."></td>
</tr>

<tr>
<th colspan="2"><input type="submit" name="b1" class="B" value="Search"></th>
</tr>



</table>

</form>
    <%
    String s1=request.getParameter("b1");
    if(s1!=null)
    {
    String s11=request.getParameter("u1");
    try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql:///urvashi?useSSL=false","root","root");
		 Statement st=con.createStatement();
	     ResultSet rs=  st.executeQuery("select * from insmarks1 where URNO='"+s11+"'");
             if(rs.next())
              {
    %>
           
             <table cellpadding="12">
                 
                <tr>
                 <td>RNo.</td>
                 <td><%=rs.getString(1)%></td>
                 </tr>
                 
                 <tr>
                 <td>Name</td>
                 <td><%=rs.getString(2)%></td>
                 </tr>
                 
                 <tr>
                 <td>Phy</td>
                 <td><%=rs.getString(3)%></td>
                 </tr>
                 
                 <tr>
                 <td>Chem</td>
                 <td><%=rs.getString(4)%></td>
                 </tr>
                 
                 <tr>
                 <td>Maths</td>
                 <td><%=rs.getString(5)%></td>
                 </tr>
                 
             
                 <%
                }
else
{
%>
<%="Invalid RollNo."%>
<%
}
}


    catch(Exception e)
    {
%>
<%=e%>
<%  
}
}
 %> 
    
 </center>
 </table>
</div>
</body>
</html>