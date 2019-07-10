<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="myBean" scope="session" class="org.AddressB" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Entry</title>
    </head>
    <body>
        <sql:setDataSource 
            var = "snapshot" 
            driver = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/WebClass"
            user = "root"  password = ""/>
        
        <form action="exDelete.jsp" >
            <table border = "1" >
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>email</th>
                    <th>DELETE</th>
                </tr>

                <%
                    String s = myBean.table();
                    out.println(s);
                %>
            </table>
        </form>
            <br><br><br>
            <form action="Register.jsp">
                <input type="submit" value="Register new Entry" />
            </form>
            <br>
            <form action="SearchAddress.jsp">
                <input type="submit" value="Search GuestBook" />
            </form>
                
        
    </body>
</html>
