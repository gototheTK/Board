<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/css/1common.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>


body, html {
    height: 98%;
    width: 97%;
    background-color:#181A1b;
}
div,span, label, input{
    background-color: transparent;
    color: #ffffff; 
}

button{
    padding: 5px;
    background: #282b2c;
    color: white;
    border-radius: 4px;
    font-size: 15px;
    cursor:pointer;
    box-sizing: border-box;
    border: 2px solid #0f1011;
    border-radius: 4px;
}


button:hover{
    background-color: #181A1b;
}


#bg{
    display: block;
    margin-left: 2.6%;
    overflow-x: hidden;
    overflow-y: hidden;
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
    background-color: transparent;
    margin-left: 35%;
    opacity: 0.8;
}


.search{
    margin-left:25%;
    width: 100%;
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
}

.search input[type=text]:hover{
    background-color: #181A1b;
}

.search input[type=text]:focus{
    float:left;
    background-color: #181A1b;
    border: 2px solid rgb(14, 13, 13);
}

.search button{
    float: left;
    margin-left: 1%;
    width: 6%;
    padding: 15px;
    background: #282b2c;
    border-radius: 4px;
    font-size: 15px;
    cursor:pointer;
    box-sizing: border-box;
    border: 2px solid #0f1011;
    border-radius: 4px;
}






.search button:hover{
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
    overflow-x: hidden;
    box-sizing: border-box;
    border: 2px solid #0f1011;
    border-radius: 4px;
    font-size: 20px;
}


table{
    width: 100%;
    table-layout: fixed;
}

th{
    text-align: center;
    border: 2px solid #0f1011;
    border-radius: 4px;
    
}


.th1{
    width:30%;
}
.th2{
    width:15%;
}
.th3{
    width:10%;
}

td{
    white-space: nowrap;
    word-wrap: break-word;
    overflow: hidden;
    text-overflow: ellipsis;
    text-align: center;
    border-top: 2px solid #0f1011;
    border-bottom: 2px solid #0f1011;
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
    padding: 5px;   
}



tr:hover {
    background-color: #181A1b;
}

::-webkit-scrollbar{ 
    background-color: transparent; 
    width: 20px;
    border: 2px solid #0f1011;
    border-radius: 4px;
}

::-webkit-scrollbar-button{
    background-color: transparent; 
    width: 20px;
    border: 2px solid #0f1011;
    border-radius: 4px;
}

::-webkit-scrollbar-thumb{
    background-color: transparent;
    width: 20px;
    border: 2px solid #0f1011;
    border-radius: 4px;
}




/* Full-width input fields */
input.title, textarea.content {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #0f1011;
  border-radius: 4px;
  box-sizing: border-box;
  background-color: #282b2c;
  color: white;
  resize:none;
  font-weight: bolder;
  font-size:20;

}


input.title:focus, textarea.content:focus{
    background-color: #181A1b;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

.container {
  padding: 16px;
  background-color: #282b2c;
  opacity: 0.8;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 97%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
  
}

/* Modal Content/Box */
.modal-content {
  background-color: #282b2c;
  opacity: 0.8;
  margin: 0% 29%; /* 5% from the top, 15% from the bottom and centered */
  border: 2px solid #0f1011;
  border-radius: 4px;
  width: 50%; /* Could be more or less, depending on screen size */
  
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: white;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

.register{
    padding: 5px;
    background: #282b2c;
    color: white;
    border-radius: 4px;
    font-size: 15px;
    cursor:pointer;
    box-sizing: border-box;
    border: 2px solid #0f1011;
    border-radius: 4px;
}

.register:hover{
    background: #181A1b;
}


    

</style>
</head>
<body>

    <div id="bg">

         <div class="top">
            <h1 style="font-size: 45px;">The Board By JCH</h1>
        </div>
    
        <div class="search">
            <i class="fa fa-search" style="float:left; position:absolute; margin-top: 1.3%; margin-left: 1%"></i>
            <input type="text" name="search" placeholder="Search...">
            <button onclick="document.getElementById('id01').style.display='block'" class="register"><i class="far fa-edit"></i></button>
        </div>

        <div class="list">
            <table>
                <thead>
                    <tr>
                        <th class="th1">제목</th>
                        <th class="th2">작성자</th>
                        <th class="th3">날짜</th>
                    </tr>
                </thead>
                <jsp:useBean id="now" class="java.util.Date" />
                <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today"/>
                <c:forEach items="${list}" var="board">
                <fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd" var="day"/>
                    <tr>
                        <td>
                        <a href="javascript:reading(${board.bno})"><c:out value="${board.title}"/></a></td>
                        <td><c:out value="${board.writer}"/></td>
                        <td>
                        <c:choose>
                            <c:when test="${today le day}">
                                <fmt:formatDate value="${board.regdate}" pattern="hh:mm:ss"/>
                            </c:when>
                            <c:otherwise>
                                <fmt:formatDate value="${board.regdate}" pattern="yy-MM-dd"/>
                            </c:otherwise>
                        </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>


    <div id="id01" class="modal">

            <form class="modal-content animate" action="/board/register" method="post">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <h1>글쓰기</h1>
                </div>
            
                <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" class="title" name="title" placeholder="Enter Username"  required>
            
                <label for="psw"><b>Password</b></label>
                <textarea class="content" name="content" placeholder="Enter Content" rows=5 draggable="false" required></textarea>
                <!-- <<input type="password" placeholder="Enter Password" name="psw" required>> -->
                    
                <label>
                </label>
                </div>
            
                <div class="container">
                <button type="submit" onclick="document.getElementById('id01').style.display='none'" class="register">
                제출
                </button>
                <input type="hidden" name="writer" value="unknown"/>
                </div>
            </form>
    </div>


    <div id="id02" class="modal">

            
                <div class="modal-content animate">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                        <h1 id="title">제목</h1>
                    </div>
                
                    <div class="container">
                    <label for="uname"><b>작성자</b></label>
                    <input type="text" id="writer" class="title" name="title" placeholder="Enter Username" readonly="readonly"  required>
                
                    <label for="psw"><b>내용</b></label>
                    <textarea class="content" id="content" name="content" placeholder="Enter Content" rows=5 draggable="false" readonly="readonly" required></textarea>
                    <label>
                    </label>
                    </div>
                
                    <div class="container">
                    <button onclick="document.getElementById('id02').style.display='none'" class="modify">닫기</button>
                    </div>
                </div>
                
    </div>


            
<script>
// Get the modal
var modal = document.getElementById('id01');
var board_modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }

    if(event.target == board_modal){
        board_modal.style.display = "none";
    }
}

function reading(url){
    var xhttp, xmlDoc;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if(this.readyState == 4 && this.status == 200){
            xmlDoc = this.response;
            document.getElementById('title').innerHTML= xmlDoc["title"];
            document.getElementById('writer').value= xmlDoc["writer"];
            document.getElementById('content').innerHTML= xmlDoc["content"];
            document.getElementById('id02').style.display='block';
        }
    }
    xhttp.open("GET", "/board/get/"+url, true);
    xhttp.responseType = 'json';
    xhttp.send();
}

</script>

</body>
</html>