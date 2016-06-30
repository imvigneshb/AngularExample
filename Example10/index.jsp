<%-- 
    Document   : index
    Created on : Jun 30, 2016, 10:27:57 AM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 10</title>
        <script src="../js/angular.js"></script>
        <style>
            table, th , td {
                border: 1px solid grey;
                border-collapse: collapse;
                padding: 5px;
            }

            table tr:nth-child(odd) {
                background-color: #f2f2f2;
            }

            table tr:nth-child(even) {
                background-color: #ffffff;
            }

        </style>
    </head>
    <body>
        <h1>Angular Ajax Application</h1>
        <div ng-app="mainApp" ng-controller="studentController">
            <table>
                <tr>
                    <th>Name</th>
                    <th>Roll No</th>
                    <th>Percentage</th>
                </tr>
                <tr ng-repeat="student in students">
                    <td>{{student.Name}}</td>
                    <td>{{student.RollNo}}</td>
                    <td>{{student.Percentage}}</td>
                </tr>
            </table>
        </div>

        <script>
            var mainApp = angular.module('mainApp', []);
            mainApp.controller('studentController', function ($scope, $http) {
                var url = 'data.json';
                $http.post(url).success(function (response) {
                    $scope.students = response;
                }).error(function (response) {
                    console.log(response);
                });
            });
        </script>
    </body>
</html>
