<%-- 
    Document   : index
    Created on : Jun 29, 2016, 7:07:29 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 8</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <div ng-app="mainApp">
            <input type="checkbox" ng-model="disableButton" /> Disable Button
            <button ng-disabled="disableButton" >Click Me!</button><br/>
            <input type="checkbox" ng-model="showButton" /> Show Button
            <button ng-show ="showButton" >Click Me!</button><br/>

            <input type="checkbox" ng-model="hideButton" /> Show Button
            <button ng-hide ="hideButton" >Click Me!</button><br/>

        </div>
        <script>
            angular.module('mainApp', []);
        </script>
    </body>
</html>
