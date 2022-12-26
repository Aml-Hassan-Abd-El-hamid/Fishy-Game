class start_page{
  int page_flag;
start_page(int flag){page_flag=flag;}
  void draw_start_page()
  {
     //print(page_flag,"  ",score,"\n");
    //***************Peace mode******************//
    if(page_flag==-8)
    {
        image(sea2,0,0,width,height);
        //Body peace = new Body();
        peace.draw_food();//move food around, make food faster if level is changed
        //Player nemo = new Player();
        //was player eaten by shark
        //if it didn't eat green fish move normally
        nemo.player_movement(playerl,playerr,player);//images of the player
        //move green_and_shark around, make green_and_shark 
        //faster if level is changed
        peace.draw_green_and_shark();    
    }
    //********************Option page*******************//
    if(page_flag ==700){
        //options op= new options();
        op.option();
    }
    //********************War Mode*******************//
    if(page_flag==-7)
    {
        image(sea2,0,0,width,height);
        //Body war_body = new Body();
        //War war1= new War();
        if (flag_war_intialize==1){war1.inatialize_war();flag_war_intialize=0;}
        war_body.draw_food();
        image(ship, 100,-390,width,500); 
        war1.draw_war();
        nemo.player_movement(playerl,playerr,player);//images of the player       
  }
  //**********************start page with sound**********************//
  if(page_flag==0)
  {
    //Chose_background bg = new Chose_background(sea2);
    image(start_back,0,0,width,height);
    image(Shape_back,1100,185,500,200);
    image(start_shark,100,185,500,200);
    image(sound,30,30,50,50);
    textSize(200);
    text("Fishy Game",450,150);
    //Start_peace_button
    fill(18,153,175);
    stroke(18,153,170);
    ellipse(825,300,250,80);
    fill(255,255,255);
    textSize(35);
    text("Start Peace",760,310);
    //Start_war_button
    fill(18,153,175);
    stroke(18,153,170);
    ellipse(825,400,250,80);
    fill(255,255,255);
    //textFont(word);
    textSize(35);
    text("Start War",760,410);
    //Options_button
    fill(18,153,175);
    stroke(18,153,170);
    ellipse(825,500,250,80);
    fill(255,255,255);
    textSize(35);
    text("Options",770,510);
    //make Start_peace biggest
    if(mouseX>=700 && mouseX<=950 && mouseY>=260 && mouseY<=340){
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,300,260,90);
      fill(255,255,255);
      textSize(40);
      text("Start Peace",740,310);
      //////////////////////////////////////////////////////////////////////////////
      if(mousePressed == true){
        page_flag=-8;
        warr=0;
      }
    }
    //make Start_war biggest
    else if(mouseX>=700 && mouseX<=950 && mouseY>=360 && mouseY<=440){
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,400,260,90);
      fill(255,255,255);
      textSize(40);
      //warrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
      text("Start War",750,410);
      if(mousePressed == true){
          page_flag= -7;
          flag_war_intialize= 1;
      }
    }
    //make Options button biggest
    else if(mouseX>=700 && mouseX<=950 && mouseY>=460 && mouseY<=540){
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,500,260,90);
      fill(255,255,255);
      textSize(40);
      text("Options",760,510);
      if(mousePressed == true){
        page_flag=700;// flag option page
      }
    }
    //sound icon
    else if(mouseX>=30 && mouseX<=80 && mouseY>=30 && mouseY<=80){
      if(mousePressed==true){
        page_flag=2;
        start_song.stop();
      }
    }
  }
  //**********************start page with mute**********************//
  else if(page_flag==2){
      image(start_back,0,0,width,height);
      image(Shape_back,1100,185,500,200);
      image(start_shark,100,185,500,200);
      image(mute,30,30,50,50);
      textSize(200);
      text("Fishy Game",450,150);
      //Start_peace_button
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,300,250,80);
      fill(255,255,255);
      textSize(35);
      text("Start Peace",760,310);
      //Start_war_button
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,400,250,80);
      fill(255,255,255);
      //textFont(word);
      textSize(35);
      text("Start War",760,410);
      //Options_button
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,500,250,80);
      fill(255,255,255);
      textSize(35);
      text("Options",770,510);
      //make Start_peace biggest
      if(mouseX>=700 && mouseX<=950 && mouseY>=260 && mouseY<=340){
        fill(18,153,175);
        stroke(18,153,170);
        ellipse(825,300,260,90);
        fill(255,255,255);
        textSize(40);
        text("Start Peace",740,310);
        if(mousePressed == true){
          page_flag=-8;
          warr=0;
        }
      }
      //make Start_war biggest
      else if(mouseX>=700 && mouseX<=950 && mouseY>=360 && mouseY<=440){
        fill(18,153,175);
        stroke(18,153,170);
        ellipse(825,400,260,90);
        fill(255,255,255);
        textSize(40);
        text("Start War",750,410);
        if(mousePressed == true){
            page_flag=-7;
            flag_war_intialize=1;
        }
      }
      //make Options button biggest00000000000000000000000000000000000000000000000
      else if(mouseX>=700 && mouseX<=950 && mouseY>=460 && mouseY<=540){
        fill(18,153,175);
        stroke(18,153,170);
        ellipse(825,500,260,90);
        fill(255,255,255);
        textSize(40);
        text("Options",760,510);
        if(mousePressed == true){
          page_flag=700;
        }
      } 
      else if(mouseX>=30 && mouseX<=80 && mouseY>=30 && mouseY<=80){
        if(mousePressed==true){
          page_flag=0;
          start_song.loop(); 
        }
      }
    }
  //**********************Level 1 is Done******************//
  else if(page_flag==10){
    image(start_back,0,0,width,height);
    image(Shape_back,1100,220,500,200);
    image(start_shark,100,220,500,200);
    fill(255,255,255);
    textSize(100);
    text("Level 1 is Done",580,200);
    fill(18,153,175);
    stroke(18,153,170);
    ellipse(825,400,275,100);
    fill(255,255,255);
    textSize(40);
    text("Level 2",775,410);
    if(mouseX>=687 && mouseX<=962 && mouseY>=350 && mouseY<=450){
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,400,300,100);
      fill(255,255,255);
      textSize(45);
      text("Level 2",770,410);
      if(mousePressed == true){
        page_flag=-8;//score = 10
        start_level2_flag=1;
      }
    }
  }
  //****************************Level 2 is Done******************//
  else if(page_flag==20){
    image(start_back,0,0,width,height);
    image(Shape_back,1100,200,500,200);
    image(start_shark,100,200,500,200);
    fill(255,255,255);
    textSize(100);
    text("Level 2 is Done",580,200);
    fill(18,153,175);
    stroke(18,153,170);
    ellipse(825,400,275,100);
    fill(255,255,255);
    textSize(40);
    text("Level 3",775,410);
    if(mouseX>=687 && mouseX<=962 && mouseY>=350 && mouseY<=450){
      fill(18,153,175);
      stroke(18,153,170);
      ellipse(825,400,300,100);
      fill(255,255,255);
      textSize(45);
      text("Level 3",770,410);
      if(mousePressed==true){
        page_flag=-8;
        start_level3_flag=1;      
       }
    }
  }
  else if( score == choose_Score){
    Winner_Page win= new Winner_Page();
    win.Winner();
    page_flag= 500;
  }
  else if(player_info.get("flag_eaten")==1 || player_info.get("flag_bomed")==1){
    Lose_Page loser= new Lose_Page();
    loser.lose();
     page_flag= 600;
  } 
 }
}
