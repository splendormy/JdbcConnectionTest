<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="true" %>
<html>

<head>
<title>jdbcTestHome.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>jdbcTestHome.jsp</h2>

<h3>HostName=<%=java.net.InetAddress.getLocalHost().getHostName()%></h3>

<p>
<hr>
<jsp:include flush="true" page="jdbcTestForm.jsp"/>
<hr>

<p>
<a href="index.html">Home</a>

</body>

</html>
