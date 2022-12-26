class Food extends Fishs 
{
  PImage food;  
  Food(HashMap<String, Integer>food_hash_map  )//constructor init
      {
         fish_info=food_hash_map;
      }
    //move food fishes
    //count score
    //if dead ---> rise from death
    //Time_change()
    //call random movement
    //resize player
    void food_movement
        (
        int pos_x_dead ,int pos_y_dead,PImage foodl,PImage foodr
        )
        {
          //player didn't eat green fish flag_green_fish==0  
          if (
                flag_green_fish==0&&player_info.get("flag_eaten")==0//if 1 shark ate player
                && player_info.get("flag_bomed")==0
                && fish_info.get("flag_bomed")==0//1 = fish bombed 
              )
                  {
                      if(//check if player ate that fish or not
                         mouseX>=fish_info.get("pos_x") 
                         && mouseX<=fish_info.get("pos_x")+fish_info.get("width")
                         && mouseY>=fish_info.get("pos_y")
                         &&mouseY<=fish_info.get("pos_y")+fish_info.get("height")
                         )
                         {
                           if(fish_info==green_info)
                               {
                                   flag_green_fish=1;
                               }
                            else
                               {
                                   score+=1;
                                   //int x;
                                   //Score_Resize resizee = new Score_Resize();
                                   resizee.score_resize();
                                }
                           flagFood=0;//player ate the fish     
                         }
                  }
              if (fish_info.get("flag_bomed")==1)
                  {
                    image(
                           fire,fish_info.get("pos_x"),fish_info.get("pos_y"),
                           fish_info.get("width")*1.5,fish_info.get("height")*1.5
                           );
                    //flagFood=0;//food is bombed
                    fish_info.put("flag_bomed",0);
                  }
          if (flagFood==1)//if the calling fish food wasn't eaten by player 
          {
             Time_change(/*2,10000*/);
             
             random_movement(fish_info);
             
             if (fish_info.get("x_dirc")<0){food=foodr;}
             if (fish_info.get("x_dirc")>0){food=foodl;}
             image(food, fish_info.get("pos_x"),fish_info.get("pos_y"),120,70);
           }
         else if (flagFood==0)//if the calling fish food was eaten by player 
         {
             fish_info.put("pos_x",pos_x_dead);//shark_x
             fish_info.put("pos_y",pos_y_dead);//shark_y 
             flagFood=1;//rise from death 
         }
    }
     
}
