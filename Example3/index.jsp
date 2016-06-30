<%-- 
    Document   : index
    Created on : Jun 29, 2016, 3:13:48 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 3</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <div ng-app="" ng-init="student = {firstName:'Vigneshwaran',lastName:'B',RollNo:'116MC254',marks:{
                maths:50,english:25
            }
            }">
            <p>Hello {{student.firstName + " " + student.lastName}}</p>
            <p>Roll No:{{student.RollNo}}</p>
            <p>Marks : </p>
            <p>Maths : {{student.marks.maths}}</p>
            <p>english : {{student.marks.english}}</p>
            <p>Total Marks : {{(student.marks.maths) + (student.marks.english)}}</p>
        </div>
    </body>
</html>
