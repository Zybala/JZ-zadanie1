<%-- 
    Document   : index
    Created on : Jun 25, 2015, 10:03:15 AM
    Author     : rome0_000
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%	
	ServletContext formContext = request.getServletContext();
	Integer formCounter = (Integer)formContext.getAttribute("counter");
	formCounter = formCounter != null ? formCounter : 0;
	
	int maxParticipants = 5;
	
	if (formCounter == maxParticipants)
	{
		response.sendRedirect("LimitReached.jsp");
	}
	else
	{
	formCounter = maxParticipants - formCounter;
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Java 4 US!</title>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Roboto Condensed:light">
    <style>
	      body {
    	    font-family: 'Roboto Condensed', serif;
        	font-size: 20px;
      		}
    </style>
</head>
<body bgcolor="#E1E1E1">
	<table width="650px" align="center" style="margin-left :15px">
		<tr>
		<td>

<div><h1>Witamy na stronie rejestracyjnej konferencji programistycznej.</h1></div>

<div><h2>Wolnych miejsc pozostalo : (<%=formCounter%>) </h2></div>

    <form method = "post"
    		action = "index">
 		<table cellpadding="10"><tr>
 			<td>Imie:</td>
				<td>   
    				<input type = "text" name = "imie" />
    			</td>	
    		</tr><tr>
    		<td>Nazwisko:</td>
				<td>  		
   					<input type = "text" name = "nazwisko" />
   				</td>
   			</tr><tr>
   			<td>Email:</td>
				<td>  		 
   					<input type = "text" name = "email" />
   				</td>
   			</tr><tr>
   			<td>potwierdz email:</td>
				<td>  		 
   					<input type = "text" name = "potwierdz" />
   				</td>
   			</tr><tr>
   			<td>Firma:</td>
				<td>  		
   					<input type = "text" name = "firma" />
   				</td>
   			</tr><tr>
   			<td>skad o nas wiesz:</td>
				<td>  		
     				<select name = "origin">
    					<option value = "work_ad">z pracy</option>
   						<option value = "school_ad">ze szkoly</option>
    					<option value = "facebook">z fejsbuka</option>
    					<option value = "friend">od znajomych</option>
   						<option value = "other">skads indziej</option>       
   					</select>
   				</td>
   			</tr><tr>
   			<td>Pozycja:</td>
				<td>  		
    				<input type = "text" name = "pozycja" />
    			</td>
    		</tr><tr>
				<td colspan="2">		
   	 				<input type = "submit" value = "Rejestruj"/>
   	 			</td>
			</tr>
		</table>	
       
    </form>

		</td>
		</tr>
	</table>
</body>
</html>