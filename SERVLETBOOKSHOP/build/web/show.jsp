<%-- 
    Document   : index
    Created on : Jan 15, 2020, 4:50:08 PM
    Author     : imkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    
    if(request.getParameter("submit")!=null)
    {
        
        String id = request.getParameter("bid");
        String name= request.getParameter("bname");
        String price= request.getParameter("bprice");
        int numid= 0;
        int numprice=0;
        
        if(id!=null&& !"".equals(id))
        {
            numid=Integer.parseInt(id);
        }
        if(price!=null&& !"".equals(price))
        {
            numprice=Integer.parseInt(price);
        }
                
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "12356");
        pst = con.prepareStatement("insert into book(book_id,book_name,book_price)values(?,?,?)");
        pst.setInt( 1,numid);
        pst.setString(2,name);
        pst.setInt(3,numprice);
        pst.executeUpdate();
      
%>
<script>
    alert("Record Added");
</script>
<%
    }
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
        
        <h1 align="center"> BOOKSHOP APPLICATION</h1>
        </BR>
        <div class="row" float="center">
            <div class="col-sm-5">
                
                <form method="POST" action="#">
                    
                  
                    <div alight="left">
                        <label class="form-label"> Book ID</label>
                        <input type="number" class="form-control" placeholder="Book ID" id="bid" required>
                        </div>
                            
                    <div alight="left">
                        <label class="form-label"> Book Name</label>
                        <input type="text" class="form-control" placeholder="Book Name" id="bname" required>
                        </div>
                            
                    <div alight="left">
                        <label class="form-label"> Book Price</label>
                        <input type="number" class="form-control" placeholder="Book Price" id="bprice" required>
                    </div>
                    <br>
                    <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <TR>
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                </form>
                
            </div>  
                    
            </div>
            
                <div class="panel-body">
                     
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                             <tr>
                                <th>BOOK ID</th>
                                <th>BOOK NAME</th>
                                <th>BOOK PRICE</th>
                                <th>EDIT</th>
                                <th>DELETE</th>
                             </tr>
                             <%
                              Connection con;
                                PreparedStatement pst;
                                ResultSet rs;

                                Class.forName("org.postgresql.Driver");
                                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
                                    "postgres", "12356");
                                
                                    String query = "select *from book";
                                    Statement st= con.createStatement();
                                    rs=st.executeQuery(query);
                                    while (rs.next())
                                            {
                                        String id= rs.getString("book_id");
                                                
                                    
                                %>
                             <tr>
                                 <TD><%=rs.getString("book_id")%></TD>
                                 <TD><%=rs.getString("book_name")%></TD>
                                 <TD><%=rs.getString("book_price")%></TD>
                                 <TD><a href="update.jsp?id=<%=id%>">Edit</a></TD>
                                 <TD><a href="delete.jsp?id=<%=id%>">Delete</a></TD>
                             </tr>
                             <%
                             
                                }
                             %>
                         
                         </thead>
                    </table>
                </div>            
              </div>
        </div>
    </body>
</html>
