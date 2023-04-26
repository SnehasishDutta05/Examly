<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@include file="connect.jsp"%>
<%
// Retrieve values from the HTML form
try{
String test_name=  request.getParameter("test_name");
String question1 = request.getParameter("question1");
String option1_1 = request.getParameter("option1_1");
String option1_2 = request.getParameter("option1_2");
String option1_3 = request.getParameter("option1_3");
String option1_4 = request.getParameter("option1_4");
String correct_option1 = request.getParameter("correct_option1");
String question2 = request.getParameter("question2");
String option2_1 = request.getParameter("option2_1");
String option2_2 = request.getParameter("option2_2");
String option2_3 = request.getParameter("option2_3");
String option2_4 = request.getParameter("option2_4");
String correct_option2 = request.getParameter("correct_option2");

String question3 = request.getParameter("question3");
String option3_1 = request.getParameter("option3_1");
String option3_2 = request.getParameter("option3_2");
String option3_3 = request.getParameter("option3_3");
String option3_4 = request.getParameter("option3_4");
String correct_option3 = request.getParameter("correct_option3");

String question4 = request.getParameter("question4");
String option4_1 = request.getParameter("option4_1");
String option4_2 = request.getParameter("option4_2");
String option4_3 = request.getParameter("option4_3");
String option4_4 = request.getParameter("option4_4");
String correct_option4 = request.getParameter("correct_option4");

String question5 = request.getParameter("question5");
String option5_1 = request.getParameter("option5_1");
String option5_2 = request.getParameter("option5_2");
String option5_3 = request.getParameter("option5_3");
String option5_4 = request.getParameter("option5_4");
String correct_option5 = request.getParameter("correct_option5");

String question6 = request.getParameter("question6");
String option6_1 = request.getParameter("option6_1");
String option6_2 = request.getParameter("option6_2");
String option6_3 = request.getParameter("option6_3");
String option6_4 = request.getParameter("option6_4");
String correct_option6 = request.getParameter("correct_option6");

String question7 = request.getParameter("question7");
String option7_1 = request.getParameter("option7_1");
String option7_2 = request.getParameter("option7_2");
String option7_3 = request.getParameter("option7_3");
String option7_4 = request.getParameter("option7_4");
String correct_option7 = request.getParameter("correct_option7");

String question8 = request.getParameter("question8");
String option8_1 = request.getParameter("option8_1");
String option8_2 = request.getParameter("option8_2");
String option8_3 = request.getParameter("option8_3");
String option8_4 = request.getParameter("option8_4");
String correct_option8 = request.getParameter("correct_option8");

String question9 = request.getParameter("question9");
String option9_1 = request.getParameter("option9_1");
String option9_2 = request.getParameter("option9_2");
String option9_3 = request.getParameter("option9_3");
String option9_4 = request.getParameter("option9_4");
String correct_option9 = request.getParameter("correct_option9");

String question10 = request.getParameter("question10");
String option10_1 = request.getParameter("option10_1");
String option10_2 = request.getParameter("option10_2");
String option10_3 = request.getParameter("option10_3");
String option10_4 = request.getParameter("option10_4");
String correct_option10 = request.getParameter("correct_option10");



String sql = "INSERT INTO tests (test_name) VALUES ('" + test_name + "')";
int rowsAffected = conn.prepareStatement(sql).executeUpdate();
if (rowsAffected>0) {
// Get ID of the inserted test
ResultSet rs = conn.prepareStatement("SELECT tests_sequences.currval FROM dual").executeQuery();
rs.next();
int test_id = rs.getInt(1);

session.setAttribute("test_name",test_name);
session.setAttribute("question1",question1);
session.setAttribute("option1_1",option1_1);
session.setAttribute("option1_2",option1_2);
session.setAttribute("option1_3",option1_3);
session.setAttribute("option1_4",option1_4);
session.setAttribute("correct_option1",correct_option1);

session.setAttribute("question2",question2);
session.setAttribute("option2_1",option2_1);
session.setAttribute("option2_2",option2_2);
session.setAttribute("option2_3",option2_3);
session.setAttribute("option2_4",option2_4);
session.setAttribute("correct_option2",correct_option2);

session.setAttribute("question3",question3);
session.setAttribute("option3_1",option3_1);
session.setAttribute("option3_2",option3_2);
session.setAttribute("option3_3",option3_3);
session.setAttribute("option3_4",option3_4);
session.setAttribute("correct_option3",correct_option3);

session.setAttribute("question4",question4);
session.setAttribute("option4_1",option4_1);
session.setAttribute("option4_2",option4_2);
session.setAttribute("option4_3",option4_3);
session.setAttribute("option4_4",option4_4);
session.setAttribute("correct_option4",correct_option4);

session.setAttribute("question5",question5);
session.setAttribute("option5_1",option5_1);
session.setAttribute("option5_2",option5_2);
session.setAttribute("option5_3",option5_3);
session.setAttribute("option5_4",option5_4);
session.setAttribute("correct_option5",correct_option5);

session.setAttribute("question6",question6);
session.setAttribute("option6_1",option6_1);
session.setAttribute("option6_2",option6_2);
session.setAttribute("option6_3",option6_3);
session.setAttribute("option6_4",option6_4);
session.setAttribute("correct_option6",correct_option6);

session.setAttribute("question7",question7);
session.setAttribute("option7_1",option7_1);
session.setAttribute("option7_2",option7_2);
session.setAttribute("option7_3",option7_3);
session.setAttribute("option7_4",option7_4);
session.setAttribute("correct_option7",correct_option7);

session.setAttribute("question8",question8);
session.setAttribute("option8_1",option8_1);
session.setAttribute("option8_2",option8_2);
session.setAttribute("option8_3",option8_3);
session.setAttribute("option8_4",option8_4);
session.setAttribute("correct_option8",correct_option8);

session.setAttribute("question9",question9);
session.setAttribute("option9_1",option9_1);
session.setAttribute("option9_2",option9_2);
session.setAttribute("option9_3",option9_3);
session.setAttribute("option9_4",option9_4);
session.setAttribute("correct_option9",correct_option9);

session.setAttribute("question10",question10);
session.setAttribute("option10_1",option10_1);
session.setAttribute("option10_2",option10_2);
session.setAttribute("option10_3",option10_3);
session.setAttribute("option10_4",option10_4);
session.setAttribute("correct_option10",correct_option10);

PreparedStatement pstt=conn.prepareStatement("INSERT INTO QUESTIONS (test_id,question_text, option1, option2, option3, option4, correct_option) VALUES (?,?, ?, ?, ?, ?, ?)");
pstt.setInt(1, test_id);
pstt.setString(2, question1);
pstt.setString(3, option1_1);
pstt.setString(4, option1_2);
pstt.setString(5, option1_3);
pstt.setString(6, option1_4);
pstt.setString(7, correct_option1);
int t1=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question2);
pstt.setString(3, option2_1);
pstt.setString(4, option2_2);
pstt.setString(5, option2_3);
pstt.setString(6, option2_4);
pstt.setString(7, correct_option2);
int t2=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question3);
pstt.setString(3, option3_1);
pstt.setString(4, option3_2);
pstt.setString(5, option3_3);
pstt.setString(6, option3_4);
pstt.setString(7, correct_option3);
int t3=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question4);
pstt.setString(3, option4_1);
pstt.setString(4, option4_2);
pstt.setString(5, option4_3);
pstt.setString(6, option4_4);
pstt.setString(7, correct_option4);
int t4=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question5);
pstt.setString(3, option5_1);
pstt.setString(4, option5_2);
pstt.setString(5, option5_3);
pstt.setString(6, option5_4);
pstt.setString(7, correct_option5);
int t5=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question6);
pstt.setString(3, option6_1);
pstt.setString(4, option6_2);
pstt.setString(5, option6_3);
pstt.setString(6, option6_4);
pstt.setString(7, correct_option6);
int t6=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question7);
pstt.setString(3, option7_1);
pstt.setString(4, option7_2);
pstt.setString(5, option7_3);
pstt.setString(6, option7_4);
pstt.setString(7, correct_option7);
int t7=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question8);
pstt.setString(3, option8_1);
pstt.setString(4, option8_2);
pstt.setString(5, option8_3);
pstt.setString(6, option8_4);
pstt.setString(7, correct_option8);
int t8=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question9);
pstt.setString(3, option9_1);
pstt.setString(4, option9_2);
pstt.setString(5, option9_3);
pstt.setString(6, option9_4);
pstt.setString(7, correct_option9);
int t9=pstt.executeUpdate();

pstt.setInt(1, test_id);
pstt.setString(2, question10);
pstt.setString(3, option10_1);
pstt.setString(4, option10_2);
pstt.setString(5, option10_3);
pstt.setString(6, option10_4);
pstt.setString(7, correct_option10);
int t10=pstt.executeUpdate();

if(t1>0 && t2>0 && t3>0 && t4>0 && t5>0 && t6>0&& t7>0 && t8>0 && t9>0 && t10>0){
	out.println("Test Created and questions added successfully"); %> <br> 
	<a href="view_paper.jsp">View paper</a> <%
}
}
}catch(Exception e){out.println(e.getMessage());}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>