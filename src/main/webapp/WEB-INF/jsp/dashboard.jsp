<%-- 
    Document   : dashboard
    Created on : 03-Feb-2023, 6:43:05 pm
    Author     : Akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Unbounded:wght@200&display=swap');

            body {
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
                
                color: rgb(232, 62, 62);
                text-align: center;
            }

            .container2{
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 10%;
            }

            .buttons {
                padding: 30px;
                margin: 2%;
                background: #dbbdbd;
                width: 100px;
                height: 100px;
                box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.25);
                border-radius: 50px;
                transition: .2s all;
                cursor: pointer;
            }

            .container2:hover .buttons {
                filter: blur(3px);
                opacity: .5;
                transform: scale(0.98);
                box-shadow: none;
            }

            .container2:hover .buttons:hover {
                transform: scale(1);
                filter: blur(0px);
                opacity: 1;
                box-shadow: 0 8px 20px 0px rgba(0, 0, 0, 0.125);
                background: rgb(232, 62, 62);
                color: white;
            }

            a {
                text-decoration: none;
                font-size: 150%;
                color: black;
            }
            .heading{
                margin: 10%;
                font-family: Unbounded, sans-serif;
                font-size: 175%;
            }
            .heading :hover{
                -webkit-text-stroke: 2px #a82c2c;
                color: transparent;
            }

            nav {
                width: 100%;
                position: absolute;
                top: 0;
                left: 0;
                /* padding-left: -10px; */
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            nav .logo {
                padding-left: 20px;
                width: 80px;
            }

            nav ul li {
                list-style: none;
                display: inline-block;
                margin-left: 40px;
                padding: 10px 15px;
                margin: 0px 10px;
                position: relative;
            }

            nav ul li ::before,
            nav ul li ::after {
                position: absolute;
                content: '';
                width: 0;
                height: 3px;
                background-color: #fff;
                transition: 0.3s all ease-in-out;
            }

            nav ul li ::before {
                top: 0;
                left: 0;
            }

            nav ul li ::after {
                bottom: 0;
                right: 0;
            }

            nav ul li :hover::before {
                right: 0;
                left: auto;
                width: 100%;
                background-color: #f39c12;
            }

            nav ul li :hover::after {
                right: auto;
                left: 0;
                width: 100%;
                background-color: #f39c12;

            }

            nav ul li a {
                text-decoration: none;
                cursor: pointer;
                color: #fff;
                font-size: 20px;
            }

            nav ul li:hover .sub {
                display: block;
                position: absolute;
                background-color: transparent;
                margin-top: 10px;
                margin-left: -15px;
            }
        </style>
    </head>

    <body>
        <nav>
                <img src="https://i.postimg.cc/R0XqbRFy/Picture1.png" class="logo">
                <ul class="tab">
                    <li><a href="welcomepage.htm"  style="font-family: Poppins, sans-serif;">Home</a></li>
                    <li><a href="contact.htm" style="font-family: Poppins, sans-serif;">Contact Us</a></li>
                </ul>
            </nav>
        <div class="heading">
            <h1>Welcome to TMS Dashboard!!!</h1>
        </div>
        <div class="container">
            <div class="buttons">
                <p><a href="Tickets.htm"><b>Book Ticket</b></a></p>
            </div>
            <div class="buttons">
                <p><a href="snacks.htm"><b>Buy Snacks</b></a></p>
            </div>
            <div class="buttons">
                <p><a href="add.htm"><b>Add User Details</b></a></p>
            </div>
            <div class="buttons">
                <p><a href="update.htm"><b>Update User Details</b></a></p>
            </div>
            <div class="buttons">
                <p><a href="delete.htm"><b>Delete User</b></a></p>
            </div>
            <div class="buttons">
                <p><a href="timepassdisplay.htm"><b>Display All Users</b></a></p>
            </div>
        </div>

    </body>

</html>