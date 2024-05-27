<%-- 
    Document   : searching
    Created on : 03-Feb-2023, 11:02:00 pm
    Author     : Akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
    <head>
        <title>Searching Movie</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

            body{
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 10px;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }

            .content-table {
                border-collapse: collapse;
                margin: 25px 0;
                font-size: 0.9em;
                min-width: 400px;
                border-radius: 5px 5px 0 0;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            }

            .content-table thead tr {
                background-color: #009879;
                color: #ffffff;
                text-align: left;
                font-weight: bold;
            }

            .content-table th,
            .content-table td {
                padding: 12px 15px;
            }

            .content-table tbody tr {
                border-bottom: 1px solid #dddddd;
            }

            .content-table tbody tr:nth-of-type(even) {
                background-color: #f3f3f3;
            }

            .content-table tbody tr:last-of-type {
                border-bottom: 2px solid #009879;
            }

            .content-table tbody tr.active-row {
                font-weight: bold;
                color: #009879;
            }



        </style>

    </head>
    <body>
        <%
            try {

                String connectionURL = "jdbc:mysql//database-1.c9e4m4i4qhae.ap-south-1.rds.amazonaws.com:3306/tms";
                Connection connection = null;

                Statement statement = null;
                ResultSet rs = null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();

                connection = DriverManager.getConnection(connectionURL, "root", "root1234");
                String s = (String) request.getAttribute("msg");
                statement = connection.createStatement();
                String QueryString = "SELECT * from movies where MOVIENAME like " + "\"%" + s + "%\"";
                rs = statement.executeQuery(QueryString);
        %>
        <TABLE cellpadding="15" border="1" style="background-color: #FFFFE0;"  class="content-table">
            <tr style="background-color: #BDB76B;">
                <td><strong style="font-family: Poppins,sans-serif;">Movie Name</strong></td>
                <td><strong style="font-family: Poppins,sans-serif;">Duration(in min)<strong></td>
                            <td><strong style="font-family: Poppins,sans-serif;">Genre</strong></td>
                            <td><strong style="font-family: Poppins,sans-serif;">IMDB Rating</strong></td>
                            </tr>
                            <%
                                while (rs.next()) {
                            %>
                            <TR>
                                <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(1)%></TD>
                                <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(2)%></TD>
                                <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(3)%></TD>
                                <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(4)%></TD>
                            </TR>

                            <% } %>
                            <%
                                // close all the connections.
                                rs.close();
                                statement.close();
                                connection.close();
                            } catch (Exception ex) {
                            %>
                            </font>
                            <font size="+3" color="red"></b>
                                <%
                                        out.println("Unable to connect to database.");
                                    }
                                %>
                            </TABLE><TABLE>
                            <TR>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                        </TABLE>
                    </font>
                    </body>
                    </html>

