<%@page import="java.sql.*" %>
<%
String s1=request.getParameter("un");
String s2=request.getParameter("up");
try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql:///urvashi?useSSL=false","root","root");
		 Statement st=con.createStatement();
		ResultSet rs= st.executeQuery("select *from regis1 where UNAME='"+s1+"' AND UPASS='"+s2+"' ");
		 
                /*Cookie ck=new Cookie("un",s1);
                ck.setMaxAge(60*30);
                response.addCookie(ck);
		*/
                
              
             
                if(rs.next())
		{
                    response.sendRedirect("menudemo.jsp");		
		}
		else
		{
			response.sendRedirect("login.jsp?s1=invalid username and password");		
		}
		
		 con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
%>