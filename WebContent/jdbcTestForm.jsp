<%@page pageEncoding="UTF-8" %>

<form action="jdbcTest.jsp" method="POST">
<SELECT size="1" name="param">
<OPTION selected value="java:comp/env/jdbc/DS01, sysibm.sysdummy1">java:comp/env/jdbc/DS01, sysibm.sysdummy1</OPTION>
<OPTION          value="java:comp/env/jdbc/DS02, sysibm.sysdummy1">java:comp/env/jdbc/DS02, sysibm.sysdummy1</OPTION>
<OPTION          value="java:comp/env/jdbc/DS03, sysibm.sysdummy1">java:comp/env/jdbc/DS03, sysibm.sysdummy1</OPTION>
<OPTION          value="java:comp/env/jdbc/DS04, dual">java:comp/env/jdbc/DS04, dual</OPTION>
<OPTION          value="java:comp/env/jdbc/DS05, dual">java:comp/env/jdbc/DS05, dual</OPTION>
</SELECT>
<input type="submit"/>
</form>
