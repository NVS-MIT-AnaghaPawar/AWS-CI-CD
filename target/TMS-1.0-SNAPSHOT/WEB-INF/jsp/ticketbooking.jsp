<%-- 
    Document   : ticketbooking
    Created on : 17-Feb-2023, 12:29:32 am
    Author     : Akash
--%>

<<%@ page import="java.sql.*" %>
<%
// Set up the database connection
//String url = "jdbc:mysql://localhost:3306/tms";
//String username = "root";
//String password = "1921";
            Class.forName("com.mysql.jdbc.Driver");

 Connection con;
            con = DriverManager.getConnection("jdbc:mysql://database-1.cbk04ukggkcd.ap-south-1.rds.amazonaws.com:3306/tms", "root", "root1234");

// Get the list of available seats from the database
String query = "SELECT * FROM seats WHERE available = 1";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(query);

// Create a two-dimensional array to represent the seat layout
int numRows = 5;
int numCols = 10;
boolean[][] seats = new boolean[numRows][numCols];

// Populate the array with the available seats
while (rs.next()) {
    int seatRow = rs.getInt("rows");
    int seatCol = rs.getInt("columns");
    seats[seatRow][seatCol] = true;
}

// Close the database connection
rs.close();
stmt.close();
con.close();

// Handle the seat selection form submission
if (request.getMethod().equalsIgnoreCase("post")) {
    String[] selectedSeats = request.getParameterValues("seats");
    if (selectedSeats != null) {
            con = DriverManager.getConnection("jdbc:mysql://database-1.cbk04ukggkcd.ap-south-1.rds.amazonaws.com:3306/tms", "root", "root1234");
        for (String seat : selectedSeats) {
            String[] seatParts = seat.split("-");
            int seatRow = Integer.parseInt(seatParts[0]);
            int seatCol = Integer.parseInt(seatParts[1]);
            String updateQuery = "UPDATE seats SET available = 0 WHERE rows = ? AND columns = ?";
            PreparedStatement pstmt = con.prepareStatement(updateQuery);
            pstmt.setInt(1, seatRow);
            pstmt.setInt(2, seatCol);
            pstmt.executeUpdate();
        }
        con.close();
        response.sendRedirect("confirmation.jsp");
        return;
    }
}

// Display the seat selection form
%>
<html>
<head>
    <title>Seat Selection</title>
</head>
<body>
    <h1>Seat Selection</h1>
    <form method="post">
        <table>
            <% for (int row = 0; row < numRows; row++) { %>
                <tr>
                    <% for (int col = 0; col < numCols; col++) { %>
                        <td>
                            <% if (seats[row][col]) { %>
                                <input type="checkbox" name="seat" value="<%= row %>-<%= col %>">
                            <% } else { %>
                                &nbsp;
                            <% } %>
                        </td>
                    <% } %>
                </tr>
            <% } %>
        </table>
        <br>
        <input type="submit" value="Book selected seats">
    </form>
</body>
</html>
