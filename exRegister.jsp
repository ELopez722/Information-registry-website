<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="myBean" scope="session" class="org.AddressB" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inputing data</title>
    </head>

    <%
        int nameTest, emailTest;
        String fname, lname, email, fwd;
        lname = request.getParameter("lname");
        nameTest = myBean.validate(lname);
        if (nameTest == 0) {
            lname = "Unknown";
        }
        fname = request.getParameter("fname");
        nameTest = myBean.validate(fname);
        if (nameTest == 0) {
            fname = "";
        }
        email = request.getParameter("email");
        emailTest = myBean.validate(email);
        if (emailTest == 0) {
            email = "";
        }

        session.setAttribute("fname", fname);
        session.setAttribute("lname", lname);
        session.setAttribute("email", email);

        if (nameTest == 0 || emailTest == 0) {
            session.setAttribute("reset", "1");
            fwd = "Register.jsp";
        } else {
            fwd = "SearchAddress.jsp";
     }
        myBean.addEntry(fname, lname, email);
        response.sendRedirect(fwd);
    %>

</html>
