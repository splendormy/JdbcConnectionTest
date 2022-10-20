<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="false" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Properties"%>
<html>

<head>
<title>showJavaProp.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>showJavaProp.jsp</h2>

<table border="1">
<tr>
<th align="left">Key</th><th align="left">Value</th>
</tr>
<%
Properties props = System.getProperties();
Iterator<Object> i = props.keySet().iterator();
String key, val;
while ( i.hasNext() ) {
	key = (String) i.next();
	val = props.getProperty(key);
%>
<tr>
<td><%=key %></td><td><%=val%></td>
</tr>
<%
}
%>
</table>

<hr>

<p>
<a href="showJavaProp.jsp">Reload</a>
<p>
<a href="index.html">Home</a>

</body>

</html>
