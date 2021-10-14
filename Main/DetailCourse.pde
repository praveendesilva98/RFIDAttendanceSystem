//displaying details of the course
void detailCourse()
{
  fill(255, 255, 255);
  textSize(30);
  text("Course Details", 150, 50);

  textSize(24);
  text("Course Name: Technical Project", 800, 150);
  text("Class: ING4 SE Group 1", 800, 220);
  text("Course Number: Course "+ course, 800, 290);
  
  text("Professor: Dr. Maxime SCHNEIDER", 800, 360);
  text("University: ECE Paris", 800, 430);

  //initialize return and next buttons
  returnDetails = new Button("RETURN", 550, 550, 150, 80);
  nextDetails = new Button("NEXT", 900, 550, 150, 80);
  
  //display both buttons
  returnDetails.Draw();
  nextDetails.Draw();
}
