<%@page import="java.sql.*"%>
<%
    
    {
        
        String id= request.getParameter("bid");      
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        int numid= 0;
        if(id!=null&& !"".equals(id))
        {
            numid=Integer.parseInt(id);
        }
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "12356");
        pst = con.prepareStatement("delete from book where book_id =?");
        pst.setInt( 1,numid);
        pst.executeQuery();
        pst.executeUpdate();
      
%>
<script>
    alert("Record deleted");
</script>
<%}
%>