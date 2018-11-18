/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function number(c)
{
    var v=c.value;
    var g="green";
    var r="red";
    var x=v.length;
    if(v==null || v=="")
      {
          c.focus();
         c.style.borderColor=r;         
          return false;
          }
      
      else  if(isNaN(v))
 
  {
      c.focus();
      c.style.borderColor=r;
      return false;
      
  }
  else if(x==10){
        c.style.borderColor=g;
          return true;        
      }
      else{
        c.focus();
        c.style.borderColor=r;
        return false;
      }
  }
function textOnly(d)
{
 var g="green";
 var r="red";
 var e=d.value;
 var reg= /^[a-zA-z]{5,30}$/;
    
    if(e==null || e=="")
    {
        d.focus();
        d.style.borderColor=r;
        return false;
       
    }
    else if(reg.test(e))
    {
        d.style.borderColor=g;
        return true;
        
    }
    else
    {
        d.focus();
        d.style.borderColor=r;
        return false;
    }
}
function emaill(t)
{
    var f=t.value;
    var g="green";
    var r="red";
    var reg=/^([a-zA-Z0-9_\-\.])+\@([a-zA-Z0-9])+\.([A-Za-z]{2,3})$/;
     if(f==null || f=="")
    {
        t.focus();
        t.style.borderColor=r;
        return false; 
    }
    else if(reg.test(f))
    {
        t.style.borderColor=g;
        return true;
        
    }
    else
    {
        t.focus();
        t.style.borderColor=r;
        return false;
    }
    
}
function mrPrice(i)
{
   var a=i.value;
    var g="green";
    var r="red";
    var reg1 =/^[0-9]{1,8}$/;
    var reg2=/^([0-9])+\.([0-9]){1,2}$/;
    if(a==null || a=="")
    {
       i.focus();
       i.style.borderColor=r;
       return false;  
    }
    else if(reg1.test(a) || reg2.test(a))
    {
       
       i.style.borderColor=g; 
       return true;
    }
    else
    {
      i.focus();
      i.style.borderColor=r; 
      return true;  
    }
   
    
}
function Pincod(lo)
{
    var m=lo.value;
    var x=m.length;
    var g="green";
    var r="red";
    var reg=/^[0-9]{6}/;
     if(m==null || m=="")
    {
      lo.focus();
      lo.style.borderColor=r;
      return false;
    }
    else if(reg.test(m))
    {
        lo.style.borderColor=g;
        return true;
    }
    /*else if(x==6)
    {
        lo.focus();
        lo.style.borderColor=r;
        return false;
    }*/
    else
    {
        lo.focus();
        lo.style.borderColor=r;
        return false;
    }
}
function passM(pas1)
{
    var p1=pas1.value;
    var g="green";
    var r="red";
    var reg=/^(?=.*[0-9])(?=.*[!@#$%&*])[a-zA-Z0-9!@#$%&*]{8,10}$/;
    if(p1==null || p1=="")
    {
      pas1.focus();
      pas1.style.borderColor=r;
      return false;
    }
    else{
   if(reg.test(p1))
    {
       pas1.style.borderColor=g;
       return true;  
    }
    else 
    {
        pas1.focus();
        pas1.style.borderColor=r;
        return false;
    }
    }
}
function passMat(x1)
{
    var x=document.getElementById('pas1').value;
    var x2=x1.value;
     var g="green";
    var r="red";
    if(x != x2)
    {
      x1.focus();
      x1.style.borderColor=r;
      return false;
    }
    else
    {
      x1.style.borderColor=g;
      return true;
    }
    
}
function chkBox()
{

    var x=document.getElementById('mob').value;
    document.getElementById('altmb').value=x;
   //document.getElementById('altmb').value=x;
}
