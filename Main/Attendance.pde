void sqlIdentification(String val)
{
  //creation of the object MySQL
  sql = new MySQL(this, "localhost", "techproject","root","");
  String list;
  String noMatch = "a";
  
  //connection to the database
  if (sql.connect())
  {
    //query where we select the student by his/her badge's id
    sql.query("SELECT * FROM rfid WHERE identification = '" + val + "'");
    
    //if there is a match in the database
    if(sql.next())
    {
       surname = sql.getString(2);
       name = sql.getString(3);
       status = sql.getInt(5);
       credits = sql.getInt(6);
       list = name+" "+surname+"\n"+"Credits: "+ credits;

       if(status == 0)
       {
         //query where we update the student's status by his/her badge's id (present)
         sql.query("UPDATE rfid SET status = 1 WHERE identification = '" + val + "'");
         println("Student: "+list+"\nStatus: Added to the attendance");
         myPort.write(list);
       }
       else
       {
         //query where we update the student's status by his/her badge's id (absent)
         sql.query("UPDATE rfid SET status = 0 WHERE identification = '" + val + "'");
         println("Student: "+list+"\nStatus: Left the classroom");
         myPort.write(list);
       }
    }
    else
    {
      println("No identification in the database matches the card!"); 
      myPort.write(noMatch);
    }
  }
  else
  {
    println("Database is not connected !");
  }
}


//function that display the attendance
void displaySheet()
{
  //background(25,25,25);
  //creation of the object MySQL
  sql = new MySQL(this, "localhost", "techproject","root","");
  
  //connection to the database
  if(sql.connect())
  {
    background(25,25,25);
    
    //page title with its color and position
    fill(255, 255, 255);
    textSize(30);
    text("ATTENDANCE SHEET", 200, 50); 
    
    text("Course "+ course, 1500, 50); //display course number
    
    //display header of the attendance sheet
    fill(3, 218, 198);
    textSize(16);
    text("Surname", 200, 100);  
    text("Name", 500, 100); 
    text("Remaining credits", 800, 100); 
    text("Status", 1100, 100);
    fill(255, 255, 255);
  
    //query where we select all student
    sql.query("SELECT * FROM rfid ORDER BY surname ASC");
    
    //if there is a match in the database
    while(sql.next())
    {
      surname = sql.getString(2);
      name = sql.getString(3);
      status = sql.getInt(5);
      credits = sql.getInt(6);
      
      if(status==1)
      {
        //display present when the badge is passed and recognized by the DB
        fill(255,255,255);
        text(surname, 200, 150+i*35);
        text(name, 500, 150+i*35);
        text(credits, 800, 150+i*35);
        fill(5,131,33);
        text("PRESENT", 1100, 150+i*35);
        i++;
      }
      else
      {
        //else display absent
        fill(255,255,255);
        text(surname, 200, 150+i*35);
        text(name, 500, 150+i*35);
        text(credits, 800, 150+i*35);
        fill(160,0,0);
        text("ABSENT", 1100, 150+i*35);
        i++;
      }
    }
    i = 0;
  }
  else
  {
    println("Database is not connected !");
  }
  
  //initialize return and submit button
  returnButton = new Button("RETURN", 1300, 150, 150, 80);
  submitButton = new Button("SUBMIT", 1600, 150, 150, 80);
  
  //display both buttons
  returnButton.Draw();
  submitButton.Draw();
  
}

//function that decrement the number of credits of absent students
void decrementCredits()
{
  //creation of the object MySQL
  sql = new MySQL(this, "localhost", "techproject","root","");
  
  //connection to the database
  if(sql.connect())
  {
    sql.query("SELECT * FROM rfid");
    
    while(sql.next())
    {
      status = sql.getInt(5);
      credits = sql.getInt(6);
      
      if(status == 0)
      {
        //number of credits for each student decrement while absent
        credits--;
        sql.query("UPDATE rfid SET credits = credits - 1 WHERE status = 0");
      }
    }
    
  }
}


//after the class, reset all students to absent
void resetStatus()
{
  sql = new MySQL(this, "localhost", "techproject","root","");
  if (sql.connect())
  {
    sql.query("UPDATE rfid SET status = 0");
    
    sql.close();
  }
  else
  {
    println("Database is not connected !");  
  }    
}
