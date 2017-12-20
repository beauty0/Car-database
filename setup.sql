---This is the drop user and the tablespace
---Then restarted with the reinstallation 

 Drop USER MYRENTCAR CASCADE;
 Drop TABLESPACE MYRENTCAR_db including contents and datafiles;
 

@Createuser.sql;
@Grantprivileges.sql;
@Alltable_Created.sql;
@Allsequences.sql;
@Insert_allvalues.sql;
@Allcursors.sql;
@Carcust_view.sql;
@Alltrigger.sql;
@Allprocedures.sql;
@Allfunctions.sql;
@Packagespecif.sql;
