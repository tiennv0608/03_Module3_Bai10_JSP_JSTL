<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    class Customer {
        public String name;
        public String birthday;
        public String address;
        public String image;

        Customer(String name, String birthday, String address, String image) {
            this.name = name;
            this.birthday = birthday;
            this.address = address;
            this.image = image;
        }
    }
    List<Customer> listCustomer = new ArrayList<Customer>();
    listCustomer.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", ""));
    listCustomer.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", ""));
    listCustomer.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", ""));
    listCustomer.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", ""));
    listCustomer.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", ""));
    request.setAttribute("listCustomer", listCustomer);

%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        html, body {
            background: #f6f6f6;
            padding: 0;
            margin: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
        }

        .white {
            background: white;
        }

        .title {
            padding: 15px;
            text-align: center;
        }

        table {
            padding: 15px;
            text-align: center;
            border-collapse: collapse;
            width: 100%;
            padding: 0;
            margin: 0;
        }

        thead {
            padding: 15px;
            background: #f1f1f1;
        }

        th, td {
            padding: 10px;
        }

        tr + tr {
            border-top: 1px solid #ddd;
        }

        table img {
            max-width: 80px;
            max-height: 80px;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 class="title white">Danh sách khách hàng</h3>
    <table class="white">
        <thead>
        <tr>
            <th>Họ và Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        </thead>
        <tbody>
        <%
            int count = listCustomer.size();
        %>

        <%
            for (int i = 0; i < count; i++) {
                Customer customer = listCustomer.get(i);
        %>

        <tr>
            <td><%=customer.name%>
            </td>
            <td><%=customer.birthday%>
            </td>
            <td><%=customer.address%>
            </td>
            <td><img src="<%=customer.image%>" alt="<%=customer.name%>"/></td>
        </tr>

        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>