<%-- 
    Document   : index
    Created on : Jun 29, 2016, 2:57:53 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 1</title>
        <script src="../js/angular.js" type="text/javascript"></script>
    </head>
    <body>
        <div ng-app="">
            <input type="text" ng-model="firstname"/><br/>
            Welcome <span ng-bind="firstname"></span> !
        </div>
    </body>
</html>
