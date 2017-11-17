All passwords are oracle or noted if otherwise.

The SQL Developer and Data Modeler scripts are in the directory: 
/home/oracle/Desktop/Database_Track/sqldevdm
and
/home/oracle/Desktop/Database_Track/sqldev

The Application Express scripts are in the directory:
/home/oracle/Desktop/APEX_Track/files

To Reset the labs: 
SQL Developer:            /home/oracle/reset_sqldev (includes ORDS, Data Modeler, Unit Test)
JSON    :                 /home/oracle/reset_json
Application Express:      /home/oracle/reset_apex
REST Data Services :      /home/oracle/reset_rest (APEX related)
SODA4REST :               /home/oracle/reset_soda4rest
Soup to Nuts :            /home/oracle/reset_soup
  -- APEX Labs Only       /home/oracle/reset_soup_apex_only
XML DB  :                 /home/oracle/reset_xmldb

SODA4REST documentation is under: /home/oracle/Desktop/Database_Track/SODA4REST

Database Information:
Oracle SID    : orcl12c
Pluggable DB  : orcl
Pluggable DB  : ords create if required by running: 
    'newpdbords' in the terminal - takes a few minutes.

ALL PASSWORDS ARE : oracle

*** Please note that this appliance is for testing purposes only, 
as such it is unsupported and should not be used as a production environment.

[oracle@localhost ~]$ sqlplus

SQL*Plus: Release 12.2.0.1.0 Production on Wed Nov 15 15:33:28 2017

Copyright (c) 1982, 2016, Oracle.  All rights reserved.

Enter user-name: oracle
Enter password: 
ERROR:
ORA-01017: invalid username/password; logon denied

-------login in as Admin
Enter user-name: system
Enter password: 
Last Successful login time: Wed Nov 15 2017 15:24:39 -05:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production

------Create a new user
SQL> create user RENTCAR IDENTIFIED BY RENTCAR;

User created.

SQL> grant create session to RENTCAR;

Grant succeeded.

-----disconnect as Admin user
SQL> QUIT                                 
Disconnected from Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production
[oracle@localhost ~]$ sqlplus RENTCAR

SQL*Plus: Release 12.2.0.1.0 Production on Wed Nov 15 15:55:04 2017

Copyright (c) 1982, 2016, Oracle.  All rights reserved.

Enter password: 

Connected to:
Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production

SQL> QUIT
Disconnected from Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production
[oracle@localhost ~]$ sqlplus

SQL*Plus: Release 12.2.0.1.0 Production on Wed Nov 15 16:07:24 2017

Copyright (c) 1982, 2016, Oracle.  All rights reserved.

Enter user-name: system
Enter password: 
Last Successful login time: Wed Nov 15 2017 15:33:56 -05:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production

SQL> grant all privileges to RENTCAR;

Grant succeeded.

SQL> Grant unlimited tablespace to RENTCAR;

Grant succeeded.

SQL> QUIT
Disconnected from Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production
[oracle@localhost ~]$ SQLPLUS RENTCAR
bash: SQLPLUS: command not found...
[oracle@localhost ~]$ sqlplus RENTCAR;

SQL*Plus: Release 12.2.0.1.0 Production on Wed Nov 15 16:16:14 2017

Copyright (c) 1982, 2016, Oracle.  All rights reserved.

Enter password: 
Last Successful login time: Wed Nov 15 2017 15:55:11 -05:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production

SQL> QUIT
Disconnected from Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production
[oracle@localhost ~]$ sqlplus

SQL*Plus: Release 12.2.0.1.0 Production on Wed Nov 15 16:27:11 2017

Copyright (c) 1982, 2016, Oracle.  All rights reserved.

Enter user-name: oracle
Enter password: 
ERROR:
ORA-01017: invalid username/password; logon denied


Enter user-name: system
Enter password: 
Last Successful login time: Wed Nov 15 2017 16:16:42 -05:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production

------- change RentCar password to reco 

SQL> ALTER USER RENTCAR IDENTIFIED BY reco;          

User altered.

SQL> quit
Disconnected from Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production
[oracle@localhost ~]$ sqlplus RENTCAR;

SQL*Plus: Release 12.2.0.1.0 Production on Wed Nov 15 16:30:07 2017

Copyright (c) 1982, 2016, Oracle.  All rights reserved.

Enter password: 
Last Successful login time: Wed Nov 15 2017 16:16:20 -05:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production

SQL> 
