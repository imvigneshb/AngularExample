<%-- 
    Document   : index
    Created on : Jun 30, 2016, 9:37:29 AM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 9</title>
        <script src="../js/angular.js" ></script>
        <style>
            table,th,td{
                border: 1px solid grey;
                border-collapse: collapse;
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <h1>Angular JS Application</h1>
        <div ng-app="mainApp" ng-controller="studentController">
            <form name="studentForm" novalidate>
                <table border="0">
                    <tr>
                        <td>Enter First Name :</td>
                        <td>
                            <input type="text" name="firstName" ng-model="firstName" required/>
                            <span style="color: red" ng-show="studentForm.firstName.$dirty && studentForm.firstName.$invalid">
                                <span ng-show="studentForm.firstName.$error.required">First Name is Required</span>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Last Name :</td>
                        <td>
                            <input type="text" name="lastName" ng-model="lastName" required/>
                            <span style="color: red" ng-show="studentForm.lastName.$dirty && studentForm.lastName.$invalid">
                                <span ng-show="studentForm.lastName.$error.required">Last Name is Required</span>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Email :</td>
                        <td>
                            <input type="email" name="email" ng-model="email" required/>
                            <span style="color: red" ng-show="studentForm.email.$dirty && studentForm.email.$invalid">
                                <span ng-show="studentForm.email.$error.required">Email is Required</span>
                                <span ng-show="studentForm.email.$error.email">Email is Invalid</span>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button ng-click="reset()" >Reset</button>
                        </td>
                        <td>
                            <button ng-disabled="studentForm.firstName.$dirty && studentForm.firstName.$invalid
                                                || studentForm.lastName.$dirty && studentForm.lastName.$invalid
                                                || studentForm.email.$dirty && studentForm.email.$invalid"
                                    ng-click="submit()">Submit</button>
                        </td>
                    </tr>
                </table>
                <script>
                            var mainApp = angular.module("mainApp", []);
                            mainApp.controller('studentController', function ($scope) {
                                $scope.reset = function () {
                                    $scope.firstName = '';
                                    $scope.lastName = '';
                                    $scope.email = '';
                                };

                                $scope.submit = function () {
                                   alert($scope.firstName + " " + $scope.lastName + " " + $scope.email);
                                };

                                $scope.reset();
                            });
                </script>
            </form>
        </div>

    </body>
</html>
