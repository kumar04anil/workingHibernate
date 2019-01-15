<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <html>
   <head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Insert title here</title>
   </head>
   <body bgcolor="olive">
   <hr height="1"><h3><a href="productRegister">Register Product</a></h3>
   <hr><h3><a href="viewProduct">View Product</a></h3>
   </body>
   </html> --%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link href="./css/newstyle.css" rel="stylesheet" type="text/css">
   </head>
   <body>
      <div class="jumbotron text-center">
         <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
            <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
            <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
            <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
         </ul>
         <h1>Future Page Designing is Here</h1>
      </div>
     <!-- <div class="container">
   <div class="row main">
      <div class="main-login main-center">
         <p>Product registeration portal!</p>
         <form class="" method="post" action="#">
            <div class="form-group">
               <label for="name" class="cols-sm-2 control-label">Product Type</label>
               <div class="cols-sm-10">
                  <div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                     <input type="text" class="form-control customstyle" name="name" id="name"  placeholder="Enter your Name"/>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label for="email" class="cols-sm-2 control-label">Your Email</label>
               <div class="cols-sm-10">
                  <div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                     <input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label for="username" class="cols-sm-2 control-label">Username</label>
               <div class="cols-sm-10">
                  <div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                     <input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label for="password" class="cols-sm-2 control-label">Password</label>
               <div class="cols-sm-10">
                  <div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                     <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
               <div class="cols-sm-10">
                  <div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                     <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
                  </div>
               </div>
            </div>
            <div class="form-group ">
               <a href="https://deepak646.blogspot.com/" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a>
            </div>
         </form>
      </div>
   </div>
</div> -->
      <div class="page-content">
         <div class="col-lg-12">
            <div class="panel">
               <div class="collapseOne">
                  <form name="searchAccountForm" class="justify-content-center" novalidate>
                     <div class="panel-body panel-sub ui-droppable" my-loading-spinner="viewLoadingUserSearch">
                        <div class="form-group  col-xs-3">
                           <label class="cols-sm-2 control-label" translate=""> ProductType:</label>
                           <select class="form-control customstyle" data-ng-model="createAccount.accountInsuredType" name="insuredTypeType" required>
                              <option value="" translate="" style="align-content: center;">..:select:..</option>
                              <option value="Individual">Books</option>
                              <option value="Business">Grocery</option>
                              <option value="Individual">Textiles</option>
                              <option value="Business">Vehicle</option>
                              <option value="Individual">Individual</option>
                              <option value="Business">Business</option>
                           </select>
                        </div>
                        <div class="form-group  col-xs-3">
                           <label class="cols-sm-2 control-label" translate="">Name:</label>
                           <input type="text" class="form-control customstyle"  name="lastName" id="name" maxlength="32" placeholder="product Name"/>
                        </div>
                        <div class="form-group  col-xs-3">
                           <label class="cols-sm-2 control-label" translate="">Code:</label>
                           <input type="text" class="form-control customstyle"  name="code" id="code" data-ng-trim="true" placeholder="product Code" />
                        </div>
                        <div class="form-group  col-xs-3">
                           <label class="cols-sm-2 control-label" translate="">Price:</label>
                           <input type="text" class="form-control customstyle"  name="price" id="price" data-ng-trim="true" placeholder="product Price" />
                        </div>
                        <div class="form-group  col-xs-3">
                           <label class="cols-sm-2 control-label" translate="">Description:</label>
                           <textarea name="description" class="form-control customstyle" rows="3" cols="10" name="description" placeholder="Product Description"></textarea>
                        </div>
                        <div class="form-group  col-xs-3 ">
                           <input type="submit" class="form-control customstyle"  name="button"  value="submit"data-ng-model="createAccount.lastName" />
                        </div>
                        <div class="form-group  col-xs-3 ">
                           <input type="submit" class="form-control customstyle"  name="button" value="cancel" data-ng-model="createAccount.lastName" />
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </body>
</html>