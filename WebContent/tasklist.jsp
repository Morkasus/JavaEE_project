<%@ page language="java" 
		contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"
    	import="java.util.* , il.ac.shenkar.javaeeproject.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="../css/main.css">
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</head>
	<body>
	
	
		<div class="container">
			<h1 class="text-center"> Task List </h1>
			<br>
			<ul class="nav nav-tabs">
			  <li role="presentation">
			  	<a href="menu">Menu<span class="glyphicon glyphicon-home menuIcon"></a>
			  </li>
			  <li role="presentation" class="active">
			  	<a href="taskslist">Task list<span class="glyphicon glyphicon-tasks menuIcon"></span></a>
			  </li>
			  <li role="presentation">
			  	<a href="about">About<span class="glyphicon glyphicon-info-sign menuIcon"></span></a>
			  </li>
			  <li role="presentation">
			  	<a href="logout">Logout<span class="glyphicon glyphicon-off menuIcon"></span></a>
			  </li>
			</ul>
			<br>
			<%
			
				HashMap<Integer, Integer> idHash = new HashMap();
				List<Task> tasks = (List<Task>) request.getAttribute("tasks");
				out.println("<table class='table table-hover'>");
				out.println("<thead><tr><th>id</th><th>title</th><th>description</th></tr></thead>");
				for(int i=0; i<tasks.size(); i++) {
					
					int colNum = i+1;
					idHash.put(colNum, tasks.get(i).getTaskId());
					out.println("<tr><td>" + colNum + "</td><td>"+
							tasks.get(i).getTitle() + "</td><td>"+ 
							tasks.get(i).getTaskBody() + "</td></tr>");
				}
				
				session.setAttribute("HASH", idHash);
				out.println("</table>"); 
			%>
			
			
			<%
				String result = (String) request.getAttribute("RESULT");
				if(result != null) {
					out.println("<h5 style='color:#91c459'>" + result + "</h5>");	
				}
			%>
			<hr>
			<ul class="nav nav-pills controllPills">  
 			  <li><a href="addTask">Add Task</a></li>
			  <li><a href="removetask">Remove Task</a></li>
			  <li><a href="edittask">Edit Task</a></li>
			</ul>

		</div>
	
	</body>
</html>