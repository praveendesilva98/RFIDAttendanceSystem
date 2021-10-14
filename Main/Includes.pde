import processing.serial.*; //Serial library
import de.bezier.data.sql.*; //DB library
import java.io.FileWriter; //Library to write in text file
import uibooster.*; //GUI Library

//Serial variables
Serial myPort; 
String val;

//DB variables
MySQL sql;
String id, surname, name; 
int status;

//initialize buttons
Button button1, button2, button3, button4, button5, button6, button7, button8, button9, button10, start, submitButton, returnButton, returnDetails, nextDetails;

//initialize colors and images' varibales
int col;
PImage imgCenter, imgECE;
int myColor = color(255);
int c;

//initialize variable to write in text file
PrintWriter output;
String absentStudents, presentStudents;

//initialize uibooster
UiBooster booster;

//other variables
int i, credits;
String courseNumber, course;
