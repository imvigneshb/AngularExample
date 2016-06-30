<%-- 
    Document   : index
    Created on : Jun 30, 2016, 10:50:16 AM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 11</title>
        <script src="../js/angular.js"></script>
        <script src="../js/angular-route.js"></script>
    </head>
    <body>
        <h1>Angular Application for View</h1>
        <div ng-app="mainApp">
            <p>
                <a href="#addStudent">Add Student</a>
            </p>
            <p>
                <a href="#viewStudents">View Students</a>
            </p>
            <div ng-view></div>

            <script type="text/ng-template" id="addStudent.htm">
                <h2>Add Student</h2>
                {{message}}
            </script>

            <script type="text/ng-template" id="viewStudents.htm">
                <h2>View Students</h2>
                {{message}}
            </script>
        </div>

        <script>
                    var mainApp = angular.module("mainApp", ['ngRoute']);

                    mainApp.config(['$routeProvider', function ($routeProvider) {
                            $routeProvider.
                                    when('/addStudent', {
                                        templateUrl: 'addStudent.htm',
                                        controller: 'AddStudentController'
                                    }).
                                    when('/viewStudents', {
                                        templateUrl: 'viewStudents.htm',
                                        controller: 'ViewStudentsController'
                                    }).
                                    otherwise({
                                        redirectTo: '/addStudent'
                                    });
                        }]);
                    mainApp.controller('AddStudentController', function ($scope) {
                        $scope.message = "This page will be used  to display add student form";
                    });

                    mainApp.controller('ViewStudentsController', function ($scope) {
                        $scope.message = "This page will be used  to display All students";
                    });
        </script>
    </body>
</html>
