import java.util.Stack;
//Stack<String> stack = new Stack<>();
color buttonColorUnpressed,buttonColorPressed, helpColor, textColor;
Button firstFloor, secondFloor,thirdFloor,fourthFloor, fifthFloor, 
openDoor, closeDoor,bell,help;
PImage bg,blackbg;
int yPos,month, day, hour, min,currentFloor;
String time, message,targetFloor;
Boolean isMoving;

void setup() {
  //Thread.sleep.start();
  size(680, 800);
  buttonColorUnpressed = #111111;
  buttonColorPressed =#FFFFFF;
  helpColor = #9B0000;
  textColor = #FFFFFF;
  //bg = loadImage("bgimage.jpg");
  //blackbg = loadImage("Black.jpg");
  
  background(100);
  yPos = 130;
  firstFloor = new Button(450,yPos+320,150,100, "1", buttonColorUnpressed,textColor,true);
  secondFloor = new Button(450,yPos+240,150,100, "2", buttonColorUnpressed,textColor,true);
  thirdFloor = new Button(450,yPos+160,150,100, "3", buttonColorUnpressed,textColor,true);
  fourthFloor = new Button(450,yPos+80,150,100, "4", buttonColorUnpressed,textColor,true);
  fifthFloor = new Button(450,yPos,150,100, "5", buttonColorUnpressed,textColor,true);
  
  closeDoor =  new Button(550,yPos+400,150,100, "Close", buttonColorUnpressed,textColor,true);
  openDoor =  new Button(350,yPos+400,150,100, "Open", buttonColorUnpressed,textColor,true);
  help = new Button(550,0, 700,100, "Help", helpColor,textColor,true);
  
  isMoving = false;
  message = "";
}


