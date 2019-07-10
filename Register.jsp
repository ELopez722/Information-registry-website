<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register New Entry</title>
    </head>
    <body>
        <%
            if (session.getAttribute("reset") == null
                    || session.getAttribute("reset").toString().compareTo("0") == 0); else {
                out.println("Please properly fillout the name and email field<br>");
                session.setAttribute("reset", "0");
            }
        %>

        <form action="exRegister.jsp" >
            First Name: 
                   <input type="text" name="fname" value="<%if (session.getAttribute("fname") == null) {
                    out.println("");
                } else {
                    out.println(session.getAttribute("fname"));
                }%>" >
            <br>
            Last Name:
                   <input type="text" name="lname" value="<%if (session.getAttribute("lname") == null) {
                    out.println("");
                } else {
                    out.println(session.getAttribute("lname"));
                }%>" >
            <br>
            Email:
                   <input type="text" name="email" value="<%if (session.getAttribute("email") == null) {
                    out.println("");
                } else {
                    out.println(session.getAttribute("email"));
                }%>"> 
                   <br>
            <input id="btn" type="submit" name="Submit"  value="Submit"/>
            <br><br><br>
            <form action="SearchAddress.jsp">
                <input type="submit" value="Search GuestBook" />
            </form>
            <br>
            <form action="DeleteAddress.jsp">
                <input type="submit" value="Delete Entry" />
            </form>
            
        </form>
    </body>
</html>
