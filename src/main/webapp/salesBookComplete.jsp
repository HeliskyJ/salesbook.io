<%-- 
    Document   : salesBookComplete
    Created on : 11-mar-2019, 14:11:58
    Author     : hely
--%>
<%@page import="java.util.List"%>
<%@page import="com.models.Documents"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styleBook.css" type="text/css">
        <title>Libro Ventas</title>
    </head>
    <body>
        <a href="/salesBook/bookList.jsp"> <img id="back" src="images/back.png" width="90px"> </a>
        <table id="cabeza">
            <%
                String nto = (String.valueOf(session.getAttribute("Nto")));
                String ngp = (String.valueOf(session.getAttribute("Ngo")));
                String nt = (String.valueOf(session.getAttribute("nt")));
            %>
            <th colspan="3">Libro de Ventas.</th>
            <th><%= nto%> </th>
            <tr>
                <th colspan="3"><%= ngp%></th>
                <th><%= nt%></th>     
            </tr>
        </table>
        <br><br>

        <div class="container">
            <table id="tabl">
                <thead id="h">
                    <tr>
                        <th colspan="3">DOCUMENTO</th>
                        <th colspan="1">TIPO</th>
                        <th colspan="1"></th>
                        <th colspan="1"></th>
                        <th colspan="2">VENTAS</th>
                        <th colspan="1">BIENES</th>
                        <th colspan="1">IVA</th>
                    </tr>
                    <tr>
                        <th>SERIE</th>
                        <th>No.</th>
                        <th>FECHA</th>
                        <th>DOCUMENTO</th>
                        <th>NIT</th>
                        <th>NOMBRE O RAZON SOCIAL/ DEL CLIENTE</th>
                        <th>ES EXENTA</th>
                        <th>IVA</th>
                        <th>VALOR NETO</th>
                        <th>TOTAL</th>
                    </tr>
                </thead>
                <tbody id="tb">
                    <c:forEach items="${lis}" var="book">
                        <tr id="trr">
                            <td>${book.serie}</td>
                            <td>${book.no_doc}</td>
                            <td>${book.documentDate}</td>
                            <td>${book.docName}</td>                                 
                            <td>${book.buyNit}</td>
                            <td>${book.buyer}</td>
                            <td>${book.exempt}</td>              
                            <td>${book.iva}</td>
                            <td>${book.net}</td>
                            <td>${book.total}</td>
                            <td><a href="/salesBook/Doctos?id=${book.id}"> Detalles</a></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <th colspan="6"> TOTAL </th>
                        <th>0</th>
                        <th>0</th>
                        <th>0</th>
                        <th>0</th>                            
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
