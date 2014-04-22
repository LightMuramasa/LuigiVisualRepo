//Luigi Final Project Part 1
//Purpose: Set up GUI and a String array 
//         with the input from the textfield

import controlP5.*; 
//Imports the necessary GUI Library
ControlP5 cp5; 
//Activates ControlP5
String textValue = ""; 
//Provides a placeholder for the quote to go
String [] loaded;
//The end location of the input, with each word
//located in an indexical position of the array
int index = 0;
//Will provide the length of the String


void setup() {
  background(0);
  size(700,400);
  PFont arial = createFont("arial",48); //Activates the font the GUI will use
  cp5 = new ControlP5(this); //Births the GUI for use
  
  cp5.addTextfield("Put text here") //Creates the textfiels
   .setPosition(100,170) //Sets potiton
   .setSize(500,50) //sets wide size
   .setFont(arial) //sets the arial font declared before
   .setAutoClear(true); //Automatically clears the textfield after
                        //pressing enter
}

void draw() {

}

void controlEvent(ControlEvent theEvent) {
  //Provides the action for the textfield
  if(theEvent.isAssignableFrom(Textfield.class)) {
     textValue = theEvent.getStringValue();
//   Takes the input and places it in textValue, ready to be split     
     textValue = textValue.toUpperCase();
//   Makes all characters uppercase, for a cleaner look when
//   the text is displayed
     loaded = split(textValue, " ");
//   Splits the input and loads each word 
//   into the array as an index position
     for (int i = 0; i < loaded.length; i++) {
     println(loaded[i] + " " + i);
//   Displays the array, showcasing each word
//   in the input has been separated
     }
   }
 }
