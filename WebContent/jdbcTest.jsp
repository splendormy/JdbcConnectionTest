<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page session="true" %>
<%@page import="java.util.StringTokenizer"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<html>

<head>
<title>jdbcTest.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS">
</head>

<body>

<h2>jdbcTest.jsp</h2>

<h3>HostName=<%=java.net.InetAddress.getLocalHost().getHostName()%></h3>

<%
String param = request.getParameter( "param" );
if ( param == null ) {
%>
	<p><hr>No parameter is specified.<hr>
<%
} else {
	StringTokenizer tokenizer = new StringTokenizer( param, ", " );
	String jndiName  = tokenizer.nextToken();
	String tableName = tokenizer.nextToken();
	String sql = "SELECT CURRENT_TIMESTAMP FROM " + tableName;
	InitialContext context = new InitialContext();
	DataSource ds = (DataSource) context.lookup( jndiName );
	Connection con = ds.getConnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery( sql );
	String data = null;
	if ( rs.next() ) data = rs.getString( 1 );
	rs.close();
	st.close();
	con.close();
%>
    <p>
    <hr>
	<h3>DataSource=<%=jndiName%></h3>
	<h3>sql=<%=sql%></h3>
	<h3>result=<%=data%></h3>
<%
}
%>
<p>
<hr>
<jsp:include flush="true" page="jdbcTestForm.jsp"/>
<hr>

<p>
<a href="index.html">Home</a>

</body>

</html>
