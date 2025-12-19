<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="menudemo1.jsp" %>

<div >
    
<form action="login1.jsp">
<center>
    <%
        String s11=request.getParameter("s1");
        if(s11!=null)
        {
            %>
            <%= s11%>
         <%}%>
        
<table cellpadding="12">
<caption><b>Login Page</caption>
<tr>
<td>Enter Name</td>
<td><input type="text" name="un" id="t1" placeholder="Enter Name..."></td>
</tr>
<tr>
<td>Enter Pass<b></td>
<td><input type="password" name="up" id="t1" placeholder="Enter Pass..."></td>
</tr>
<tr>
<th colspan="2"><input type="submit" class="B" value="Login"></th>
</tr>
</table>
</center>
</form>
</div>
</body>
</html>