<%-- 
    Document   : index
    Created on : Jun 30, 2016, 2:23:20 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 12</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <div ng-app="mainApp" ng-controller="shapeController">
            <p>{{message}} <br/> {{type}}</p>

            <div ng-controller="circleController">
                <p>{{message}} <br/> {{type}}</p>
            </div>

            <div ng-controller="squareController">
                <p>{{message}} <br/> {{type}}</p>
            </div>
        </div>
        <script>
                    var mainApp = angular.module('mainApp', []);

                    //Shape Controller
                    mainApp.controller('shapeController', function ($scope) {
                        $scope.message = "Im in Shape Controller";
                        $scope.type = "Shape";
                    });

                    //Circle Controller
                    mainApp.controller('circleController', function ($scope) {
                        $scope.message = "Im in Circle Controller";
                        //$scope.type = "Shape";
                    });

                    //Square Controller
                    mainApp.controller('squareController', function ($scope) {
                        $scope.message = "Im in Square Controller";
                        $scope.type = "Square";
                    });
        </script>
    </body>
</html>
