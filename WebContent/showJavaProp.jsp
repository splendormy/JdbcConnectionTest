<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="false" %>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.naming.InitialContext"%>
<html>

<head>
<title>showJavaProp.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>showJavaProp.jsp</h2>

<h3>
HostName=<%=java.net.InetAddress.getLocalHost().getHostName()%>
</h3>
<h3>
ServerName=<%=(String) (new InitialContext()).lookup( "java:comp/env/serverName" )%>
</h3>

<table border="1">
<tr>
<th align="left">Key</th><th align="left">Value</th>
</tr>
<%
Properties props = System.getProperties();
Object[] sortedKey = props.keySet().toArray();
Arrays.sort( sortedKey );
String key, val;
for ( int i =0; i < sortedKey.length; i++ ) {
	key = (String) sortedKey[i];
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
