<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/css/1common.css">
<style>
body, html {
  height: 92%;
  width: 95%;
  background-color:#181A1b;
  
}
div,span, label, input{
    background-color:#181A1b;
    color:white;
}


#login_btn{
    margin: 0%;
    position: absolute;
    top:60%;
    left:40%;
    font-size: 20px;
    width: 20%;
    background-color:#0A6AB6; 
    opacity: 0.3;
}

#title{
    position: absolute;
    top:25%;
    left:38% ;
    opacity: 0.7;
}


#login_btn:hover {
    opacity:0.7;
    background-color: #073153;
}


#bg{
    display: block;
    margin-top: 5%;
    margin-left: 5%;

    /* The image used */
    background-image: url("/resources/images/loginForm_background.gif");

    /* Full height */
    height: 100%;
    width: 100%;

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;

}

form{
    border: 3px solid #f1f1f1;
}


/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px ,20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 25px;
    font-weight: bold;
}

/* Set a style for all buttons */
button{
    background-color: #4CAF50;
    color: white;
    padding: 10px 18px;
    border: 1px;
    cursor: pointer;
    font-size: 20px;
    font-weight: bold;
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
    float: left;
    
}

button:hover{
    opacity: 0.9;
    background-color: #1e421f;
}


/* Extra styles for the cancel button*/
.signupbtn,.back{
    background-color: #0A6AB6;
}

.signupbtn:hover,.back:hover{
    background-color: #073153;

}




/* Center the image and position the close button*/
.textcontainer{
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}




.container{
    padding: 3px;
    background-color:#181A1b;
    
}




/* The Modal (background) */
.modal {
    opacity: 0.8;
    display: none; /* Hidden by default */
    position: fixed; /* Hidden by default */
    z-index: 1; /* Sit on top*/
    top:20%;
    left: 32%;
    width: 35%;
    height: 50%;
    background-color: rgb(0,0,0); /*Fallback color*/
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    
}

/* Modal Content/Box*/
.modal-content{
    
    background-color:#181A1b;
    margin: 0% auto 3% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 100%; /* Could be more or lexx, depending on screen size*/
}

/* The Clos Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: rgb(247, 244, 244);
    font-size: 35px;
    font-weight: bold;
}


.close:hover,
.close:focus{
    color:red;
    cursor: pointer;
}



/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s;
}


@-webkit-keyframes animatezoom{
    from{-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}


@keyframes animatezoom{
    from {transform: scale(0)}
    to {transform: scale(1)}
}



/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px){
    span.psw{
        display: block;
        float: none;
    }

    .cancelbtn{
        width: 100%;
    }
}

</style>
</head>
<body>

<div id="bg">
    <h1 id="title">The Portfolio Board</h1>
    <button id="login_btn" onclick="document.getElementById('id01').style.display='block'">Login</button>

    <div id="id01" class="modal">

        <form class="modal-content animate" action="/" method="post">
            <div class="textcontainer">
                <span
                    onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;
                </span>
                    <h1>Login</h1>
            </div>

            <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                
                <label>
                    <input type="checkbox" checked="checked" name="remember">
                    Remember me
                    
                </label>
                
            </div>
            
            <div class="container" style="background-color:#181A1b;">
                
                <button type="submit">Login</button>
                <button type="button" class="signupbtn">Register</button>
                
            </div>

            <div class="container" style="background-color:#181A1b;">
                
                <span class="psw">Forgot <a href="#">password?</a></span>
                
            </div>
  
        </form>

    </div>



    <div id="id02" class="modal">

        <form class="modal-content animate" action="/" method="post">
            <div class="textcontainer">
                <span
                    onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;
                </span>
                    <h1>Register</h1>
            </div>

            <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <label for="psw"><b>Confirm Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>
                
            </div>
            
            <div class="container" style="background-color:#181A1b;">
                
                <button type="submit" class="back">Back</button>
                <button type="submit">Register</button>
                
            </div>

        </form>

    </div>




</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function() {
    if (event.target == modal){
        
        modal.style.display = "none";
    }
}
</script>

</body>

</html>