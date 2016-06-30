<%-- 
    Document   : index
    Created on : Jun 30, 2016, 2:50:53 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 13</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <h1>Angular Service & Factory Application</h1>
        <div ng-app="mainApp" ng-controller="CalController">
            <p>Enter a Number: <input type="number" ng-model="number"/>&nbsp;&nbsp;&nbsp;
                <button ng-click="square()">X<sup>2</sup></button></p>
            <p>{{result}}</p>
        </div>
        <script>
                    var mainApp = angular.module('mainApp', []);
                    mainApp.factory('MathService', function () {
                        var factory = {};
                        factory.multiply = function (a, b) {
                            return a * b
                        };
                        return factory;
                    });

                    mainApp.service('CalcService', function (MathService) {
                        this.square = function (a) {
                            return MathService.multiply(a, a);
                        };
                    });

                    mainApp.controller('CalController', function ($scope, CalcService) {
                        $scope.square = function () {
                            $scope.result = CalcService.square($scope.number);
                        };
                    });
        </script>
    </body>
</html>