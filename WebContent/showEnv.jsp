<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="false" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<html>

<head>
<title>showEnv.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>showEnv.jsp</h2>

<table border="1">
<tr>
<th align="left">Key</th><th align="left">Value</th>
</tr>
<%
Map<String,String> envs = System.getenv();
Iterator<String> i = envs.keySet().iterator();
String key, val;
while ( i.hasNext() ) {
	key = i.next();
	val = envs.get(key);
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
<a href="showEnv.jsp">Reload</a>
<p>
<a href="index.html">Home</a>

</body>

</html>
