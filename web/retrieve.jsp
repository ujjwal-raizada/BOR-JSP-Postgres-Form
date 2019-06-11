<%-- 
    Document   : retrieve
    Created on : 9 Jun, 2019, 5:43:27 PM
    Author     : ujjwalrox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <link rel="stylesheet" type="text/css" href="style.css"> 
 <div class="header">
  <a href="index.jsp" class="logo">Board of Revenue</a>
  <div class="header-right">
    <a class="active" href="/">Home</a>
    <a href="add.jsp">Insert</a>
    <a href="retrieve.jsp">Retrieve</a>
  </div>
</div>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retrieve Data!</title>
    </head>
    <body>
        <div style="padding:20px;margin-top:100px;">
        <h1>Retrieve Data!</h1>
        
        <form name="find" action="find.jsp" method="POST">
            <input type="text" name="id" placeholder="College ID" />
            <input type="submit" value="Find" />
        </form>
        </div>
    </body>
</html>
