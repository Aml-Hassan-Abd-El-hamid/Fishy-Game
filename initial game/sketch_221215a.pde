PImage playerl;
PImage playerr;
PImage player;
PImage sea;
PImage shark;
PImage sharkr;
PImage sharkl;
PImage food;
PImage foodr;
PImage foodl;
int speedfX=12;
int speedfY=3;
int dircf=1;
int startX=0;
int startY=0;
int sharkX=100;
int sharkY=100;
int foodX=600;
int foodY=600;
int flagFood=1;
int flag=1;
int speedX=8;
int speedY=0;
int dirc=1;
void setup() {
 size(1200,1000);
 sea = loadImage("sea.jpg");
 playerl= loadImage("player.png");
 playerr= loadImage("player1.png");
 player=loadImage("player.png");
 sharkr=loadImage("cartoon-shark-transparent-5.png");
 sharkl=loadImage("cartoon-shark1.png");
 shark=loadImage("cartoon-shark-transparent-5.png");
 food=loadImage("fish 31.png");
 foodr=loadImage("fish 3.png");
 foodl=loadImage("fish 31.png");
 smooth();
}
void draw() {
  image(sea, 0, 0,width,height);
    //chech for eating
   if(mouseX>=sharkX+50 && mouseX<=sharkX+420 && mouseY>=sharkY+100&&mouseY<=sharkY+300){
        flag=0;
   }
   if (flag==1){
      if (pmouseX<mouseX){
         image(playerr, mouseX,mouseY,270,100);
         startX=mouseX;
         startY=mouseY;
         player=playerr;
     }
    else if (pmouseX>mouseX){
         image(playerl, mouseX,mouseY,270,100);
         startX=mouseX;
         startY=mouseY;
         player=playerl;
     }
     else{image(player, startX,startY,270,100);}
     
   }
   //fish
    if(mouseX+30>=foodX && mouseX<=foodX+120 && mouseY>=foodY&&mouseY<=foodY+70)
     {
        flagFood=0;
     }
    if (flagFood==1) {
       if (foodX>=width-70){dircf=-1;food=foodr;speedfY=-8;}
       if (foodX<=0){dircf=1;food=foodl;speedfY=2;}
       if (foodX>=height-70){dircf=-1;food=foodr;speedfY=8;}       
       foodX=foodX+speedfX*dircf;
       foodY=foodY+speedfY*dircf;
       image(food, foodX,foodY,120,70);
    }
   //shark movement
     if (sharkX>=width-530){dirc=-1;shark=sharkl;speedY=-4;}
     if (sharkX<=0){dirc=1;shark=sharkr;speedY=2;}
     sharkX=sharkX+speedX*dirc;
     sharkY=sharkY+speedY*dirc;
     image(shark, sharkX,sharkY,530,300);
}
