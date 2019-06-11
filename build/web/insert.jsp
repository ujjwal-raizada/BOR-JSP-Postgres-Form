<%-- 
    Document   : insert
    Created on : 9 Jun, 2019, 6:02:25 PM
    Author     : ujjwalrox
--%>

<%@page import = "java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
// status message given.
<%!
class Database{

    public boolean id_exists(String college_id) {


		String url = "jdbc:postgresql://localhost:5432/ujjwal";
		Connection con;
		String sqlstr1 = "SELECT * FROM nameid WHERE id='" + college_id + "';";
                

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
			ResultSet rs = st1.executeQuery(sqlstr1);
                        boolean status;
                        
                        if (rs.next())
                            status = true;
                        else
                            status = false;
                        
			st1.close();
                        con.commit();
			con.close();
                        return status;


		}
                catch (SQLIntegrityConstraintViolationException ex) {
                    return false;
                }
		catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
                        return false;
		}
    }
    
    public boolean insert_name(String name, String college_id) {


		String url = "jdbc:postgresql://localhost:5432/ujjwal";
		Connection con;
		String sqlstr1 = "insert into nameid VALUES('" + name + "', '" + college_id + "');";
                

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
			st1.executeQuery(sqlstr1);
			st1.close();
                        con.commit();
			con.close();


		}
                catch (SQLIntegrityConstraintViolationException ex) {
                    return false;
                }
		catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
                        return true;
		}
                return true;
	}
    
    public boolean insert_info(String college_id, String college_name, String gender, String degree) {
        
        String url = "jdbc:postgresql://localhost:5432/ujjwal";
	Connection con;
        String sqlstr2 = "insert into student_info VALUES('" + college_id + "', '" + gender + "', '" + college_name + "', '" + degree + "');";
                
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
			st1.executeQuery(sqlstr2);
			st1.close();
			con.close();


		} 
		catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
                        return false;
		}
                return true;
    
    }
}
%>

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
        <title>DB: Insert</title>
    </head>
    <body>
        <div style="padding:20px;margin-top:100px;">
        <h1>Inserting Value</h1>
        
        <%
        String name = request.getParameter("Name");
        String college_name = request.getParameter("College Name");
        String college_id = request.getParameter("College ID");
        String degree = request.getParameter("Degree");
        String gender = request.getParameter("Gender");
        
        Database db = new Database();
        db.insert_name(name, college_id);
        db.insert_info(college_id, college_name, gender, degree);
        
        String msg = "";
        boolean status = db.id_exists(college_id);
        System.out.println(status);
        if (status == true) {
            msg = "College ID Already Exists!";
        }

        %>
        

        <h3 style="color: red;"><%= msg %></h3>
        <table border="0" cellspacing="3" cellpadding="3">

            <tbody>
                <tr>
                    <td>Name: </td>
                    <td><%= name %></td>
                </tr>
                <tr>
                    <td>College Name: </td>
                    <td><%= college_name %></td>
                </tr>
                <tr>
                    <td>College ID: </td>
                    <td><%= college_id %></td>
                </tr>
                <tr>
                    <td>Degree: </td>
                    <td><%= degree %></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td><%= gender %></td>
                </tr>
            </tbody>
        </table>

        </div>
        
    </body>
</html>
