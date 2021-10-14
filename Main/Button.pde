// the Button class
class Button 
{
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button
  
  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) 
  {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void Draw() 
  {
    fill(014113);
    stroke(3, 218, 198); //border
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255);
    text(label, x + (w / 2), y + (h / 2));
  }
  
  //check if the button is clicked
  boolean MouseIsOver() 
  {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) 
    {
      return true;
    }
    return false;
  }
}


//instructions to perform when the specific button is pressed
void mousePressed()
{
  if(button1.MouseIsOver())
  {
    //launch the text file course1.txt
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course1.txt");
  }
  else if(button2.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course2.txt");
  }
  else if(button3.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course3.txt");
  }
  else if(button4.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course4.txt");
  }
  else if(button5.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course5.txt");
  }
  else if(button6.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course6.txt");
  }
  else if(button7.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course7.txt");
  }
  else if(button8.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course8.txt");
  }
  else if(button9.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course9.txt");
  }
  else if(button10.MouseIsOver())
  {
    launch("C:/Users/prave/OneDrive - Groupe INSEEC (POCE)/Bureau/Semester 1/Technical Project/Project/Processing/TechProject/Main/data/course10.txt");
  }
  else if(start.MouseIsOver())
  { 
    //when push the start button in home screen
    booster = new UiBooster();
    //initialize combo box with uibooster library
    course = booster.showSelectionDialog(
                  "Select the Course",        // Question
                  "Course Number",                    // window title
                  "Course 1", "Course 2", "Course 3", "Course 4", "Course 5", "Course 6", "Course 7", "Course 8", "Course 9", "Course 10");
    
    if(course.equals("Course 1"))
    {
      course = "1";
      //reset window
      clear();
      background(25, 25, 25);
      //redirect to the function detailCourse
      detailCourse();
    }
    else if(course.equals("Course 2"))
    {
      course = "2";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 3"))
    {
      course = "3";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 4"))
    {
      course = "4";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 5"))
    {
      course = "5";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 6"))
    {
      course = "6";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 7"))
    {
      course = "7";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 8"))
    {
      course = "8";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 9"))
    {
      course = "9";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else if(course.equals("Course 10"))
    {
      course = "10";
      clear();
      background(25, 25, 25);
      detailCourse();
    }
    else
    {
      clear(); 
      background(25, 25, 25);
      homeDisplay();
    }
    
  }
  else if(returnDetails.MouseIsOver())
  {
    //return button in Course Details
    clear();
    background(25, 25, 25);
    homeDisplay();
  }
  else if(nextDetails.MouseIsOver())
  {
    //next button in Course Details
    clear();
    background(25, 25, 25);
    displaySheet();
  }
  else if(returnButton.MouseIsOver())
  {
    //return button in Attendance sheet
    clear();
    background(25, 25, 25);
    resetStatus();//reset status to 0 for every student
    detailCourse();
  }
  else if(submitButton.MouseIsOver())
  {
    //submit button in Attendance sheet
    clear();
    background(25, 25, 25);
    decrementCredits();//decrement the number of credits of absent students
    saveAttendanceSheet("course"+course+".txt"); //save attendance sheet in a text file
    resetStatus();//reset status to 0 for every student
    homeDisplay();
  }
  
}
