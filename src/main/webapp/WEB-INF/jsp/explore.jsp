<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Explore</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Unbounded:wght@200&display=swap');

            /*               * {
                        border: 0;
                        box-sizing: border-box;
                        margin: 0;
                        padding: 0;
                    }*/
            body {
                /*                background: linear-gradient(135deg, #9b59b6, #71b7e6);*/
                background: linear-gradient(120deg,black,#191825,#18122B);
            }

            nav {
                margin-top: 2vh;
                width: 100%;
                position: absolute;
                top: 0;
                left: 0;
                font-family: Unbounded, sans-serif;
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            nav .logo {
                padding-left: 20px;
                width: 80px;
                margin-left: 1vw;
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

            h1 {
                margin-top: 10vh;
                font-size: 300%;
                text-align: center;
            }

            p {
                font-size: 200%;
            }

            .campus {
                margin-left: 25px;
                width: 100%;
                padding-top: 50px;
            }

            .head,
            .h3_head {
                margin-left: -70px;
                text-align: center;
                display: flex;
                flex-direction: column;
                margin-bottom: 1vh;

            }

            .campus-col {
                margin-left: 22px;
                display: inline-block;
                flex-basis: 32%;
                border-radius: 10px;
                margin-bottom: 30px;
                position: relative;
                overflow: hidden;
            }

            .campus-col img {
                /* display: inline-block; */
                margin-top: 50px;
                border-radius: 10px;
                width: 70%;
                height: 500px;
                /* height: 200px; */
            }

            .layer {
                margin-top: 50px;
                border-radius: 10px;
                background: transparent;
                height: 500px;
                width: 70%;
                position: absolute;
                top: 0;
                left: 0;
                transition: 0.5s;
            }

            .layer:hover {
                background-image: linear-gradient(to bottom,rgba(195, 6, 123, 0.639) 30%,rgba(56, 6, 117, 0.068) 100%);
            }

            .layer h3 {
                margin-left: 0px;
                /* width: 100%; */
                font-weight: 500;
                color: #fff;
                font-size: 26px;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                position: absolute;
                opacity: 0;
                transition: 0.5s;
            }

            .layer h3 a {
                text-decoration: none;
                color: #fff;

            }

            .layer:hover h3 {
                bottom: 49%;
                opacity: 1;
            }
            .layer:hover b{
                color:rgb(41, 8, 63);
                font-weight: 1000;
                text-shadow:#12ecf3;
                font-size: 2rem;
                color: #18122B;

            }

            .sub {
                display: none;
            }

            nav ul li:hover .sub {
                display: block;
                position: absolute;
                background-color: transparent;
                margin-top: 10px;
                margin-left: -15px;
            }
            a:hover{
                -webkit-text-stroke: 1px #f39c12;
                color: transparent;

            }


            * {
                border: 0;
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            body,
            button,
            input {
                line-height: 1.5em;
            }

            body,
            input {
                color: white;
            }

            body,
            .search-bar {
                display: flex;
                flex-direction: column;
            }

            body {
                height: 100vh;
            }

            .search-bar input,
            .searsh-button,
            .searsh-button:before,
            .searsh-button:after {
                transition: all 0.25s ease-out;
            }

            .search-bar input,
            .searsh-button {
                width: 3em;
                height: 3em;
            }

            .search-bar input:invalid:not(:focus),
            .searsh-button {
                cursor: pointer;
            }

            .search-bar,
            .search-bar input:focus,
            .search-bar input:valid {
                width: 100%;
            }

            .search-bar input:focus,
            .search-bar input:not(:focus)+.searsh-button:focus {
                outline: transparent;
            }

            .search-bar {
                margin: auto;
                margin-top: 2vh;
                padding: 1.5em;
                justify-content: center;
                max-width: 30em;
            }

            .search-bar input {
                background: transparent;
                border-radius: 1.5em;
                box-shadow: 0 0 0 0.4em #f1f1f1 inset;
                padding: 0.75em;
                transform: translate(0.5em, 0.5em) scale(0.5);
                transform-origin: 100% 0;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
            }

            .search-bar input:focus,
            .search-bar input:valid {
                background: #282539;
                border-radius: 0.375em 0 0 0.375em;
                box-shadow: 0 0 0 0.1em #CBBDDB inset;
                transform: scale(1);
            }

            .searsh-button {
                background: #f1f1f1;
                border-radius: 0 0.75em 0.75em 0 / 0 1.5em 1.5em 0;
                padding: 0.75em;
                position: relative;
                transform: translate(0.25em, 0.25em) rotate(45deg) scale(0.25, 0.125);
                transform-origin: 0 50%;
            }

            .searsh-button:before,
            .searsh-button:after
            {
                content: "";
                display: block;
                opacity: 0;
                position: absolute;
            }

            .searsh-button:before {
                border-radius: 50%;
                box-shadow: 0 0 0 0.2em #f1f1f1 inset;
                top: 0.75em;
                left: 0.75em;
                width: 1.2em;
                height: 1.2em;
            }

            .searsh-button:after {
                background: #f1f1f1;
                border-radius: 0 0.25em 0.25em 0;
                top: 51%;
                left: 51%;
                width: 0.75em;
                height: 0.25em;
                transform: translate(0.2em, 0) rotate(45deg);
                transform-origin: 0 50%;
            }

            .searsh-button span {
                display: inline-flex;
                overflow: hidden;
                width: 1px;
                height: 1px;
            }

            input[type="search"]::-webkit-search-cancel-button {
                -webkit-appearance: none;
                display: inline-block;
                width: 12px;
                height: 12px;
                margin-left: 10px;
                background: linear-gradient(45deg, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0) 43%, #CBBDDB 45%, #CBBDDB 55%, rgba(0, 0, 0, 0) 57%, rgba(0, 0, 0, 0) 100%), linear-gradient(135deg, transparent 0%, transparent 43%, #CBBDDB 45%, #CBBDDB 55%, transparent 57%, transparent 100%);
            }
            /* Active state */

            .search-bar input:focus+.searsh-button,
            .search-bar input:valid+.searsh-button

            {
                background: #8F7CEC;
                border-radius: 0 0.375em 0.375em 0;
                transform: scale(1);
                position: absolute;
                display: flex;
                align-self:center;
                top: 32.6vh;
                left: 55vw;
            }

            .search-bar input:focus+.searsh-button:before,
            .search-bar input:focus+.searsh-button:after,
            .search-bar input:valid+.searsh-button:before,
            .search-bar input:valid+.searsh-button:after
            {
                opacity: 1;
            }

            .search-bar input:focus+.searsh-button:active,
            .search-bar input:valid+.searsh-button:active {
                transform: translateY(1px);
            }
            .search-bar{
                align-items: center;
                justify-content: center;
            }

        </style>
    </head>

    <body>
        <section class="campus">

            <nav>
                <img src="https://i.postimg.cc/R0XqbRFy/Picture1.png" class="logo">
                <ul class="tab">

                    <li><a href="welcomepage.htm"  style="font-family: Poppins, sans-serif;">Home</a></li>
                    <li><a href="signin.htm" style="font-family: Poppins, sans-serif;">Login</a></li>
                    <li><a href="registration.htm" style="font-family: Poppins, sans-serif;">Register</a></li>
                    <li><a href="contact.htm" style="font-family: Poppins, sans-serif;">Contact Us</a></li>
                </ul>
            </nav>

            <h1 class="head" style="font-family: Unbounded, sans-serif;">Available Movies</h1><br>
            <p class="head" style="font-family: Unbounded, sans-serif;"><strong>The whole of life is just like watching a
                    film</strong></p>

            <div class="search-bar">
                <form action="searching" method="post" commandName="userForm" path="email">
                    <input type="text" required autocomplete="off" name="search">
                    <button type="submit" class="searsh-button"></button>
                </form>
            </div>

            <div class="row">
                <div class="campus-col">
                    <img src="https://www.linkpicture.com/q/IMG-20230203-WA0005.jpg">
                    <div class="layer">
                        <h3 class="h3_head"><a href="https://en.wikipedia.org/wiki/Avengers:_Endgame" style="color:rgb(41, 8, 63);font-weight: 1000;text-shadow:#12ecf3; font-size: 2rem;"></a> <b style="font-family: Unbounded, sans-serif;">Avengers: Endgame</b> </a><br>View Info
                        </h3>
                    </div>
                </div>
                <div class="campus-col">
                    <img src="https://www.linkpicture.com/q/IMG-20230203-WA0006.jpg">
                    <div class="layer">
                        <h3 class="h3_head"><a href="https://en.wikipedia.org/wiki/Captain_America:_Civil_War" style="color:rgb(41, 8, 63);font-weight: 1000;text-shadow:#12ecf3; font-size: 2rem;"> <b style="font-family: Unbounded, sans-serif;">Captain America: Civil War</b> </a><br>View Info
                        </h3>
                    </div>
                </div>
                <div class="campus-col">
                    <img src="https://www.linkpicture.com/q/IMG-20230203-WA0003.jpg">
                    <div class="layer">
                        <h3 class="h3_head"><a href="https://en.wikipedia.org/wiki/The_Avengers_(2012_film)" style="color:rgb(41, 8, 63);font-weight: 1000;text-shadow:#12ecf3; font-size: 2rem;"><b style="font-family: Unbounded, sans-serif;">The Avengers</b> </a><br>View Info
                        </h3>
                    </div>
                </div>
                <div class="campus-col">
                    <img src="https://www.linkpicture.com/q/IMG-20230203-WA0002_1.jpg">
                    <div class="layer">
                        <h3 class="h3_head"><a href="https://en.wikipedia.org/wiki/Black_Panther:_Wakanda_Forever" style="color:rgb(41, 8, 63);font-weight: 1000;text-shadow:#12ecf3; font-size: 2rem;"> <b style="font-family: Unbounded, sans-serif;">Black Panther: Wakanda Forever</b> </a><br>View Info
                        </h3>
                    </div>
                </div>
                <div class="campus-col">
                    <img src="https://www.linkpicture.com/q/IMG-20230203-WA0004.jpg">
                    <div class="layer">
                        <h3 class="h3_head"><a href="https://en.wikipedia.org/wiki/Avengers:_Infinity_War" style="color:rgb(41, 8, 63);font-weight: 1000;text-shadow:#12ecf3; font-size: 2rem;"> <b style="font-family: Unbounded, sans-serif;">Avengers: Infinity War</b> </a><br>View Info
                        </h3>
                    </div>
                </div>
            </div>

        </section>
    </body>
</html>