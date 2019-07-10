<%-- 
    Document   : SearchAddress
    Created on : Nov 26, 2018, 9:30:41 AM
    Author     : vlope
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search GuestBook</title>
    </head>
    <body>
        
        <h3>You can search through the first names of the guest that are currently in the
        guest book. please enter a name</h3>
        <form action="exSearchAddress.jsp">
            search for :
            <input type="text" name="search" >
            <input type="submit" value="Search" />
        </form>
        
        
        <br>
        <br>
        <form action="Register.jsp">
            <input type="submit" value="Register new Entry" />
        </form>
        <form action="DeleteAddress.jsp">
            <input type="submit" value="Delete Entry" />
        </form>
    </body>
</html>
