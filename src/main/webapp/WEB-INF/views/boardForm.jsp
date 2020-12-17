<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/css/1common.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

body, html {
  height: 93%;
  width: 95%;
  background-color:#181A1b;
  
}
div,span, label, input{
    background-color:#181A1b;
    color: #ffffff; 
}

#bg{
    display: block;
    margin-top: 2%;
    margin-left: 5%;

    /* The image used */
    background-image: url("/resources/images/boardForm_background.gif");

    /* Full height */
    height: 100%;
    width: 100%;

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;

}


.top{
    margin-top: 5%;
    margin-left: 30%;
    opacity: 0.8;
}


.search{
    
    background-color: #282b2c;
    margin-top: 1%;
    opacity: 0.8;
   
}

.search input[type=text]{
    float:left;
    width: 50%;
    box-sizing: border-box;
    border: 2px solid #0f1011;
    border-radius: 4px;
    font-size: 20px;
    background-color:#282b2c;
    background-position:  10px, 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    margin-left: 25%;
}

.search input[type=text]:hover{
    background-color: #181A1b;
}

.search input[type=text]:focus{
    float:left;
    background-color: #181A1b;
    border: 2px solid rgb(14, 13, 13);
}

.search button[type=submit]{
    float: left;
    margin-left: 1%;
    width: 6%;
    padding: 15px;
    background: #282b2c;
    border-radius: 4px;
    font-size: 17px;
    border: none;
    cursor:pointer;
}

.search button[type=submit]:hover{
    background-color: #181A1b;
}

.list{
    background-color: #282b2c;
    width: 57%;
    height: 70%;
    margin-left: 25%;
    margin-top:8%;
    margin-bottom: 3%;
    opacity: 0.8;
    overflow: scroll;
}

    

</style>
</head>
<body>

    <div id="bg">

        <div class="top">
            <h1 style="font-size: 50px;">The Board By JCH</h1>
        </div>
    
        <div class="search">
            
            <input type="text" name="search" placeholder="Search..">
            <button type="submit"><i class="fa fa-search"></i></button>
        </div>

        <div class="list">
            <table>
                <p>hey</p>
            </table>
        </div>

    </div>

</body>
</html>