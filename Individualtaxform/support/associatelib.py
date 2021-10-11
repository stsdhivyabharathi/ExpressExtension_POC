import  pyodbc as pyodbc
import  datetime



class associatelib:

  def fndbget(self,qry):
    connect=pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};server=129.213.189.132;Database=ExpressExtensionAuto_Staging;uid=StagingAutomationDB_User;pwd=Asc$nd@s#113;Trusted_Connection=no;')
    cursor=connect.cursor()
    cursor.execute(qry)
    for row in cursor:
       return (row[0])
    cursor.close()
    connect.close()


  def writelog(self,qry):
    connect=pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};server=129.213.189.132;Database=ExpressExtensionAuto_Staging;uid=StagingAutomationDB_User;pwd=Asc$nd@s#113;Trusted_Connection=no;')
    cursor=connect.cursor()
    cursor.execute("Insert into autolog (logid,tsid,tsdesc,tcid,expectedres,actualres,runstatus,reference) values ("+qry+");")
    connect.commit()
    cursor.close()
    connect.close()

  def logid(self):
    return("Log_"+"{:%Y%m%d%H%M%S}".format(datetime.datetime.now()))
    

