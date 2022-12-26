class Player 
{
  void intial_player()
  {
     player_info.put("pos_x",600);
     player_info.put("pos_y",600);
     player_info.put("flag_eaten",0);//if 1 then the sahrk has eaten it
     player_info.put("flag_bomed",0);//if 1 then the bomb has killed it
     player_info.put("height_pic",80);
     player_info.put("width_pic",200);     
  }
  
  void player_movement(PImage playerl,PImage playerr,PImage player)
    {  
      //was player eaten by shark
      if(warr==0){
            if(mouseX>=shark_move.get("pos_x")+50 &&
               mouseX<=shark_move.get("pos_x")+420 &&
               mouseY>=shark_move.get("pos_y")+100&&
               mouseY<=shark_move.get("pos_y")+300)
                {
                  player_info.put("flag_eaten",1);//nemo was eaten
                }       
      }
      // war & peace  player movement
      if(flag_green_fish==0)//if it didn't eat green fish don't rotate
      {
        //move normally
         if (player_info.get("flag_eaten")==0&& player_info.get("flag_bomed")==0)
            {
              if (pmouseX<mouseX){
                   player_info.put("pos_x",mouseX);
                   player_info.put("pos_y",mouseY);
                   image(playerr, mouseX,mouseY,player_info.get("width_pic"),player_info.get("height_pic"));
                   player=playerr;//right image
               }
              else if (pmouseX>mouseX){
                   player_info.put("pos_x",mouseX);
                   player_info.put("pos_y",mouseY);
                   image(playerl, mouseX,mouseY,player_info.get("width_pic"),player_info.get("height_pic"));
                   player=playerl;//left image
               }
             else
               {
                 image(player, player_info.get("pos_x"),player_info.get("pos_y"),player_info.get("width_pic"),player_info.get("height_pic"));
               }     
       }
      }
   }

}
