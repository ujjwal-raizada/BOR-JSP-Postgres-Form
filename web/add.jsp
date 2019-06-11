<%-- 
    Document   : add
    Created on : 9 Jun, 2019, 5:43:18 PM
    Author     : ujjwalrox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <link rel="stylesheet" type="text/css" href="style.css"> 
 <div class="header">
  <a href="index.jsp" class="logo">Board of Revenue</a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="add.jsp">Insert</a>
    <a href="retrieve.jsp">Retrieve</a>
  </div>
</div>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Data</title>
    </head>
    <body>
        <div style="padding:20px;margin-top:100px;">
        <h1>Add Data</h1>
        
        <form name="Insert Value" action="insert.jsp" method="POST">
            
            <input type="text" name="Name" placeholder="Name" /><br>
            <input type="text" name="College Name" placeholder="College Name" /><br>
            <input type="text" name="College ID" placeholder="College ID" /><br>
            <input type="text" name="Degree" placeholder="Degree" /><br>
            <select name="Gender">
                <option>Male</option>
                <option>Female</option>
            </select><br>
            
            <input type="submit" value="Submit" name="Submit" />
            
        </form>
        </div>
    </body>
</html>
