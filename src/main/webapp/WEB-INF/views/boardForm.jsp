<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="1common.css">
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
    margin-left:25%;
    width: 100%;
    background-color: #282b2c;
    margin-top: 1%;
    opacity: 0.8;
   
}

.search input[type=text]{
    float:left;
    width: 57%;
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

.search button[type=submit]{
    float: left;
    margin-left: 1%;
    width: 6%;
    padding: 15px;
    background: #282b2c;
    border-radius: 4px;
    font-size: 17px;
    cursor:pointer;
    box-sizing: border-box;
    border: 2px solid #0f1011;
    border-radius: 4px;
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



    

</style>
</head>
<body>

    <div id="bg">

        <div class="top">
            <h1 style="font-size: 50px;">The Board By JCH</h1>
        </div>
    
        <div class="search">
            <i class="fa fa-search" style="float:left; position: absolute; margin-top: 1.27%; margin-left: 1%;"></i>
            <input type="text" name="search" placeholder="Search...">
            <!--<button type="submit"><i class="fa fa-search"></i></button> -->
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
                <c:forEach items="${list}" var="board">
                    <tr>
                        <td><c:out value="${board.title}"/></td>
                        <td><c:out value="${board.writer}"/></td>
                        <td><fmt:formatDate pattern="yy-MM-dd"
                        value="${board.regdate}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>

</body>
</html>