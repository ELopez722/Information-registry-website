<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="myBean" scope="session" class="org.AddressB" />
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleting....</title>
    </head>

    <%  
       int val = Integer.parseInt(request.getParameter("id"));
       myBean.deleteEntry(val);
       response.sendRedirect("DeleteAddress.jsp");
    %>


