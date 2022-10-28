<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <title><spring:message code="register"/></title>
        <style>
            .error {
                color: #ff0000;
            }
            .errorblock {
                color: #000;
                background-color: #ffEEEE;
                border: 3px solid #ff0000;
                padding: 8px;
                margin: 16px;
            }
        </style>
    </head>
    <body>
        <h1><spring:message code="register"/></h1>
        <form:form modelAttribute="registration">
            <form:errors path="*" cssClass="errorblock" element="div" />

            <table>
                <tr>
                    <td><spring:message code="firstName"/>:</td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td><spring:message code="lastName"/>:</td>
                    <td><form:input path="lastName" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit"><spring:message code="save.changes" /></button>
                    </td>
                </tr>
            </table>
        </form:form>
    </body>
</html>