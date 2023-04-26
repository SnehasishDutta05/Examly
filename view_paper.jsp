<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>
<%
	String test_name = (String)session.getAttribute("test_name");
	String question1 = (String)session.getAttribute("question1");
	String option1_1 = (String)session.getAttribute("option1_1");
	String option1_2 = (String)session.getAttribute("option1_2");
	String option1_3 = (String)session.getAttribute("option1_3");
	String option1_4 = (String)session.getAttribute("option1_4");
	String correct_option1 = (String)session.getAttribute("correct_option1");
	String question2 = (String)session.getAttribute("question2");
	String option2_1 = (String)session.getAttribute("option2_1");
	String option2_2 = (String)session.getAttribute("option2_2");
	String option2_3 = (String)session.getAttribute("option2_3");
	String option2_4 = (String)session.getAttribute("option2_4");
	String correct_option2 = (String)session.getAttribute("correct_option2");
	
	String question3 = (String)session.getAttribute("question3");
	String option3_1 = (String)session.getAttribute("option3_1");
	String option3_2 = (String)session.getAttribute("option3_2");
	String option3_3 = (String)session.getAttribute("option3_3");
	String option3_4 = (String)session.getAttribute("option3_4");
	String correct_option3 = (String)session.getAttribute("correct_option3");
	
	String question4 = (String)session.getAttribute("question4");
	String option4_1 = (String)session.getAttribute("option4_1");
	String option4_2 = (String)session.getAttribute("option4_2");
	String option4_3 = (String)session.getAttribute("option4_3");
	String option4_4 = (String)session.getAttribute("option4_4");
	String correct_option4 = (String)session.getAttribute("correct_option4");
	
	String question5 = (String)session.getAttribute("question5");
	String option5_1 = (String)session.getAttribute("option5_1");
	String option5_2 = (String)session.getAttribute("option5_2");
	String option5_3 = (String)session.getAttribute("option5_3");
	String option5_4 = (String)session.getAttribute("option5_4");
	String correct_option5 = (String)session.getAttribute("correct_option5");
	
	String question6 = (String)session.getAttribute("question6");
	String option6_1 = (String)session.getAttribute("option6_1");
	String option6_2 = (String)session.getAttribute("option6_2");
	String option6_3 = (String)session.getAttribute("option6_3");
	String option6_4 = (String)session.getAttribute("option6_4");
	String correct_option6 = (String)session.getAttribute("correct_option6");
	
	String question7 = (String)session.getAttribute("question7");
	String option7_1 = (String)session.getAttribute("option7_1");
	String option7_2 = (String)session.getAttribute("option7_2");
	String option7_3 = (String)session.getAttribute("option7_3");
	String option7_4 = (String)session.getAttribute("option7_4");
	String correct_option7 = (String)session.getAttribute("correct_option7");
	
	String question8 = (String)session.getAttribute("question8");
	String option8_1 = (String)session.getAttribute("option8_1");
	String option8_2 = (String)session.getAttribute("option8_2");
	String option8_3 = (String)session.getAttribute("option8_3");
	String option8_4 = (String)session.getAttribute("option8_4");
	String correct_option8 = (String)session.getAttribute("correct_option8");
	
	String question9 = (String)session.getAttribute("question9");
	String option9_1 = (String)session.getAttribute("option9_1");
	String option9_2 = (String)session.getAttribute("option9_2");
	String option9_3 = (String)session.getAttribute("option9_3");
	String option9_4 = (String)session.getAttribute("option9_4");
	String correct_option9 = (String)session.getAttribute("correct_option9");
	
	String question10 = (String)session.getAttribute("question10");
	String option10_1 = (String)session.getAttribute("option10_1");
	String option10_2 = (String)session.getAttribute("option10_2");
	String option10_3 = (String)session.getAttribute("option10_3");
	String option10_4 = (String)session.getAttribute("option10_4");
	String correct_option10 = (String)session.getAttribute("correct_option10");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Paper</title>
