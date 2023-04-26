<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="connect.jsp"%>
<%
int score = (int)session.getAttribute("score");
int passExams = (int)session.getAttribute("pass_exams");
int numExams = (int)session.getAttribute("num_exams");
int failExams = (int)session.getAttribute("fail_exams");
int testId = (int)session.getAttribute("test_id");

// Get test name from database
String testName = "";
PreparedStatement pstmt = conn.prepareStatement("SELECT test_name FROM tests WHERE test_id = ?");
pstmt.setInt(1, testId);
ResultSet rs = pstmt.executeQuery();
if (rs.next()) {
    testName = rs.getString("test_name");
}
%>


<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter&family=Open+Sans:wght@300&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter&family=Open+Sans:wght@300;600&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
    href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Inter&family=Open+Sans:wght@300;600&display=swap"
    rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">

<head>
    <title>View results</title>

    <style>
        * {
            margin: 0px;
            padding: 0px;

        }

        .navigationbar {

            background-color: black;

            /* border: 2px solid black; */

            position: fixed;

            top: 0%;

            left: 0%;

            right: 0%;

            margin: 0px;

            z-index: 1;

        }

        .name {

            display: inline-block;

            color: white;

            padding: 10px;

            font-size: 30px;

            font-family: 'Abril Fatface', cursive;

            margin-left: 20px;

            /* font-family: 'Frank Ruhl Libre', serif; */

            font-weight: bold;

            /* border: 2px solid rgb(249, 248, 248); */

        }

        .links {

            margin-right: 10px;

            display: inline-block;

            padding: 10px;

            font-size: 20px;

            float: right;

            font-family: 'Frank Ruhl Libre', serif;

            /* border: 2px solid rgb(249, 246, 246); */

            margin-top: 8px;

        }

        .links a {

            color: white;

            /* font-family: 'Inter', sans-serif; */

            /* font-family: 'Open Sans', sans-serif;

*/

            font-family: 'Inter', sans-serif;

            font-family: 'Open Sans', sans-serif;

            text-decoration: none;

            font-size: 15px;

            /* border: 2px solid rgb(246, 243, 243); */

            margin: 8px;

            font-weight: bold;

        }

        .main {
            /* border: 2px solid rgb(51, 246, 21); */
            padding: 30px;
            /* height: 500px; */
            overflow: auto;
            /* display: block;
            margin: auto; */
            margin-top: 100px;



        }

        .parabox {
            float: left;
            width: 800px;
        }

        .para {
            /* border: 2px solid black; */
            font-size: 20px;
            /* display: inline-block; */
            /* width: 640px; */
            margin: 20px;
            font-family: 'Lora';
            /* float: left;
             */
        }

        /* #small{
            width: 650px;
        }
     */

        .button {
            text-decoration: none;
            /* color: white; */

            /* border: 2px solid black; */

            border: none;

            /* margin: 5px; */

            margin-top: 33px;
            margin-left: 20px;

            border-radius: 5px;

            background-color: #0f70cb;

            color: #fff;

            font-family: Lato, sans-serif;

            text-align: center;

            /* padding: 10px;

*/

            padding: 15px 39px;

            float: left;


        }


        .button a {

            color: black;

            cursor: pointer;

            margin: 5px;

            border-radius: 20px;

            background-color: white;

            font-family: Lato, sans-serif;

            /* float: left; */

            font-weight: 700;

            font-size: 16px;

            height: 32px;

            width: 90px;

            padding-left: 15px;

        }

        .image {
            /* border: 2px solid black; */
            float: right;
        }

        .bottom_bar {

            background-color: black;

            height: 300px;

        }

        .bottom_bar .name {

            /* border: 2px solid white; */

            margin-top: 50px;

            margin-left: 50px;

            font-size: 30px;

        }

        .bottom_info {

            /* border: 2px solid white; */

            margin-top: 50px;

            margin-right: 50px;

            font-size: 15px;

            /* font-family: 'Frank Ruhl Libre', serif; */

            font-family: 'Open Sans', sans-serif;

            color: white;

            float: right;

        }

        .bottom_info p {

            margin: 10px;

            font-weight: bold;

            /* font-family: 'Frank Ruhl Libre', serif; */

        }

        .bottom_info a {

            margin: 10px;

            /* font-weight: bold; */

            /* border: 2px solid white; */

            display: block;

            text-decoration: none;

            color: white;

            /* font-family: 'Frank Ruhl Libre', serif; */

        }

        a:hover {

            text-decoration: underline;

            color: rgb(228, 226, 226);

            /* font-size: 20px; */

        }
    </style>
</head>

<body>
    <nav class="navigationbar">

        <div class="name">

            Examly.

        </div>

        <div class="links">

            <a href="#">Home</a>

            <a href="registration.html">Student Registration</a>

            <a href="registration.html">Teacher Registrataion</a>

            <a href="teacher_login.html">Teacher Login</a>

            <a href="#">Contact Us</a>

        </div>

    </nav>
    <div class="main">
        <div class="parabox">

            <p class="para">
                Test You had appeared for: <%= testName %>
            </p>
            <p class="para">
                Your Score: <%= score %>
            </p>
            <p class="para">
                <%= score < 4 ? "You have failed the test " + testName : "You have passed the test " + testName %>
            </p>
            <p class="para" id="small">
                Number of tests you have passed till now: <%= passExams %> 
            </p>
            <p class="para" id="small">
                Number of tests you have failed till now: <%= failExams %>
            </p>
            <p class="para" id="small">
                Number of tests you have appeared till now: <%= numExams %>
            </p>
            <a href="student_dashboard.jsp" class="button">Back To Home Page</a>
        </div>

        <div class="image">
            <img src="cartoon copy.jpg" alt="">
        </div>
    </div>
    <div class="bottom_bar">

        <div class="name">

            Examly.

        </div>

        <div class="bottom_info">

            <P>Company </P>

            <a href="#">About</a>

            <a href="#">Careers</a>

            <a href="#">Blog</a>

        </div>

        <div class="bottom_info">

            <P>Safety</P>

            <a href="#">Overview </a>

        </div>

        <div class="bottom_info">

            <P>Product</P>

            <a href="#">Overview</a>

            <a href="#">Customer stories</a>

            <a href="#">Safety standards</a>

            <a href="#">Pricing</a>

            <a href="#">Terms & policies</a>

        </div>

        <div class="bottom_info">

            <P>Research</P>

            <a href="#">Overview</a>

            <a href="#">Index</a>

        </div>

    </div>

</body>
<html>