

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Account Software</title>
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

        <!-- <link rel="stylesheet" href="admin.css"> -->
        <script src="https://kit.fontawesome.com/768ea81349.js"></script>	
        <script type="text/javascript"
                src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
        </script>
        <script>
            function sendMail()
            {
                var params = {
                    email: "${email}",
                   name: document.getElementById("name").value,
                };

                const serviceID = "service_0s89bfn";
                const templateID = "template_gizoqsc";
                emailjs.send(serviceID, templateID, params)
                        .then(
                                (res) => {
                            alert("your message is sent Successfully");
                            document.getElementById("name").value = "";
                            document.getElementById("email").value = "";
                            console.log(res);
                            alert("your message is sent Successfully");
                        }
                        )
                        .catch((err) => console.log(err));
            }

        </script>
        <script type="text/javascript">
            (function () {
                emailjs.init("2KiJDDAaMdRfyXiRn");
            })();
        </script>
        <style>
            /*@import url('https://fonts.googleapis.com/css?family=Roboto');*/
            @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

            *{
                box-sizing: border-box;
                outline: none;
                outline-style: none;
            }

            *:focus{
                outline: none;
                outline-style: none;
            }



            html, body, div, span, applet, object, iframe,
            h1, h2, h3, h4, h5, h6, p, blockquote, pre,
            a, abbr, acronym, address, big, cite, code,
            del, dfn, em, img, ins, kbd, q, s, samp,
            small, strike, strong, sub, sup, tt, var,
            b, u, i, center,
            dl, dt, dd, ol, ul, li,
            fieldset, form, label, legend,
            table, caption, tbody, tfoot, thead, tr, th, td,
            article, aside, canvas, details, embed,
            figure, figcaption, footer, header, hgroup,
            menu, nav, output, ruby, section, summary,
            time, mark, audio, video {
                margin: 0;
                padding: 0;
                border: 0;
                font-size: 100%;
                font: inherit;
                vertical-align: baseline;
                box-sizing: border-box;
            }
            /* HTML5 display-role reset for older browsers */
            article, aside, details, figcaption, figure,
            footer, header, hgroup, menu, nav, section {
                display: block;
            }

            a{
                outline: 0;
                border: none;
                -moz-outline-style: 0;
            }



            body {
                background-color: #f6f5f7;
                font-weight: 400;
                color: #2e2f3e;
                font-family: "Montserrat", sans-serif;
                font-size: 14px;
                line-height: 18px;
            }

            ol, ul {
                list-style: none;
            }
            blockquote, q {
                quotes: none;
            }
            blockquote:before, blockquote:after,
            q:before, q:after {
                content: '';
                content: none;
            }
            table {
                border-collapse: collapse;
                border-spacing: 0;
            }


            a{
                text-decoration: none;
                color: inherit;
            }



            textarea{
                white-space: normal;
                font-size: inherit;
                padding: 0;
            }

            select{
                -moz-appearance: none;
                -webkit-appearance: none;
                text-align: center;

            }

            .auth-wrapper{
                box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
                padding: 1em;
                background-color: #fff;
                width: 97%;

                margin: 0 auto;
                top: 2em;
                position: relative;
                border-radius: 8px;

            }

            .auth-form-wrapper{
                display: inline-flex;
                width: 100%;
                height: 100%
            }

            .auth-media{
                width: 200px;

            }

            .auth-media > img {
                width: inherit;
                height: 270%;
            }

            .auth-form {
                width: 55%;
                padding: 270px 0px 8px 0px;
                margin: 0 auto;
            }

            input[type="text"]{
                width: 100%;
                padding: 12px 15px;
                border: none;
                background-color: #eee;
                margin-bottom: 10px;
                letter-spacing: 0.2px;
            }

            input[type="email"]{
                width: 100%;
                padding: 12px 15px;
                border: none;
                background-color: #eee;
                margin-bottom: 10px;
                letter-spacing: 0.2px;

            }

            input[type="submit"] {
                width: 60%;
                padding: 10px 0 10px 0;
                border: none;
                background-color: #6c63ff;
                border-radius: 3pc;
                color: #fff;
                margin: 0 auto;
                display: block;
                font-weight: 700;
                letter-spacing: 1px;
            }

            .auth-form-label{
                margin-bottom: 20px;
                text-align: center;
            }

            .primary-label {
                font-size: 28px;
                font-weight: 700;
            }

            .social-container a {
                border: 1px solid #DDDDDD;
                border-radius: 50%;
                display: inline-flex;
                justify-content: center;
                align-items: center;
                margin: 0 5px;
                height: 40px;
                width: 40px;
            }

            .social-container{
                margin: 20px 0;
                text-align: center;
            }

            .auth-links-container{
                margin-bottom: 8px;
            }

            .auth-fp-link{
                font-size: small;
                text-align: center;
            }


            @media only screen and (max-width: 1289px){
                .auth-wrapper {
                    width: 50%;
                }
            }

            @media only screen and (max-width: 1000px){
                .auth-wrapper {
                    width: 60%;
                }
            }

            @media only screen and (max-width: 829px) {
                .auth-wrapper {
                    width: 80%;
                }
            }

            @media only screen and (max-width: 620px){
                .auth-wrapper {
                    width: 90%;
                    top: 3em;
                }

                .auth-form-wrapper{
                    display: block;
                }

                .auth-media{
                    width: 200%;
                }

                .auth-form {
                    width: 100%;
                    padding: 22px 0px 8px 0px;
                }
            }
        </style>
    </head>
    <body >

        <div class="auth-wrapper">
            <div class="auth-form-wrapper">

                <img src="https://webimages.mongodb.com/_com_assets/cms/lbf588qi303qt7wup-cms-home-image.svg?auto=format%252Ccompress" width="600px" height="750px">

                <div class="auth-form">
                    <div class="auth-form-label">
                        <p class="primary-label">Forgot Password</p>
                    </div>
                    
                    <input type='text' class='form-control' id='name' placeholder="name"/>
                    <input type="submit" class="btn" onclick="sendMail()" value="Submit" />
                    <br>
                    
                </div>
            </div>
        </div>
    </body>
</html>