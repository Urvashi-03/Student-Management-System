<%@page import="java.sql.*" %>

    <%
    String s1=request.getParameter("u1");
    try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql:///urvashi?useSSL=false","root","root");
		 Statement st=con.createStatement();
	    int x=  st.executeUpdate("delete from insmarks1 where URNO='"+s1+"'");
         response.sendRedirect("ShowAll.jsp");   
con.close();
                }
    catch(Exception e)
    {
    out.println(e);
    }
    %>
           
            