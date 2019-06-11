<%-- 
    Document   : find
    Created on : 9 Jun, 2019, 7:01:28 PM
    Author     : ujjwalrox
--%>
<%@page import = "java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
class Database{


    public String[] find(String college_id) {


		String url = "jdbc:postgresql://localhost:5432/ujjwal";
		Connection con;
                
                String[] result = new String[6];
                ResultSet rs = null;
		String sqlstr1 = "select * from nameid, student_info where nameid.id = '" + college_id + "' AND student_info.id = '" + college_id + "';";
                

		try {
			Class.forName("org.postgresql.Driver");
		} 
		catch(java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}


		try {
			con = DriverManager.getConnection(url,"postgres", "postgres");


			Statement st1 = con.createStatement();
			rs = st1.executeQuery(sqlstr1);
                        
                        while(rs.next()) {
                            
                            
                            
                            result[0] = rs.getString(1);
                            result[1] = rs.getString(2);
                            result[2] = rs.getString(3);
                            result[3] = rs.getString(4);
                            result[4] = rs.getString(5);
                            result[5] = rs.getString(6);
                        }
                        
                        
                        
			st1.close();
                        con.commit();
			con.close();
                        return result;


		} 
		catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
                return result;
	}
}



%>

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
        <title>Find</title>
    </head>
    <body>
        <div style="padding:20px;margin-top:100px;">
        <h1>Result</h1>
        
        <%
        String college_id = request.getParameter("id");
        Database db = new Database();
        String[] result = db.find(college_id);
        %>
        
        <table border="0" cellspacing="3" cellpadding="3">

            <tbody>
                <tr>
                    <td>Name: </td>
                    <td><%= result[0]%></td>
                </tr>
                <tr>
                    <td>ID: </td>
                    <td><%= result[1]%></td>
                </tr>
                <tr>
                    <td>College Name: </td>
                    <td><%= result[4]%></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td><%= result[3]%></td>
                </tr>
                <tr>
                    <td>Degree: </td>
                    <td><%= result[5]%></td>
                </tr>
            </tbody>
        </table>

        </div>
    </body>
</html>
