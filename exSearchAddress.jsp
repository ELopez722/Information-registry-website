<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="myBean" scope="session" class="org.AddressB" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results</title>
    </head>
    <h2>Results</h2>
    <table border = "1" >
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>email</th>
        </tr>
        <%
            String search, result;
            search = request.getParameter("search");
            result = myBean.search(search);
            out.println(result);
        %>
    </table>
    <br><br><br>
    <form action="Register.jsp">
        <input type="submit" value="Register new Entry" />
    </form>
    <br>
    <form action="SearchAddress.jsp">
        <input type="submit" value="Search GuestBook" />
    </form>
    <br>
    <form action="DeleteAddress.jsp">
        <input type="submit" value="Delete Entry" />
    </form>

</html>
