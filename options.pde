class options{
void option(){
   image(sea_opt ,0,0,width,height);
   image( player11,550,100,100,80);
   image( player2_opt,800,100,100,80);
   image( player3_opt,1000,100,100,80);
   image( m1_opt,550,230,150,150);
   image( m2_opt,850,230,150,150);
   image( return_home_opt,130,450,140,140);
     textSize(64);
     fill(#FAFCFC);
   text("select fish", 150,160);
   if(mouseX>=550 && mouseX<=650 && mouseY>=100 && mouseY<=180){
  
     image( player11,530,80,150,130);
     if(mousePressed==true){
        //chose my default player :)
        //I don't care about that 
      }
  
    }
    if(mouseX>=800 && mouseX<=900 && mouseY>=100 && mouseY<=180){
     image( player2_opt,780,80,150,130);
     if(mousePressed==true){
        player= player2_opt;
        playerl= player2_optl;
        playerr= player2_optr;
      }
    }
    if(mouseX>=1000 && mouseX<=1100 && mouseY>=100 && mouseY<=180){
     image( player3_opt,980,80,150,130);
     if(mousePressed==true){
        player= player3_opt;
        playerl= player3_optl;
        playerr= player3_optr;
      }
     
    }
    //choose mood
     textSize(64);
     fill(#FAFCFC);
   text("select mood", 135,320);
    
    if(mouseX>=550 && mouseX<=700 && mouseY>=230 && mouseY<=380){
     image( m1_opt,550,210,170,170);
     if(mousePressed==true){
      sea2= m1_opt;
      
      }
    }
     if(mouseX>=850 && mouseX<=1000 && mouseY>=230 && mouseY<=380){
     image( m2_opt,850,210,170,170);
          if(mousePressed==true){
      sea2= m2_opt;
      
      }
    }
    
    
       if(mouseX>=130 && mouseX<=270 && mouseY>=450 && mouseY<=590){
         image( return_home_opt,128,448,140,140); 
         if(mousePressed==true){
            main_page.page_flag =0;
      
      }
         
       }
}
}