<style>
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

	/* css for main div */
	body {
            padding:0;
            background-image: url(teachers_dashboard1.png);
    }
	.container{
            align-items:center;
            width: 90%;
            height:500px;
            margin: 80px auto;
            padding: 10px;
            background-color: rgb(177, 61, 177,0.5);
            border-radius: 5px;
            box-shadow: 8px 8px 4px grey;
            overflow-y: scroll;
            overflow-x: hidden;
        }
        .container::-webkit-scrollbar {
            width: 17px;
        }
        .container::-webkit-scrollbar-track {
            box-shadow: inset 0 0 5px grey; 
            border-radius: 10px;
        }
        .container::-webkit-scrollbar-thumb {
            background: rgb(68, 67, 67); 
            border-radius: 10px;
        }
        .container::-webkit-scrollbar-thumb:hover {
            background: rgb(0, 0, 0,0.5); 
            cursor: pointer;
        }
		p{
            color: rgb(0, 0, 0);
            font-size:25px;
            
            text-align:center;
        }
        		.btn{
			margin-top:10px;
			margin-left: 600px;
            background-color: #9c27b0;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 20px;
            width:10%;
		}
		.btn:hover{
			cursor: pointer;
            background-color: black;
            transition: 0.9s ease-in;
		}
		.btn-link{
			text-decoration: none;
			color: white;
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
	<div class="container">
	<p>Test Name: <%= test_name %></p>
	<p>Question 1: <%= question1 %></p>
	<p>Option 1: <%= option1_1 %></p>
	<p>Option 2: <%= option1_2 %></p>
	<p>Option 3: <%= option1_3 %></p>
	<p>Option 4: <%= option1_4 %></p>
	<p>Question 2: <%= question2 %></p>
	<p>Option 1: <%= option2_1 %></p>
	<p>Option 2: <%= option2_2 %></p>
	<p>Option 3: <%= option2_3 %></p>
	<p>Option 4: <%= option2_4 %></p>
	
	<p>Question 3: <%= question3 %></p>
	<p>Option 1: <%= option3_1 %></p>
	<p>Option 2: <%= option3_2 %></p>
	<p>Option 3: <%= option3_3 %></p>
	<p>Option 4: <%= option3_4 %></p>
	
	<p>Question 4:<%= question4 %></p>
	<p>Option 1: <%= option4_1 %></p>
	<p>Option 2: <%= option4_2 %></p>
	<p>Option 3: <%= option4_3 %></p>
	<p>Option 4: <%= option4_4 %></p>
	
	<p>Question 5: <%= question5 %></p>
	<p>Option 1: <%= option5_1 %></p>
	<p>Option 2: <%= option5_2 %></p>
	<p>Option 3: <%= option5_3 %></p>
	<p>Option 4: <%= option5_4 %></p>
	
	<p>Question 6:<%= question6 %></p>
	<p>Option 1: <%= option6_1 %></p>
	<p>Option 2: <%= option6_2 %></p>
	<p>Option 3: <%= option6_3 %></p>
	<p>Option 4: <%= option6_4 %></p>
	
	<p>Question 7:<%= question7 %></p>
	<p>Option 1: <%= option7_1 %></p>
	<p>Option 2: <%= option7_2 %></p>
	<p>Option 3: <%= option7_3 %></p>
	<p>Option 4: <%= option7_4 %></p>
	
	<p>Question 8:<%= question8 %></p>
	<p>Option 1: <%= option8_1 %></p>
	<p>Option 2: <%= option8_2 %></p>
	<p>Option 3: <%= option8_3 %></p>
	<p>Option 4: <%= option8_4 %></p>
	
	<p>Question 9:<%= question9 %></p>
	<p>Option 1: <%= option9_1 %></p>
	<p>Option 2: <%= option9_2 %></p>
	<p>Option 3: <%= option9_3 %></p>
	<p>Option 4: <%= option9_4 %></p>
	
	<p>Question 10:<%= question10 %></p>
	<p>Option 1: <%= option10_1 %></p>
	<p>Option 2: <%= option10_2 %></p>
	<p>Option 3: <%= option10_3 %></p>
	<p>Option 4: <%= option10_4 %></p>
	</div>
	<button class="btn"><a class="btn-link" href="teacher_dashboard.jsp">Back</a></button>
</body>
</html>