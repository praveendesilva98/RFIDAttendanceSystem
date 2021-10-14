void saveAttendanceSheet(String fileName)
{
  output = createWriter("data/"+fileName);
  
  output.println("Present Students\n");
  presentStudentSql(presentStudents);
  output.println("\n");
  
  output.println("Absent Students\n");
  absentStudentSql(absentStudents);
  
  output.flush();
  output.close();
}

//retrieve the names and surnames of absent students
void absentStudentSql(String absentStudents)
{
  sql = new MySQL(this, "localhost", "techproject","root",""); //DB connection
  if (sql.connect())
  {
    sql.query("SELECT * FROM rfid WHERE status = 0");
    
    while(sql.next())
    {
       surname = sql.getString(2);
       name = sql.getString(3);
       
       absentStudents = name + " " + surname; 
       output.println(absentStudents); //write the names and the surnames of absent students in a text file
    }
    
    sql.close();
  }
  else
  {
    println("Database is not connected !");  
  }

}

//retrieve the names and surnames of present students
void presentStudentSql(String presentStudents)
{
  sql = new MySQL(this, "localhost", "techproject","root","");
  if (sql.connect())
  {
    sql.query("SELECT * FROM rfid WHERE status = 1");
    
    while(sql.next())
    {
       surname = sql.getString(2);
       name = sql.getString(3);
       
       presentStudents = name + " " + surname;
       output.println(presentStudents); //write the names and the surnames of present students in a text file
    }
    
    sql.close();
  }
  else
  {
    println("Database is not connected !");  
  }
}
