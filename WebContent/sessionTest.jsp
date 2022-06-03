<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="true" %>
<html>

<head>
<title>sessionTest.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>sessionTest.jsp</h2>

<h3>HostName=<%=java.net.InetAddress.getLocalHost().getHostName()%></h3>

<%
Integer count = (Integer) session.getAttribute( "count" );
if ( count == null ) count = new Integer( 0 );
%>

<p>
<hr>
<h3>count=<%=count%></h3>
<hr>

<%
count = new Integer( count.intValue() + 1 );
session.setAttribute( "count", count );
%>

<p>
<a href="sessionTest.jsp">Reload</a>
<p>
<a href="index.html">Home</a>

</body>

</html>
