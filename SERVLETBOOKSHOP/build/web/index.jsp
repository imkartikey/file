<%-- 
    Document   : index
    Created on : Jan 15, 2020, 4:50:08 PM
    Author     : imkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
        <div class="row">
            <div class="col-sm-5">
                
               <a class="btn btn-primary" href="show.jsp" role="button">SHOW ALL BOOKS</a>
                
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
                             
                             <tr>
                                 <TD></TD>
                                 <TD></TD>
                                 <TD></TD>
                                 <TD></TD>
                                 <TD></TD>                                
                                 
                             </tr>
                            
                         
                         </thead>
                    </table>
                </div>            
             
    </body>
</html>
