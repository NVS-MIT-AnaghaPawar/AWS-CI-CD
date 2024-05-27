<%-- 
    Document   : timepassdisplay
    Created on : 03-Feb-2023, 6:19:05 pm
    Author     : Akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
    <head>
        <title>Display All Users</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css"> 
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

            
            body{
                           background: linear-gradient(135deg, #71b7e6, #9b59b6);
     
            }
            .forbutton{
                display:flex;
                  justify-content: center;
                align-items: center;
                                padding: 10px;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);


            }
            .test{
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
        <div class="test">
            <%
                try {

                    String connectionURL = "jdbc:mysql://database-1.cbk04ukggkcd.ap-south-1.rds.amazonaws.com:3306/tms";
                    Connection connection = null;

                    Statement statement = null;
                    ResultSet rs = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();

                    connection = DriverManager.getConnection(connectionURL, "root", "root1234");

                    statement = connection.createStatement();
                    String QueryString = "SELECT * from registertable";
                    rs = statement.executeQuery(QueryString);
            %>
            <TABLE cellpadding="15" border="1" style="background-color: #FFFFE0;" class="content-table">
                <tr style="background-color: #BDB76B;">
                    <td><strong style="font-family: Poppins,sans-serif;">Full Name</strong></td>
                    <td><strong style="font-family: Poppins,sans-serif;">Username<strong></td>
                                <td><strong style="font-family: Poppins,sans-serif;">Email Address</strong></td>
                                <td><strong style="font-family: Poppins,sans-serif;">Password</strong></td>
                                <td><strong style="font-family: Poppins,sans-serif;">Phone No.</strong></td>
                                </tr>
                                <%
                                    while (rs.next()) {
                                %>
                                <TR class>
                                    <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(1)%></TD>
                                    <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(2)%></TD>
                                    <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(3)%></TD>
                                    <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(4)%></TD>
                                    <TD style="font-family: Poppins,sans-serif;"><%=rs.getString(5)%></TD>
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
                        </div>
                        <button type="submit" onclick="window.print()" class="submitBtn" style="width: 100px; height: 40px; color:green; background-color:yellow;margin-left:auto;margin-right:auto;display:block;margin-bottom:0%">Print All</button>

                        </body>
                        </html>
