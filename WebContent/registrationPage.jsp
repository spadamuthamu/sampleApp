<html lang="en">
<%@ page language="java" import="java.util.*" %>
<%@ page import="java.io.*" %>
 
<%@ page import = "java.util.ResourceBundle" %>

<head>
<link href="css/registration.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="javascripts/registration.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
</head>
<center>
<div class="testbox">
  <h1 style="color:blue">Registration Form</h1>
  
<body ng-app="myapp" ng-controller="mainController">    

<% ResourceBundle resource = ResourceBundle.getBundle("console");

%>




  <div>
 
 <form name="userForm" ng-submit="submitForm()" novalidate>
  <table border="0">
  <br>

  <tr>
 <div class="form-group" ng-class="{ 'has-error' : userForm.name.$invalid && (userForm.name.$dirty || submitted)}">
        <input type="text" name="name" class="form-control" ng-model="name" placeholder="Your Name" ng-required="true" ng-minlength="2" ng-maxlength="20" >
        <p ng-show="userForm.name.$error.required && (userForm.name.$dirty || submitted)" class="help-block"><%=resource.getString("property4") %></p>
        <p ng-show="userForm.name.$error.minlength && (userForm.name.$dirty || submitted)" class="help-block"><%=resource.getString("property5") %></p>
        <p ng-show="userForm.name.$error.maxlength && (userForm.name.$dirty || submitted)" class="help-block"><%=resource.getString("property6") %></p>
      </div>
</tr>
    <tr>
  <div class="form-group" ng-class="{ 'has-error' : userForm.email.$invalid && (userForm.email.$dirty || submitted)}">
              <input type="email" name="email" class="form-control" ng-model="email" placeholder="Your Email Address" ng-required="true">
              <p ng-show="userForm.email.$error.required && (userForm.email.$dirty || submitted)" class="help-block"><%=resource.getString("property7") %>.</p>
              <p ng-show="userForm.email.$error.email && (userForm.email.$dirty || submitted)" class="help-block"><%=resource.getString("property1") %>.</p>
              </div>
</tr>
 <tr>
     <div class="form-group" ng-class="{ 'has-error' : userForm.password.$invalid && (userForm.password.$dirty || submitted)}">
           <input type="Password" name="password" class="form-control" ng-model="password" placeholder="Your Password" ng-required="true" ng-maxlength="8" maxlength="8" ng-pattern="/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*$/" >
        <p ng-show="userForm.password.$error.required && (userForm.password.$dirty || submitted)" class="help-block"><%=resource.getString("property2") %></p>
		 <p ng-show="userForm.password.$error.maxlength && (userForm.password.$dirty || submitted)" class="help-block"><%=resource.getString("property3") %></p>
		  <p ng-show="userForm.password.$error.pattern && (userForm.password.$dirty || submitted)" class="help-block"><%=resource.getString("property3") %></p>
      </div>

</tr><br>
<tr>
 <div class="form-group" ng-class="{ 'has-error' : userForm.terms.$invalid && (userForm.terms.$dirty || submitted)}">
        <label>Accept Terms & Conditions</label>
        <input type="checkbox" value="" name="terms" ng-model="user.terms" ng-required="true" />
        <p ng-show="userForm.terms.$error.required && (userForm.terms.$dirty || submitted)" class="help-block"><%=resource.getString("property8") %></p>
      </div>
</tr><tr></tr>
<tr><center><input type="submit" value="submit" id="button"/></center></tr>
</table>
</form>
</div>
 </div>
 </body>
</center>
</html>