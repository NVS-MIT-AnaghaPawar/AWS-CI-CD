<%-- 
    Document   : snacks
    Created on : 03-Feb-2023, 11:24:10 pm
    Author     : Akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Snacks Corner</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background: linear-gradient(135deg, #9b59b6, #71b7e6);
                font-family: 'Poppins', sans-serif;
            }

            .main {
                width: 1170px;
                margin: 100px auto;
            }

            .section-title {
                text-align: center;
                margin-bottom: 80px;
            }

            .section-title h2 {
                text-transform: capitalize;
                font-size: 35px;
                position: relative;
                display: inline-block;
                padding-bottom: 10px;
                margin-bottom: 10px;
            }

            .menus {
                display: flex;
                justify-content: space-between;
                /* flex-wrap: wrap; */
            }

            .section-title h2::before {
                content: '';
                position: absolute;
                width: 60px;
                height: 3px;
                background-color: #00875c;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
            }

            .menu-col {
                width: 31%;
            }

            .menu-col h4 {
                text-transform: capitalize;
                font-size: 24px;
                font-weight: 500;
                margin-bottom: 20px;
                position: relative;
                padding-bottom: 15px;
            }

            .menu-col h4::before {
                content: '';
                position: absolute;
                width: 40px;
                height: 2px;
                background-color: #00875c;
                bottom: 0;
            }

            .single-menu {
                display: flex;
                align-items: center;
                margin-top: 40px;
            }

            .single-menu img {
                border-radius: 50%;
                max-width: 110px;
                border: 1px dashed #ddd;
                padding: 3px;
                margin-right: 15px;
                transition: .3s;
            }
            .single-menu:hover img{
                transform: rotate(360deg);
            }

            .single-menu .menu-content h5 {
                text-transform: capitalize;
                font-size: 22px;
                font-weight: 500;
                border-bottom: 1px dashed #222;
                padding-bottom: 5px;
                margin-bottom: 10px;
            }

            .single-menu .menu-content h5 span {
                color: red;
                float: right;
                font-weight: 600;
                font-style: italic;
            }
            @media only screen and (min-width:992px) and (max-width:1200px){
                .main{
                    width: 970px;
                }
            }
            @media only screen and (min-width:768px) and (max-width:991px){
                .main{
                    width: 750px;
                }
            }
            img {
                height: 50%;
                width: 50%;
            }

            .buttons {
                padding: 30px;
                margin: 2%;
                background: black;
                width: 100px;
                height: 100px;
                box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.25);
                border-radius: 50px;
                transition: .2s all;
                cursor: pointer;
            }

            .container:hover .buttons {
                filter: blur(3px);
                opacity: .5;
                transform: scale(0.98);
                box-shadow: none;
            }

            .container:hover .buttons:hover {
                transform: scale(1);
                filter: blur(0px);
                opacity: 1;
                box-shadow: 0 8px 20px 0px rgba(0, 0, 0, 0.125);
                background: green;
                color: white;
            }

            nav {
                width: 100%;
                position: absolute;
                top: 0;
                left: 0;
                padding: 20px 8%;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            nav .logo {
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

            /* nav ul li a {
                text-decoration: none;
                color: #fff;
                font-size: 17px;
            } */

            nav ul li ::before,
            nav ul li ::after{
                position: absolute;
                content: '';
                width: 0;
                height: 2px;
                background-color: #fff;
                transition: 0.3s all ease-in-out;
            }
            nav ul li ::before{
                top: 0;
                left: 0;
            }
            nav ul li ::after{
                bottom: 0;
                right: 0;
            }

            nav ul li :hover::before{
                right: 0;
                left: auto;
                width: 100%;
                background-color: #f39c12;
            }
            nav ul li :hover::after{
                right: auto;
                left: 0;
                width: 100%;
                background-color: #f39c12;

            }
            nav ul li a{
                text-decoration: none;
                cursor: pointer;
                color:#fff;
                font-size: 20px;
            }

            .sub{
                display: none;
            }
            nav ul li:hover .sub{
                display: block;
                position:absolute;
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
        <div class="main">
            <div class="section-title">
                <h2>Our menu</h2>
                <p>Enjoy our delicious range of snacks</p>
            </div>
            <form action="buysnacks" method="post">
                <div class="menus">
                    <div class="menu-col">
                        <h4>Snacks</h4>
                        <div class="single-menu">
                            <img src="https://www.linkpicture.com/q/LPic63dd4b903b2c51050905922.jpg" alt="">
                            <div class="menu-content">
                                <h5>Burger <span>Rs. 50</span><input type="number" name="a" placeholder="Enter Quantity"></h5>
                                <p>Always good time for burgers</p>
                            </div>
                        </div>
                        <div class="single-menu">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZQfK7u_Pw4F0Xv7Kf3YGes_KJx_Gi8eUS1w&usqp=CAU" alt="">
                            <div class="menu-content">
                                <h5>Pizza <span>Rs. 50</span><input type="number"  name="b" placeholder="Enter Quantity"></h5>
                                <p>But first, pizza</p>
                            </div>
                        </div>
                        <div class="single-menu">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaKRsbNwZiOOZM25wO1K0dV0WD1hzj_l6owQ&usqp=CAU" alt="">
                            <div class="menu-content">
                                <h5>French Fries <span>Rs. 50</span><input type="number"  name="c"  placeholder="Enter Quantity"></h5>
                                <p>For high fibres and nutrients</p>
                            </div>
                        </div>
                    </div>
                    <div class="menu-col">
                        <h4>Beverages</h4>
                        <div class="single-menu">
                            <img src="https://www.linkpicture.com/q/download-2_93.jpeg" alt="">
                            <div class="menu-content">
                                <h5>Cold Coffee <span>Rs. 50</span><input type="number"   name="d" placeholder="Enter Quantity"></h5>
                                <p>Want coffee?</p>
                            </div>
                        </div>
                        <div class="single-menu">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZqwHMvykjcQwEjQtGJOeETPw8vIgGMkxjpw&usqp=CAU" alt="">
                            <div class="menu-content">
                                <h5>Coke <span>Rs. 50</span><input type="number"  name="e"  placeholder="Enter Quantity"></h5>
                                <p>Things go better with Coke</p>
                            </div>
                        </div>
                        <div class="single-menu">
                            <img src="https://www.linkpicture.com/q/blackpepsi.jfif.jpg" alt="">
                            <div class="menu-content">
                                <h5>Black Pepsi <span>Rs. 50</span><input type="number"  name="f"  placeholder="Enter Quantity"></h5>
                                <p>Follows your diet plan</p>
                            </div>
                        </div>
                    </div>
                    <div class="menu-col">
                        <h4>Deserts</h4>
                        <div class="single-menu">
                            <img src="https://www.linkpicture.com/q/download-3_47.jpeg" alt="">
                            <div class="menu-content">
                                <h5>Chocolate Cake <span>Rs. 50</span><input type="number"  name="g"  placeholder="Enter Quantity"></h5>
                                <p>Sweet baked with frosting</p>
                            </div>
                        </div>
                        <div class="single-menu">
                            <img src="https://www.linkpicture.com/q/download-4_21.jpeg" alt="">
                            <div class="menu-content">
                                <h5>Cheesecake<span>Rs. 50</span><input type="number"  name="h"  placeholder="Enter Quantity"></h5>
                                <p>Savory, lucious, sweet desert</p>
                            </div>
                        </div>
                        <div class="single-menu">
                            <img src="https://www.linkpicture.com/q/WhatsApp-Image-2023-02-03-at-23.47.55.jpg" alt="">
                            <div class="menu-content">
                                <h5>Brownie <span>Rs. 50</span><input type="number"  name="i"  placeholder="Enter Quantity"></h5>
                                <p>All you need is love… and lots of brownies</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="buttons">
                    <p><a style="text-decoration: none; color: white; font-size: 150% " href="buysnacks.htm"><b>Bill</b></a></p>
                </div>
            </form>
        </div>
    </body>

</html>
