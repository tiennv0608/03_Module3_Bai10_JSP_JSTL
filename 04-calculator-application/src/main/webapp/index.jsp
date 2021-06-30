<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 06/30/2021
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<div>
    <h1>Simple Calculator</h1>
    <form action="/calculate" method="post">
        <fieldset style="width: 400px">
            <legend>Calculator</legend>
            <table>
                <tr>
                    <td>First operand:</td>
                    <td><input type="text" name="first" placeholder="0"></td>
                </tr>
                <tr>
                    <td>Operator:</td>
                    <td><select name="operator">
                        <option value="+">Addition</option>
                        <option value="-">Subtraction</option>
                        <option value="*">Multiple</option>
                        <option value="/">Division</option>
                    </select></td>
                </tr>
                <tr>
                    <td>Second operand:</td>
                    <td><input type="text" name="second" placeholder="0"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" value="calculate">calculate</button>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
