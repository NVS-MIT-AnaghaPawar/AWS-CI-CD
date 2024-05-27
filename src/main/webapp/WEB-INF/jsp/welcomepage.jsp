<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TMS</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            .hero {
                width: 100%;
                height: 100vh;
                background-image: url(https://images.unsplash.com/photo-1618477202872-89cec6f8d62e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80);
                background-size: 100% 100%;
                background-attachment: fixed;
                position: relative;
                display: flex;
                align-items: center;
                justify-content: center;
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
            .content{
                text-align: center;
            }
            .content h1{
                font-size: 120px;
                color: #fff;
                font-weight: 600;
                transition: 0.2s;
            }
            .content h1:hover{
                -webkit-text-stroke: 2px #fff;
                color: transparent;
            }
            .tab a:hover{
                -webkit-text-stroke: 1.5px #f39c12;
                /* color: #f39c12; */

            }
            .content a:hover{
                -webkit-text-stroke: 2px #fff;
                color: transparent;
            }
            .content a{
                text-decoration: none;
                display: inline-block;
                color: #fff;
                font-size: 24px;
                border: 2px solid #fff;
                padding: 14px 70px;
                border-radius: 50px;
                margin-top: 20px;
            }
            .back-video{
                position:absolute;
                right: 0;
                bottom: 0;
                z-index: -1;
            }
            @media (min-aspect-ratio:16/9){
                .back-video{
                    width: 100%;
                    height: auto;
                }
            }
            @media (max-aspect-ratio:16/9){
                .back-video{
                    width: auto;
                    height: 100%;
                }
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
            /*            body video{
                            position: absolute;
                            right: 0;
                            bottom: 0;
                             z-index; 
                            video:cover;
                        }
                        #myVideo {
                            position: fixed;
                            right: 0;
                            bottom: 0;
                            min-width: 100%;
                            min-height: 100%;
                        }*/
        </style>
    </head>

    <body>
        <div class="hero">
            <!--                        <video autoplay loop muted plays-inline class="back-video">
                                        <source src="https://www.kapwing.com/videos/63dc96a8f6cee20050a5ce38">
                                    </video>-->
            <!--            <video autoplay muted loop id="myVideo">
                            <source src="https://dsqqu7oxq6o1v.cloudfront.net/motion-array-1369331-ng7r8NVVd1-high.mp4" type="video/mp4">
                        </video>-->
            <nav>
                <img src="https://i.postimg.cc/R0XqbRFy/Picture1.png" class="logo">
                <ul class="tab">
                    <li><a href="welcomepage.htm">Home</a></li>
                    <li><a href="signin.htm">Login</a></li>
                    <li><a href="register.htm">Register</a></li>
                    <li><a href="contact.htm">Contact Us</a></li>
                </ul>
            </nav>
            <div class="content">
                <h1>Welcome <br>To Ticket Management System
                </h1>

                <a href="explore.htm" style="text-decoration: none">Explore</a>
            </div>
        </div>
    </body>

</html>