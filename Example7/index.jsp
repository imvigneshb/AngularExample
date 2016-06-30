<%-- 
    Document   : index
    Created on : Jun 29, 2016, 5:51:25 PM
    Author     : vigneshwaran.b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 6</title>
        <script src="../js/angular.js"></script>
    </head>
    <body>
        <h2>Angular Sample Application</h2>
        <div ng-app="mainApp" ng-controller="studentController">
            <table border="0">
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstName"  value="" ng-model="student.firstName" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastName"  value="" ng-model="student.lastName" /></td>
                </tr>
                <tr>
                    <td>Fees</td>
                    <td><input type="text" name="fees"  value="" ng-model="student.fees" dir="rtl"/></td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td><input type="text" name="subject"  value="" ng-model="subjectName" /></td>
                </tr>
            </table>
            <br/>
            <table border = "0">
                <tr>
                    <td>Name in Upper Case: </td><td>{{student.fullName() | uppercase}}</td>
                </tr>

                <tr>
                    <td>Name in Lower Case: </td><td>{{student.fullName() | lowercase}}</td>
                </tr>

                <tr>
                    <td>fees: </td><td>{{student.fees| currency}}
                    </td>
                </tr>

                <tr>
                    <td>Subject:</td>

                    <td>
                        <ul>
                            <li ng-repeat = "subject in student.subjects| filter: subjectName |orderBy:'marks'">
                                {{ subject.name + ', marks:' + subject.marks }}
                            </li>
                        </ul>
                    </td>
                </tr>
            </table>

        </div>
        <script>
            var mainApp = angular.module('mainApp', []);
            mainApp.controller('studentController', function ($scope, $filter) {
                $scope.$watch('fees', function (val) {
                    $scope.student.fees = $filter('currency')(val);
                });
                $scope.student = {
                    firstName: '',
                    lastName: '',
                    fees: '',
                    subjects: [
                        {name: 'English', marks: 100},
                        {name: 'Tamil', marks: 70},
                        {name: 'Maths', marks: 60}
                    ],
                    fullName: function () {
                        var detailsObject;
                        detailsObject = $scope.student;
                        return detailsObject.firstName + " " + detailsObject.lastName;
                    }
                }
            });
        </script>
    </body>
</html>
