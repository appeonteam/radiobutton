$PBExportHeader$v30f160a09_pst_column.sra
$PBExportComments$Generated Application Object
forward
global type v30f160a09_pst_column from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables

end variables

global type v30f160a09_pst_column from application
string appname = "v30f160a09_pst_column"
end type
global v30f160a09_pst_column v30f160a09_pst_column

on v30f160a09_pst_column.create
appname="v30f160a09_pst_column"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on v30f160a09_pst_column.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//SQLCA.DBMS = "MSS Microsoft SQL Server 6.x"
//SQLCA.Database = "AppeonTestCase"
//SQLCA.ServerName = "192.0.0.77"
//SQLCA.LogId = "sa"
//SQLCA.AutoCommit = False
//SQLCA.DBParm = ""
//
//connect using sqlca;
//if sqlca.sqlcode = -1 then
//	messagebox('error-information',sqlca.sqlerrtext)
//	halt close;
//else
//	Open(w_mdi)
//end if

//
//n_cst_config lnv_connect
//
//if lnv_connect.of_Connect(SQLCA, lnv_connect.EN_SQL2000)=0 then
//	Open(w_mdi)	
//else
//	MessageBox("Connection DB Failed", SQLCA.SQLErrText, StopSign!)
//	Halt Close
//end if
//

Open(w_mdi)	
//Open(w_offline1)	
end event

event close;disconnect using sqlca;
end event

