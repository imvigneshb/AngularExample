<%-- 
    Document   : index
    Created on : Jun 29, 2016, 3:03:52 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 2</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <div ng-app="" ng-init="nameList=[{name:'Vigneshwaran B',age:'25'}, {name:'Gandhi B', age:'25'}]">
            <div>
                <input type="text" name="sample" ng-model="displayName"/><br/>
                Welcome <span ng-bind="displayName"></span>!
            </div>
            <ol>
                <li ng-repeat="names in nameList">
                    {{'Name : ' + names.name + ', Age :' + names.age}}
                </li>
            </ol>
        </div>
    </body>
</html>
