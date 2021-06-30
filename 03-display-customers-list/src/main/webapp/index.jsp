<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<style>
    td {
        font-size: 16px;
        font-family: Tahoma;
        text-align: center;
        color: aliceblue;
        background-color: #63c986;
    }
    tr {
        background-color: #f01de2;
        color: aqua;
    }
</style>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Đoàn Hồng Sơn", "05-09-1999", "Nam Định", "picture/z2472475133209_332e6ca194156d5686fa6e78ea676264.jpg"));
    customers.add(new Customer("Đặng Xuân Thao", "26-06-1990", "Hà Nội", "picture/z2472475169346_774b14e51dc8ab93f0585ed92e5b30e3.jpg"));
    customers.add(new Customer("Phạm Văn Trường", "05-09-1999", "Thái Bình", "picture/z2472475186640_79e823dcce75031e6d099663ff4b2aee.jpg"));
    customers.add(new Customer("Nguyễn Trung Hiệu", "25-05-1999", "Hà Nội", "picture/z2472475226947_ca1bdb7441f66c08dd5587c37c0ef43a.jpg"));
    request.setAttribute("customers", customers);
%>
<form>
    <table style="color: blue" border="1px">
        <tr>
            <th colspan="4"><h1>Customer List</h1></th>
        </tr>
        <tr>
            <td width="300px" height="60px"><b>Fullname</b></td>
            <td width="300px" height="60px"><b>Date of birth</b></td>
            <td width="300px" height="60px"><b>Address</b></td>
            <td width="300px" height="60px"><b>Avatar</b></td>
        </tr>
        <c:forEach var="customer" items="#{customers}">
            <tr>
                <td><c:out value="${customer.getName()}"/></td>
                <td><c:out value="${customer.getBirthday()}"/></td>
                <td><c:out value="${customer.getAddress()}"/></td>
                <td><img width="300px" height="150px" src="<c:out value="${customer.getImg()}"/>"></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
