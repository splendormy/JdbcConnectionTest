<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="false" %>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="javax.naming.InitialContext"%>
<html>

<head>
<title>showEnv.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>showEnv.jsp</h2>

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
Map<String,String> envs = System.getenv();
Object[] sortedKey = envs.keySet().toArray();
Arrays.sort( sortedKey );
String key, val;
for ( int i =0; i < sortedKey.length; i++ ) {
	key = (String) sortedKey[i];
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
