<%-- 
    Document   : index
    Created on : Jun 29, 2016, 4:05:36 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 4</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <div ng-app="mainApp" ng-controller="studentController">
            Enter First Name :<input type="text" name="firstName" ng-model="student.firstName"/>
            <br/>
            Enter Last Name :<input type="text" name="lastName" ng-model="student.lastName"/>
            <br/>
            <span>{{student.fullName()}}</span>
        </div>
        <script>
            var mainApp = angular.module("mainApp", []);
            mainApp.controller('studentController', function ($scope) {
                $scope.student = {
                    firstName: "",
                    lastName: "",
                    fullName: function () {
                        var studentObject;
                        studentObject = $scope.student;
                        return studentObject.firstName + " " + studentObject.lastName;
                    }
                }
            });
        </script>
    </body>
</html>