void draw(){
  fill(5);
  rect(0, 100, 400, 400);
  int messageNum=0;
  
  if(messageNum==0)
      {
        fill(5);
        rect(0, 100, 400, 400);
        message= "Please Select a Floor";
        fill(#FFFFFF);
        text(message, 200, 300);
      }
      
  if(firstFloor.isClicked()){
    firstFloor = new Button(450,yPos+320,150,100, "1", buttonColorPressed, #FF363D,true);
    messageNum=1;
   // while (messageNum!=0)
    //{
      if(messageNum==1)
      {
        fill(5);
        rect(0, 100, 400, 400);
        message= "Doors Closing";
        fill(#FFFFFF);
        text(message, 200, 300);
        myDelay(1000);
        messageNum+=1;
      }
      if(messageNum==2)
      {
        fill(#000000);
        rect(0, 100, 400, 400);
        message= "Going to floor 1";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        
        messageNum+=1;
      }
      if(messageNum==3)
        {
          fill(#000000);
        rect(0, 100, 400, 400);
        message= "You have arrived at floor 1";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        messageNum+=1;
        }
      if(messageNum==4)
      {fill(#000000);
        rect(0, 100, 400, 400);
        message= "Doors opening";
        text(message, 200, 300);
        delay(1000);
        
        messageNum=0;
        
    firstFloor.update();
    }
      }
  if(secondFloor.isClicked()){
    secondFloor = new Button(450,yPos+240,150,100, "2", buttonColorPressed, #FF363D,true);
    messageNum=1;
   // while (messageNum!=0)
    //{
      if(messageNum==1)
      {
        fill(5);
        rect(0, 100, 400, 400);
        message= "Doors Closing";
        fill(#FFFFFF);
        text(message, 200, 300);
        myDelay(1000);
        messageNum+=1;
      }
      if(messageNum==2)
      {
        fill(#000000);
        rect(0, 100, 400, 400);
        message= "Going to floor 2";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        
        messageNum+=1;
      }
      if(messageNum==3)
        {
          fill(#000000);
        rect(0, 100, 400, 400);
        message= "You have arrived at floor 2";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        messageNum+=1;
        }
      if(messageNum==4)
      {fill(#000000);
        rect(0, 100, 400, 400);
        message= "Doors opening";
        text(message, 200, 300);
        delay(1000);
        
        messageNum=0;
        
    secondFloor.update();
  }}
  if(thirdFloor.isClicked()){
    thirdFloor = new Button(450,yPos+160,150,100, "3", buttonColorPressed, #FF363D,true);
    messageNum=1;
   // while (messageNum!=0)
    //{
        if(messageNum==1)
        {
          fill(5);
          rect(0, 100, 400, 400);
          message= "Doors Closing";
          fill(#FFFFFF);
          text(message, 200, 300);
          myDelay(1000);
          messageNum+=1;
          println(messageNum);
        }
        if(messageNum==2)
        {
          fill(#000000);
          rect(0, 100, 400, 400);
          message= "Going to floor 3";
          fill(#FFFFFF);
          text(message, 200, 300);
          delay(1000);
          
          messageNum+=1;
        }
        if(messageNum==3)
          {
            fill(#000000);
          rect(0, 100, 400, 400);
          message= "You have arrived at floor 3";
          fill(#FFFFFF);
          text(message, 200, 300);
          delay(1000);
          messageNum+=1;
          }
        if(messageNum==4)
        {fill(#000000);
          rect(0, 100, 400, 400);
          message= "Doors opening";
          text(message, 200, 300);
          delay(1000);
          
          messageNum=0;
          
      thirdFloor.update();
  }}
  if(fourthFloor.isClicked()){
    fourthFloor = new Button(450,yPos+80,150,100, "4", buttonColorPressed, #FF363D,true);
    messageNum=1;
      if(messageNum==1)
      {
        fill(5);
        rect(0, 100, 400, 400);
        message= "Doors Closing";
        fill(#FFFFFF);
        text(message, 200, 300);
        myDelay(1000);
        messageNum+=1;
      }
      if(messageNum==2)
      {
        fill(#000000);
        rect(0, 100, 400, 400);
        message= "Going to floor 4";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        
        messageNum+=1;
      }
      if(messageNum==3)
        {
          fill(#000000);
        rect(0, 100, 400, 400);
        message= "You have arrived at floor 4";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        messageNum+=1;
        }
      if(messageNum==4)
      {fill(#000000);
        rect(0, 100, 400, 400);
        message= "Doors opening";
        text(message, 200, 300);
        delay(1000);
        
        messageNum=0;
        
    fourthFloor.update();
  }}
  
  if(fifthFloor.isClicked()){
    fifthFloor = new Button(450,yPos,150,100, "5", buttonColorPressed, #FF363D,true);
    messageNum=1;
      if(messageNum==1)
      {
        fill(5);
        rect(0, 100, 400, 400);
        message= "Doors Closing";
        fill(#FFFFFF);
        text(message, 200, 300);
        myDelay(1000);
        messageNum+=1;
        println(messageNum);
      }
      if(messageNum==2)
      {
        fill(#000000);
        rect(0, 100, 400, 400);
        message= "Going to floor 5";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        
        messageNum+=1;
      }
      if(messageNum==3)
        {
          fill(#000000);
        rect(0, 100, 400, 400);
        message= "You have arrived at floor 5";
        fill(#FFFFFF);
        text(message, 200, 300);
        delay(1000);
        messageNum+=1;
        }
      if(messageNum==4)
      {fill(#000000);
        rect(0, 100, 400, 400);
        message= "Doors opening";
        delay(1000);
        
        messageNum=0;
        
    fifthFloor.update();
  }}
  if(openDoor.isClicked()){
    openDoor =  new Button(330,yPos+520,150,100, "Open", buttonColorPressed,#FF363D,true);
    fill(#000000);
        rect(0, 100, 400, 400);
        message= "Doors being held open";
        delay(1000);
  }
  if(closeDoor.isClicked()){
    closeDoor =  new Button(500,yPos+520,150,100, "Close", buttonColorPressed,#FF363D,true);
    fill(#000000);
        rect(0, 100, 400, 400);
        message= "Doors closing faster";
        delay(1000);
  }
  if(help.isClicked()){
    help =  new Button(500,0, 700,100, "Help", buttonColorPressed,#FF363D,true);
    fill(#000000);
        rect(0, 100, 400, 400);
        message= "Help is on the way";
        delay(1000);
  }
  
  currentFloor=1;
  
  //UPDATE BUTTONS
  firstFloor.update();
  secondFloor.update();
  thirdFloor.update();
  fourthFloor.update();
  fifthFloor.update();
  help.update();
  openDoor.update();
  closeDoor.update();
  help.update();
  
  //RENDER BUTTONS
  firstFloor.render();
  secondFloor.render();
  thirdFloor.render();
  fourthFloor.render();
  fifthFloor.render();
  help.render();
  openDoor.render();
  closeDoor.render();
  
}
void myDelay(int ms)
{
   try
  {   
    Thread.sleep(ms);
  }
  catch(Exception e){}
}
