
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="javascripts/registration.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="css/updateProfile.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
</head>

<div class="testbox">

  <h1>Customer Information</h1>
  <body ng-app="myApp3">    
  <div ng-controller="myCtrl3">


  <form>
      <hr>
    
  <hr>

  <tr><td><label id="icon" for="name"><i class="fa fa-user" aria-hidden="true"></i></label>
  <input type="text" name="fname" ng-model="fname" id="name" placeholder="FirstName" required/></td></tr>
 <tr><td> <label id="icon" for="name"><i class="fa fa-user" aria-hidden="true"></i></label>
  <input type="text" name="lname"  ng-model="lname"id="name" placeholder="LastName" required/></td></tr>
  <tr><td><label id="icon" for="name"><i class="fa fa-calendar" aria-hidden="true"></i></label>
  <input type="text" name="dob"  ng-model="dob" id="name" placeholder="DateOfBirth" required/></td></tr><br><br>
 <tr><td> <div class="gender">
    <input type="radio" value="None" id="male" name="gender"  ng-model="gender" checked/>
    <label for="male" class="radio" chec>Male</label>
    <input type="radio" value="None" id="female" name="gender" ng-model="gender" />
    <label for="female" class="radio">Female</label>
	</div> </td></tr>
	 <tr><td><label id="icon" for="name"><i class="fa fa-home" aria-hidden="true"></i></label>
  <input type="text" name="addr" ng-model="addr"id="name" placeholder="Address" required/></td></tr>
  
  <tr><td> <label id="icon" for="name"><i class="material-icons">&#xe567;</i></label>
  <input type="text" name="city" ng-model="city"id="name" placeholder="City" required/></td></tr>
 <tr><td> <label id="icon" for="name"><i class="fa fa-sort-numeric-asc" aria-hidden="true"></i></label>
  <input type="text" name="zip" ng-model="zip" id="name" placeholder="ZipCode" required/></td></tr>
 <br><br><br>
 
  <center> <tr><td><a href="#" class="button" ng-click="submit()">Update</a></td></tr> </center>
   
  </form>
 
</div>
</body>
</html>