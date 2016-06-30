<%-- 
    Document   : index
    Created on : Jun 29, 2016, 4:29:48 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 5</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <div ng-app="mainApp" ng-controller="employeeController">
            <table>
                <tr>
                    <td>Enter First Name</td>
                    <td><input type="text" name="firstName" ng-model="Employee.firstName"/></td>
                </tr>
                <tr>
                    <td>Enter Last Name</td>
                    <td><input type="text" name="lastName" ng-model="Employee.lastName"/></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="radio" name="gender" value="Male" ng-model="Employee.gender"/> Male <input type="radio" name="gender" ng-model="Employee.gender" value="Female"/> Female </td>
                </tr>
                <tr>
                    <td>CTC/Year</td>
                    <td><input type="text" name="ctc" ng-model="Employee.ctc"/></td>
                </tr>
                <tr>
                    <td>{{Employee.fullName() | lowercase}}</td>
                </tr>
                <tr>
                    <td>{{Employee.getGender() | uppercase}}</td>
                </tr>
                <tr>
                    <td>{{Employee.getCTC() | currency:"&#8377;":2}}</td>
                </tr>
            </table>
        </div>
        <script>
            var mainApp = angular.module("mainApp", []);
            mainApp.controller('employeeController', function ($scope) {
                $scope.Employee = {
                    firstName: '',
                    lastName: '',
                    gender: '',
                    ctc: '',
                    fullName: function () {
                        var employeeObject;
                        employeeObject = $scope.Employee;
                        //return employeeObject.firstName + " " + employeeObject.lastName;
                        return  employeeObject.firstName + " " + employeeObject.lastName;
                    }, getGender: function () {
                        var employeeObject;
                        employeeObject = $scope.Employee;
                        return employeeObject.gender;
                    }, getCTC: function () {
                        return $scope.Employee.ctc;
                    }

                }
            });
        </script>
    </body>
</html>
