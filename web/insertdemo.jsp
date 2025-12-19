<html>
<head>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>
    <%@include file="menudemo2.jsp" %>

<div >
<form action="insertdemo1.jsp">
<center>
<table cellpadding="12">
<tr>
<td>Enter RollNo<b></td>
<td><input type="text" name="u1" id="t1" placeholder="Enter RollNo..."></td>
</tr>

<tr>
<td>Enter Name<b></td>
<td><input type="text" name="u2" id="t1" placeholder="Enter Name..."></td>
</tr>

<tr>
<td>Enter Phy<b></td>
<td><input type="text" name="u3" id="t1" placeholder="Enter Phy..."></td>
</tr>

<tr>
<td>Enter Chem<b></td>
<td><input type="text" name="u4" id="t1" placeholder="Enter Chem..."></td>
</tr>

<tr>
<td>Enter Maths<b></td>
<td><input type="text" name="u5" id="t1" placeholder="Enter Maths..."></td>
</tr>

<tr>
<th colspan="2"><input type="submit" class="B" value="Insert"></th>
</tr>
</table>
</center>
</form>
</div>
</body>
</html>