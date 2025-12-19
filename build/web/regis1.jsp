<%@page import="java.sql.*" %>
<%
String s1=request.getParameter("un");
String s2=request.getParameter("up");
String s3=request.getParameter("ucn");



        try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql:///urvashi?useSSL=false","root","root");
		 Statement st=con.createStatement();
		 st.executeUpdate("insert into regis1 values('"+s1+"','"+s2+"','"+s3+"')");
		 con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
		
response.sendRedirect("login.jsp");		
%>