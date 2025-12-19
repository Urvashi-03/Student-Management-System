<%@page import="java.sql.*" %>
<%
String s2=request.getParameter("b2");
if(s2!=null)
{
String s21=request.getParameter("n1");
String s22=request.getParameter("n2");
String s23=request.getParameter("n3");
String s24=request.getParameter("n4");
String s25=request.getParameter("n5");


        try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql:///urvashi?useSSL=false","root","root");
		 Statement st=con.createStatement();
	    int x=  st.executeUpdate("update insmarks1 set UNAME='"+s22+"',UPHY='"+s23+"',UCHEM='"+s24+"',UMATHS='"+s25+"' where URNO='"+s21+"'");
		 
		response.sendRedirect("ShowAll.jsp");
		 
		 
		}
		catch(Exception e1)
		{
			out.println(e1);
		}			

}

%>
<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="menudemo2.jsp" %>

<div >
<form action="updatedemo.jsp">
    
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
    <form action="updatedemo.jsp">
           
             <table cellpadding="12">
                 
                <tr>
                 <td>RNo.</td>
                 <td><input type="text" name="n1" value="<%=rs.getString(1)%>"></td>
                 </tr>
                 
                 <tr>
                 <td>Name</td>
                  <td><input type="text" name="n2" value="<%=rs.getString(2)%>"></td>
                 </tr>
                 
                 <tr>
                 <td>Phy</td>
                  <td><input type="text" name="n3" value="<%=rs.getString(3)%>"></td>
                 </tr>
                 
                 <tr>
                 <td>Chem</td>
                  <td><input type="text" name="n4" value="<%=rs.getString(4)%>"></td>
                 </tr>
                 
                 <tr>
                 <td>Maths</td>
                  <td><input type="text" name="n5" value="<%=rs.getString(5)%>"></td>
                 </tr>
                 
                 
                 <tr>
                     <th colspan="2"><input type="submit" name="b2" class="B" value="Update"></th>
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