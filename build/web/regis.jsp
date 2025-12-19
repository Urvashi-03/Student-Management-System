<html>
<head>
    <script type="text/javascript" src="valid.js"></script>
<link rel="stylesheet" href="abc.css"/>
</head>

<body>
    <%@include file="menudemo1.jsp" %>
    
<div >
<form action="regis1.jsp" name="form1">
<center>
<table cellpadding="12">
<caption><b>Registration Page</caption>
<tr>
<td>Enter Name<b></td>
<td><input type="text" name="un" id="t1" placeholder="Enter Name...">
<br>
    <font id="s1"></font>
</td>
</tr>
<tr>
<td>Enter Pass<b></td>
<td><input type="password" name="up" id="t2" placeholder="Enter Pass...">
<br>
    <font id="s2"></font>
</td>
</tr>
<tr>
<td>Enter Contact<b></td>
<td><input type="text" name="ucn" id="t1" placeholder="Enter Contact..." ></td>
</tr>
<tr>
<th colspan="2"><input type="button" class="B" value="Registration" onclick="valid()"></th>
</tr>


</table>
</center>
</form>
</div>
</body>
</html>