<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title> Upload Test! </title>
    <style>
        /* css for form */
        body {
            padding:0;
            background-image: url(teachers_dashboard1.png);
        }
        div{
            padding-left:360px;
        }
        form {
            align-items: center;
            width: 90%;
            height:500px;
            margin: 80px auto;
            padding: 10px;
            background-color: rgb(177, 61, 177,0.5);
            border-radius: 5px;
            box-shadow: 8px 8px 4px grey;
        }
        input[type="text"], input[type="radio"] {
            display: block;
            border: 1px solid black;
            height: 25px;
            border-radius: 5px;
            width: 60%;
            font-size: 20px;
            font-weight: 500;
            color: #333;
        }
        input[type="radio"] {
            margin-top: 2px;
            margin-right: 5px;
            height:17px;
        }
        input[type="submit"] {
            margin-top:10px;
            background-color: #9c27b0;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 20px;
            width:40%;
        }
        input[type="submit"]:hover{
            cursor: pointer;
            background-color: black;
            transition: 0.9s ease-in;
        }
        .form{
            overflow-y: scroll;
            overflow-x: hidden;
        }
        .form::-webkit-scrollbar {
            width: 17px;
        }
        .form::-webkit-scrollbar-track {
            box-shadow: inset 0 0 5px grey; 
            border-radius: 10px;
        }
        .form::-webkit-scrollbar-thumb {
            background: rgb(68, 67, 67); 
            border-radius: 10px;
        }
        .form::-webkit-scrollbar-thumb:hover {
            background: rgb(0, 0, 0,0.5); 
            cursor: pointer;
        }
        h3{
            color: rgb(0, 0, 0);
            font-size:25px;
            -webkit-text-stroke-width: 0.5px;
            -webkit-text-stroke-color: rgb(255, 255, 255);
        }
        .test-name{
            padding-left:180px;
            font-size:x-large;
        }
        hr{
            width:80%;
            background-color: azure;
            border-radius: 5px;
        }
        label{
            margin-bottom:10px;
            padding:0;
            display:inline-block;
            margin-right: 20px;
        }
        .btn{
            margin-top:20px;
            margin-left: 100px;
        }

        /* css of header */
        .navigationbar {

        background-color: black;

        /* border: 2px solid black; */

        position: fixed;

        top: 0%;

        left: 0%;

        right: 0%;

        margin: 0px;

        z-index:1;

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


    /* css for footer */
    /*.bottom_bar {

        background-color: black;

        height: 300px;

    }

    .bottom_bar .name {


        margin-top: 50px;

        margin-left: 50px;

        font-size: 30px;

    }

    .bottom_info {



        margin-top: 50px;

        margin-right: 50px;

        font-size: 15px;



        font-family: 'Open Sans', sans-serif;

        color: white;

        float: right;

    }

    .bottom_info p {

        margin: 10px;

        font-weight: bold;



    }

    .bottom_info a {

        margin: 10px;


        display: block;

        text-decoration: none;

        color: white;


    } */

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

            <a href="registration.jsp">Student Registration</a>

            <a href="registration.jsp">Teacher Registrataion</a>

            <a href="registration.jsp">Teacher Login</a>

            <a href="#">Contact Us</a>

        </div>

    </nav>

    <form class="form" action="process.jsp" method="post">
        <div>
        <h3 class="test-name">Test Name:</h3>
        <input type="text"  name="test_name"><br>
        </div>
        <hr>
        <div>
        <h3>Question1:</h3>
        <input type="text" name="question1">

        <h3>Option 1:</h3>
        <input type="text" name="option1_1">

        <h3>Option 2:</h3>
        <input type="text"  name="option1_2">

        <h3>Option 3:</h3>
        <input type="text" name="option1_3">

        <h3>Option 4:</h3>
        <input type="text" name="option1_4">
        <h3>Correct option:</h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option1" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option1" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option1" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option1" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question2:</h3>
        <input type="text"  name="question2">

        <h3>Option 1:</h3>
        <input type="text" name="option2_1">

        <h3>Option 2:</h3>
        <input type="text"  name="option2_2">

        <h3>Option 3:</h3>
        <input type="text" name="option2_3">

        <h3>Option 4:</h3>
        <input type="text" name="option2_4">

        <h3>Correct option:</h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option2" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option2" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option2" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option2" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 3: </h3>
        <input type="text" name="question3">

        <h3>Option 1:</h3>
        <input type="text" name="option3_1">

        <h3>Option 2:</h3>
        <input type="text"  name="option3_2">

        <h3>Option 3:</h3>
        <input type="text" name="option3_3">

        <h3>Option 4:</h3>
        <input type="text" name="option3_4">

        <h3>Correct option:</h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option3" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option3" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option3" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option3" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 4:</h3>
        <input type="text" name="question4">

        <h3>Option 1:</h3>
        <input type="text" name="option4_1">

        <h3>Option 2:</h3>
        <input type="text"  name="option4_2">

        <h3>Option 3:</h3>
        <input type="text" name="option4_3">

        <h3>Option 4:</h3>
        <input type="text" name="option4_4">

        <h3>Correct option: </h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option4" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option4" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option4" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option4" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 5: </h3>
        <input type="text" name="question5">

        <h3>Option 1:</h3>
        <input type="text" name="option5_1">

        <h3>Option 2: </h3>
        <input type="text"  name="option5_2">

        <h3>Option 3:</h3>
        <input type="text" name="option5_3">

        <h3>Option 4:</h3>
        <input type="text" name="option5_4">

        <h3>Correct option: </h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option5" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option5" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option5" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option5" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 6:</h3>
        <input type="text" name="question6">

        <h3>Option 1:</h3>
        <input type="text" name="option6_1">

        <h3>Option 2: </h3>
        <input type="text"  name="option6_2">

        <h3>Option 3: </h3>
        <input type="text" name="option6_3">

        <h3>Option 4:</h3>
        <input type="text" name="option6_4">
        <h3>Correct option:</h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option6" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option6" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option6" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option6" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 7:</h3>
        <input type="text" name="question7">

        <h3>Option 1:</h3>
        <input type="text" name="option7_1">

        <h3>Option 2:</h3>
        <input type="text"  name="option7_2">

        <h3>Option 3: </h3>
        <input type="text" name="option7_3">

        <h3>Option 4:</h3>
        <input type="text" name="option7_4">

        <h3>Correct option: </h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option7" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option7" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option7" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option7" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 8: </h3>
        <input type="text" name="question8">

        <h3>Option 1:</h3>
        <input type="text" name="option8_1">
        <h3>Option 2:</h3>
        <input type="text"  name="option8_2">

        <h3>Option 3:</h3>
        <input type="text" name="option8_3">

        <h3>Option 4:</h3>
        <input type="text" name="option8_4">

        <h3>Correct option:</h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option8" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option8" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option8" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option8" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 9: </h3>
        <input type="text" name="question9">

        <h3>Option 1:</h3>
        <input type="text" name="option9_1">

        <h3>Option 2:</h3>
        <input type="text"  name="option9_2">

        <h3>Option 3:</h3>
        <input type="text" name="option9_3">

        <h3>Option 4:</h3>
        <input type="text" name="option9_4">

        <h3>Correct option:</h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option9" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option9" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option9" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option9" value="4">
        </label>
        </div>
        <hr>
        <div>
        <h3>Question 10:</h3>
        <input type="text" name="question10">

        <h3>Option 1:</h3>
        <input type="text" name="option10_1">

        <h3>Option 2:</h3>
        <input type="text"  name="option10_2">

        <h3>Option 3:</h3>
        <input type="text" name="option10_3">

        <h3>Option 4:</h3>
        <input type="text" name="option10_4">

        <h3>Correct option:</h3>
        <label>
        <h3>Option 1</h3>
        <input type="radio"  name="correct_option10" value="1">
        </label>
        <label>
        <h3>Option 2</h3>
        <input type="radio"  name="correct_option10" value="2">
        </label>
        <label>
        <h3>Option 3</h3>
        <input type="radio"  name="correct_option10" value="3">
        </label>
        <label>
        <h3>Option 4</h3>
        <input type="radio"  name="correct_option10" value="4">
        </label>
        </div>
        <div class="btn">
        <input type="submit" value="Submit">
        </div>
    </form>
</body>
</html>