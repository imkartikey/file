<%-- 
    Document   : update
    Created on : Jan 16, 2020, 4:40:21 AM
    Author     : imkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
%>














<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BOOKSHOP APPLICATION</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>UPDATE DETAILS</h1> 
        
        <div class="row">
               <div class="col-sm-4">
                <form method="POST" action="#">
                    
                    <%
                        
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;

                                Class.forName("org.postgresql.Driver");
                                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
                                    "postgres", "12356");
                                String id= request.getParameter("book_id");
                                int numid= 0;
                               
                                if(id!=null&& !"".equals(id))
                                {
                                    numid=Integer.parseInt(id);
                                }
                                
                                pst=con.prepareStatement("Select * from book where book_id=?");
                                pst.setInt(1,numid);
                                rs = pst.executeQuery();
                                
                               while(rs.next()){
                                
                    %>
                                        
                    <div alight="left">
                        <label class="form-label"> Book ID</label>
                        <input type="number" class="form-control" placeholder="Book ID" value="<%rs.getInt("numid");%>" id="bid" required>
                        </div>
                            
                    <div alight="left">
                        <label class="form-label"> Book Name</label>
                        <input type="text" class="form-control" placeholder="Book Name" id="bname" required>
                        </div>
                            
                    <div alight="left">
                        <label class="form-label"> Book Price</label>
                        <input type="number" class="form-control" placeholder="Book Price" id="bprice" required>
                    </div>
                    <%
                               }
                    %>
                    <br>
                    <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <TR>
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                    </div>     
                    <div align="right">
                        <p><a href="index.jsp">Click Back</a></p>
                </form>
                
            </div>
        </div>
        
    </body>
</html>
