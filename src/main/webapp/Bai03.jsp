x<%-- 
    Document   : Bai03
    Created on : 16 thg 10, 2024, 22:42:57
    Author     : CUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TÍNH DIỆN TÍCH - CHU VI HÌNH TRÒN</h1>
        <form action="Bai03.jsp" method="POST">
            <table border ="0">
                <tr>
                    <td>Nhập bán kính</td>
                    <td><input type="text" name="bankinh" value="" required="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Tính Toán" />
                        <input type="reset" value="Tiếp tục" />
                    </td>
                </tr>
            </table>
        </form>

        <%
            String dai = request.getParameter("bankinh");
            if (bankinh != null) 
            {
                double bk = Double.parseDouble(bankinh);
                double dt = 3.14 * bk * bk;
                double cv = 2 * 3.14 * bk;
        %>
        
        <%
            }
        %> 
    </body>
</html>
