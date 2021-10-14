void homeDisplay()
{
  fill(3, 218, 198);
  rect(0,0,1800,60); 

  fill(255, 255, 255);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("STUDENT ATTENDANCE SYSTEM", 870, 30);
  
  historyMain();
  attendanceSection();
 
}

void attendanceSection()
{
  fill(255, 255, 255);
  textAlign(CENTER, CENTER);
  textSize(26);
  text("ATTENDANCE SECTION", 250, 150);
  
  imgCenter = loadImage("photos/classroom.png");
  imageMode(CENTER);
  image(imgCenter, width/2, 2*height/5, 600, 400); 
  
  start = new Button("START", 710, 240, 375, 180);
  start.Draw();
}

void historyMain()
{ 
  
  fill(255, 255, 255);
  textAlign(CENTER, CENTER);
  textSize(26);
  text("HISTORICAL DATA", 225, 620);
  
  
  button1 = new Button("Course 1", 400, 700, 180, 60);
  button2 = new Button("Course 2", 600, 700, 180, 60);
  button3 = new Button("Course 3", 800, 700, 180, 60);
  button4 = new Button("Course 4", 1000, 700, 180, 60);
  button5 = new Button("Course 5", 1200, 700, 180, 60);
  button6 = new Button("Course 6", 400, 800, 180, 60);
  button7 = new Button("Course 7", 600, 800, 180, 60);
  button8 = new Button("Course 8", 800, 800, 180, 60);
  button9 = new Button("Course 9", 1000, 800, 180, 60);
  button10 = new Button("Course 10", 1200, 800, 180, 60);
  
  button1.Draw();
  button2.Draw();
  button3.Draw();
  button4.Draw();
  button5.Draw();
  button6.Draw();
  button7.Draw();
  button8.Draw();
  button9.Draw();
  button10.Draw();
}
