function demo()
{
   var x=document.getElementById('t1').value;
   if(x.length>=3)
   {
       return true;
   }
   else
   {
       document.getElementById('s1').innerHTML="length is less than 3";
       return false;
   }
}

function demo1()
{
    var x=document.getElementById('t2').value;
    if(x.length>=3)
    {
        return true;
    }
    else
    {
        document.getElementById('s2').innerHTML="length is less than 3";
        return false;
        
    }
}

function valid()
{
  document.getElementById('s1').innerHTML="";  
  document.getElementById('s2').innerHTML=""; 
  if(demo()&& demo1())
  form1.submit();
}

