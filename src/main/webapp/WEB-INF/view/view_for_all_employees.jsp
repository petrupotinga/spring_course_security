<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h3>Information for all employees</h3>
<br><br>

<security:authorize access="hasRole('HR')">
    <input type="button" value="Salary"
    onclick="window.location.href = 'hr_info'">
    Only for HR staff
</security:authorize>

<br><br>

<security:authorize access="hasRole('MANAGER')">
    <input type="button" value="Performance"
    onclick="window.location.href = 'manager_info'">
    Only for Managers
</security:authorize>

<br><br>

<security:authorize access="hasRole('DIRECTOR')">
    <input type="button" value="All info"
    onclick="window.location.href = 'director_info'">
    Only for Director
</security:authorize>


</body>
</html>
