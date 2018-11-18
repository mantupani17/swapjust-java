/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function testData(tid)
{
    //alert(tid.value);
    var d = tid.value;
    var re = /[a-zA-Z]/;
    if(!re.test(d))
    {
        alert("invalid");
        tid.focus();
        return false;        
    }
   return true;
}
