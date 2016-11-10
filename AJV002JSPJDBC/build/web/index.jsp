<%-- 
    Document   : index
    Created on : Nov 10, 2016, 9:07:08 AM
    Author     : ruman dangol
--%>

<%@page import="com.leapfrog.ajv002jspjdbc.dao.impl.CourseDaoImpl"%>
<%@page import="com.leapfrog.ajv002jspjdbc.entity.Course"%>
<%@page import="com.leapfrog.ajv002jspjdbc.dao.CourseDao"%>
<%@page import="com.leapfrog.ajv002jspjdbc.dbutil.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
             
        <%
            try {
               
        %>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Fees</th>
                <th>Status</th>
                <th>Action</th>
            </tr>

            <%            
               
                CourseDao courseDao = new CourseDaoImpl();
                for (Course c : courseDao.getAll()) {
                
            %>
            <tr>
                <td><%=c.getId()%></td>
                <td><%=c.getName()%></td>
                <td><%=c.getFees()%></td>
                <td><%=c.isStatus()%></td>

                <td>
                    Edit
                    Delete
                </td>
            </tr>



            <%
                }

            %>
        </table>
        <%            } catch (ClassNotFoundException ce) {
                out.println(ce.getMessage());
            } catch (SQLException se) {
                out.println(se.getMessage());
            }
        %>
        </div>
    </body>
</html>
