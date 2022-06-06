# JdbcConnectionTest

JDBC Connection Test Application for WebSphere Liberty.

This application connects to data sources and executes following SQL statement.

* for DB2 data source: SELECT CURRENT_TIMESTAMP FROM sysibm.sysdummy1
* for Oracle data source: SELECT CURRENT_TIMESTAMP FROM dual

Data source reference DS01, DS02 and DS03 are for Db2 and others (DS04 and DS05) are for Oracle.

If you have only a single data source for Db2, map all data source references to it.
(see sample server.xml below. DS04 and DS05 will not work.)


    <server>
        <featureManager>
            <feature>webProfile-8.0</feature>
            <feature>localConnector-1.0</feature>
        </featureManager>
        <keyStore password="xxxx"/> 
        <httpEndpoint httpPort="9080" httpsPort="9443" id="defaultHttpEndpoint"/>
        <dataSource containerAuthDataRef="SampleAD" id="SampleDS" jdbcDriverRef="SampleJD" jndiName="jdbc/sample">
            <properties.db2.jcc databaseName="sample" portNumber="50000" serverName="xxxxx"/>
        </dataSource>
        <authData id="SampleAD" password="xxxx" user="xxxxx"/>
        <jdbcDriver id="SampleJD">
            <library>
            <fileset dir="/IBM/DB2Driver" includes="db2jcc4.jar"/>
            </library>
        </jdbcDriver>
        <applicationMonitor updateTrigger="polled"/>
        <applicationManager autoExpand="true"/>
        <webApplication
            id="JdbcConnectionTest"
            name="JdbcConnectionTest"
            location="JdbcConnectionTest.war"> 
            <web-bnd>
                <resource-ref name="jdbc/DS01" binding-name="jdbc/sample" />
                <resource-ref name="jdbc/DS02" binding-name="jdbc/sample" />
                <resource-ref name="jdbc/DS03" binding-name="jdbc/sample" />
                <resource-ref name="jdbc/DS04" binding-name="jdbc/sample" />
                <resource-ref name="jdbc/DS05" binding-name="jdbc/sample" />
            </web-bnd>
            <web-ext>
                <file-serving-attribute value="true"/>
            </web-ext>
        </webApplication>
    </server>
