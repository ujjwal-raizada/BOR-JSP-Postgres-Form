<%-- 
    Document   : index
    Created on : 9 Jun, 2019, 5:38:57 PM
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
        <title>Welcome Page</title>
    </head>
    <body>
        <div style="padding:20px;margin-top:100px;">
            <h1>Information Portal:</h1>

            <ul>
                <li> <a href ="add.jsp"> Add New Entry! </a> </li>
                <li> <a href ="retrieve.jsp"> Retrieve Previous Entries! </a> </li>
            </ul>
        </div>
        
    </body>
</html>
