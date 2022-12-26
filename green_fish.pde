class Green_fish
{
    void check_green_fish()//rotate
      {
      if(flag_green_fish==1)
      {
             translate(mouseX, mouseY); 
             rotate(angle);
             if(player_info.get("flag_eaten")==0)//if 1 then the sahrk has eaten it
                {
                  image(player,
                  -player_info.get("width_pic")/2,
                  -player_info.get("height_pic")/2,
                  player_info.get("width_pic"),
                  player_info.get("height_pic"));
                  angle += 0.4;
                }
         //print("mmmmmmmmmmmmmmmmmmmmmmmm/n") ; 
         }         
            new_sec=millis();
            if(new_sec - old_sec>0)
            {
                flag_green_fish=0;
                old_sec=new_sec+11000;//6000+5000;
              //print("*******************\n"); 
        }

}




}
