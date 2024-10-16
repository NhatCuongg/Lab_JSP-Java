<%-- 
    Document   : Bai04
    Created on : 16 thg 10, 2024, 22:48:41
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
        <h1>ĐỔI NGOẠI TỆ</h1>
        <form action="Bai04.jsp" method="POST">
            <table border="0">
                <tr>
                    <td>Cho biết số tiền</td>
                    <td> <input type="text" name="soTien" required="" /> </td>
                </tr>
                <tr>
                    <td>Chọn loại ngoại tệ</td>
                    <td> <select name="loaiNgoaiTe">
                            <option value="USD">USD</option>
                            <option value="GBP">GBP</option>
                            <option value="EUR">EUR</option>
                            <option value="JPY">JPY</option>
                            <option value="AUD">ADU</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Đổi tiền" />
                        <input type="reset" value="Tiếp Tục"/>
                    </td>
                </tr>
            </table>
        </form>
        <%
            String sotien = request.getParameter("soTien");
            String loaingoaite=request.getParameter("loaiNgoaiTe");
            if(sotien!=null && loaingoaite!=null)
            {
            double st= Double.parseDouble(sotien);
            double tienvnd=0;
            
            switch (loaingoaite) {
                    case "USD":
                        tienvnd = st * 21380;
                        break;
                    case "GBP":
                        tienvnd = st * 32622.8;
                        break;
                    case "EUR":
                        tienvnd = st * 23555.67;
                        break;
                    case "JPY":
                        tienvnd = st * 178.61;
                        break;
                    case "ADU":
                        tienvnd = st * 16727.44;
                        break;
                    default:
                        break;
                }
            out.println("Số tiền đổi được: <b>" + tienvnd + "<br>đ");
         }
        %>

    </body>
</html>
