<!DOCTYPE>
<%@ page language="java" import="java.util.*" %>
<%@ page import="java.io.*" %>
 
<%@ page import = "java.util.ResourceBundle" %>


<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 <link rel="stylesheet" href="css/login.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="javascripts/login.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
 <script type="text/javascript" src="javascripts/messageResource.js"></script>
 
 </head>
<title> Login Page </title>
<h1 style="color:white">Login Form</h1>

<center>

<section class="login">
<img src="images/key.png" class="a"></img>
<body ng-app="myapp" ng-controller="mainController">  




<% ResourceBundle resource = ResourceBundle.getBundle("console");

%>
<form name="userForm" ng-submit="submitForm()" novalidate>

<table border="0"> 
  <div>
  
     <tr>
	     <td>
	         <label for="username">Email Id:
	   </td>
	   <td>
			 <div class="form-group" ng-class="{ 'has-error' : userForm.email.$invalid && (userForm.email.$dirty || submitted)}">
              <input type="email" name="email" class="form-control" ng-model="email" placeholder="Your Email Address" ng-required="true">
              <p ng-show="userForm.email.$error.required && (userForm.email.$dirty || submitted)" class="help-block"><%=resource.getString("property1") %></p>
              <p ng-show="userForm.email.$error.email && (userForm.email.$dirty || submitted)" class="help-block"><%=resource.getString("property1") %></p>
              </div>
    	     </label>
		</td>
		    
     </tr>    
      <tr>
	       <td>  
		        <label for="password">Password: 
		   </td>
		   <td>
		        <div class="form-group" ng-class="{ 'has-error' : userForm.password.$invalid && (userForm.password.$dirty || submitted)}">
           <input type="Password" name="password" class="form-control" ng-model="password" placeholder="Your Password" ng-required="true" ng-maxlength="8" maxlength="8" ng-pattern="/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*$/" >
        <p ng-show="userForm.password.$error.required && (userForm.password.$dirty || submitted)" class="help-block"><%=resource.getString("property2") %></p>
		 <p ng-show="userForm.password.$error.maxlength && (userForm.password.$dirty || submitted)" class="help-block"><%=resource.getString("property3") %></p>
		  <p ng-show="userForm.password.$error.pattern && (userForm.password.$dirty || submitted)" class="help-block"><%=resource.getString("property3") %></p>
      </div>
    	         </label>
		   </td>
	  </tr>
	         <span></span>
     <tr> 
	      <td> 
		  <input type="submit" value="Login" id="buttons">
		  </form>
		  </td>
          <td> 
		  
		  <input type="button" value="Register" id="buttons1" ng-click="regForm()">
		  
		  </td>
	  </tr>
	 </div>
    
	</table>
	</body>
</section>