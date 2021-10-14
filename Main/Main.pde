
public void settings()
{
  size(1800, 1000); //window size
}


void setup()
{
  background(25, 25, 25); //background color
  homeDisplay(); //calling homeDisplay function
  String portName = Serial.list()[0]; //Initilialize the port at position 0 in the list -> COM6
  myPort = new Serial(this, portName, 9600); //Establish the Serial connection at a frequency of 9600
}

void draw() 
{
  while (myPort.available()>0) //check if the usb in connected
    {
        
      val = myPort.readString(); 
      if (val != null) //avoid lines with null
      {
        sqlIdentification(val);
        clear();
        background(200); //reset window
        displaySheet(); //attendace sheet display function
      }
    }
}
