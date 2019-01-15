<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm() {
  
  var pcategory = document.forms["myForm"]["p_category"].value;
  var pname = document.forms["myForm"]["p_name"].value;
  var pcode = document.forms["myForm"]["p_code"].value;
  var pprice = document.forms["myForm"]["p_price"].value;
  
  if(pcategory == ""){
    alert("Product Category is mandatory");
    return false;
  }
  
  if (pname == "") {
    alert("Product Name is mandatory");
    return false;
  }
  if(pname.trim().length != pname.length){
    alert("Spaces are not allowed at the ends of Product Name");
    return false;
  }

  if (pcode == "") {
    alert("Product Code is mandatory");
    return false;
  }
  if (pcode != "") {
  
        var TCode = pcode;
      for(var i=0; i<TCode.length; i++)
      {
        var char1 = TCode.charAt(i);
        var cc = char1.charCodeAt(0);

        if((cc>47 && cc<58) || (cc>64 && cc<91) || (cc>96 && cc<123))
        {

        }
        else {
         alert('Input is not alphanumeric');
         return false;
        }
      }
      //return true;
  }
  
  if (pprice == "") {
    alert("Product Price is mandatory");
    return false;
  }  
 if (pprice != "") {
      var TCode = pprice;
      for(var i=0; i<TCode.length; i++)
      {
        var char1 = TCode.charAt(i);
        var cc = char1.charCodeAt(0);

        if((cc>47 && cc<58 || cc == "."))
        {
        }
        else {
         alert('Input is not numeric');
         return false;
        }
      }
    // return true;
  }
  
    if (pprice > 100000) {
    alert("Product Price should be less than 100000");
    return false;
  }

}
</script>
</head>
<body bgcolor="aqua">

<form name="myForm" action="saveProduct" onsubmit="return validateForm()" method="post" modelAttribute="productModel">
 <h2 align="center">Product Registeration Window</h2>
  <table border="1" align="center">
  <tr><td>Product Category:</td>
   <td><select name="p_category">
   	<option value="">Select</option>
    <option value="Industrial">Industrial</option>
    <option value="Electronics">Electronics</option>
    <option value="Books">Books</option>
    <option value="Grocery">Grocery</option>
    <option value="Kitchen">Kitchen</option>
  </select><br><br>
  </td></tr>
  
  <tr><td>Product Name:</td><td> <input type="text" name="p_name" maxlength=50></td></tr>
 
  <tr><td>Product Code:</td><td> <input type="text" name="p_code" maxlength=8></td></tr>
  
  <tr><td>Product Price:</td><td> <input type="text" name="p_price"></td></tr>
  
  <tr><td>Product Description:</td><td><textarea rows="4" cols="50" name="p_description" maxlength="100"> </textarea></td></tr>
    
  <tr><td colspan="2" align="center"><input type="submit" value="Submit"></td></tr>
  </table>
  
</form>

</body>
</html>