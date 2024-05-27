<%-- 
    Document   : confirmation
    Created on : 17-Feb-2023, 12:30:18 am
    Author     : Akash
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%
// Set up the database connection
String url = "jdbc:mysql://database-1.c9e4m4i4qhae.ap-south-1.rds.amazonaws.com:3306/tms";
String username = "root";
String password = "root1234";
Connection con = DriverManager.getConnection(url, username, password);

// Get the list of booked seats from the database
String query = "SELECT * FROM seats WHERE available = 0";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(query);

// Create a list of the booked seat numbers
List<String> bookedSeats = new ArrayList<>();
while (rs.next()) {
    int seatRow = rs.getInt("rows");
    int seatCol = rs.getInt("columns");
    String seatNumber = "Row " + seatRow + ", Seat " + seatCol;
    bookedSeats.add(seatNumber);
}

// Close the database connection
rs.close();
stmt.close();
con.close();

// Display the confirmation message with the list of booked seats
%>
<html>
<head>
    <title>Booking Confirmation</title>
</head>
<body>
    <h1>Booking Confirmation</h1>
    <p>Your booking has been confirmed. The following seats have been reserved:</p>
    <ul>
        <% for (String seat : bookedSeats) { %>
            <li><%= seat %></li>
        <% } %>
    </ul>
</body>
</html>