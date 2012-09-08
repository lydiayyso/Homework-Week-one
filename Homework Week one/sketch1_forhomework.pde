//variables

float ourFill=255;
 int bo=10;
int bo2=15;
meteor [] meteorArray = new meteor[14];
Girl [] GirlArray = new Girl[12];
Boy [] BoyArray = new Boy[12];
PImage[] images = new PImage[numFrames]; 
PImage[] images2 = new PImage[numFrames];
PImage[] images3 = new PImage[numFrames];
PImage[] images4 = new PImage[numFrames];
PImage townback;


//set up happens once
void setup()
{

  size(500,500);
  background(255);
  
}//end of setup

//happens again and again
void  draw()
{
  noStroke();
  fill (ourFill);
  rect (bo,bo2,35,35);
  

  
}  
     
   

 //end of draw
 
void mousePressed() {
 background (255);
 bo+=2;
 
 if (bo>=100) 
 {bo2+=2;
 ourFill= random(255);
 }
 
 if (bo2>200)
 {bo+=3;
 }
 
 
 if (bo>500) {
    bo=0;
  bo=bo+2; 
}
  
  
   else {
  bo+=1;
  bo2+=0;
  }
  

  
  for (int i=0; i<GirlArray.length;i++) {
    GirlArray[i]= new Girl(random(500,0), random(1,-490), random(0, 5));
  }
   for (int i=0; i<BoyArray.length;i++) {
    BoyArray[i]= new Boy(random(500,0), random(1,-490), random(0, 5));
  }
   for (int i=0; i<meteorArray.length;i++) {
    meteorArray[i] = new meteor(random(0,500), random(-490,1), random(5, 10));
  }
 
}
 
 
 
 
}
//end of mousePressed
