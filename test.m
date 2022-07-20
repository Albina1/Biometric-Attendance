 % Database Server
 host = 'localhost';
 % Database Username/Password
 user = 'root';
 password = '';

 % Database Name
 dbName = 'iris_db'; 

 % JDBC Parameters
   jdbcString = 'jdbc:mysql://localhost:3306';
   jdbcDriver = 'com.mysql.jdbc.Driver';

 % Set this to the path to your MySQL Connector/J JAR
 javaaddpath('F:\projectwork\mysql-connector-java-8.0.11.jar');

% Create the database connection object
dbConn = database(dbName, user, password, jdbcDriver, jdbcString);
status = isconnection(dbConn);
msgbox(status);