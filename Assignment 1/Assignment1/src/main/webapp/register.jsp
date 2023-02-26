<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Register</title>
    <style>
      
      form{
        display: flex;
        flex-direction: column;
      }
      input,button{
        width: 200px;
      }
      label, button{
      margin-top: 10px;
      }
      small{
      color: rgb(255, 56, 56);
      display:none;
      font-weight: bold;
      }	
    </style>
  </head>
  <body>
  <h1>Register</h1>
    <form action="Controller.jsp" method="post" >
    <%if(request.getAttribute("error") != null){ %>
    <h3><%= request.getAttribute("error") %></h3>
    <%} %>
      <label for="firstname">First Name:</label>
      <input type="text" name="firstname" id="firstname" required="required" />
      
      <label for="lastname">Last Name:</label>
      <input type="text" name="lastname" id="lastname" required="required" />
      
      <label for="email">Email:</label>
      <input type="email" name="email" id="email" required="required" />
      
      <label for="password">Password:</label>
      <input type="password" name="password" id="password" required="required" />
      
      <button type="submit" id="submit-button" >Register</button>
    </form>

 
  </body>
</html>
