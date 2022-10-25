<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="false" %>
<%@page import="javax.naming.InitialContext"%>
<html>

<head>
<title>serverName.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>serverName.jsp</h2>

<h3>
HostName=<%=java.net.InetAddress.getLocalHost().getHostName()%>
</h3>
<h3>
ServerName=<%=(String) (new InitialContext()).lookup( "java:comp/env/serverName" )%>
</h3>

<hr>

<p>
<a href="serverName.jsp">Reload</a>
<p>
<a href="index.html">Home</a>

</body>

</html>
