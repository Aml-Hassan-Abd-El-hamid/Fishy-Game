class Fishs
{
HashMap<String, Integer> fish_info =new HashMap<String, Integer>(); // works fine 

void intial_object_position
                (
                int pos_x,int pos_y,
                int x_dirc,int y_dirc,
                int speed_x,int speed_y,
                int start_range_x,int end_range_x,
                int start_range_y,int end_range_y,
                int height_pic,int width_pic,
                int change_flag,
                int old_second,
                int flag_bomed
                )
                { 
                    fish_info.put("pos_x",pos_x);//shark_x
                    fish_info.put("pos_y",pos_y);//shark_y
                    fish_info.put("x_dirc",x_dirc);//change_flag
                    fish_info.put("y_dirc",y_dirc);
                    fish_info.put("speed_x",speed_x);
                    fish_info.put("speed_y",speed_y);
                    fish_info.put("start_range_x",start_range_x);
                    fish_info.put("end_range_x",end_range_x);
                    fish_info.put("start_range_y",start_range_y);
                    fish_info.put("end_range_y",end_range_y);
                    fish_info.put("height", height_pic);
                    fish_info.put("width",  width_pic);
                    fish_info.put("change_flag",change_flag);//change_flag
                    //fish_info.put("current_second",  current_second);
                    fish_info.put("old_second",old_second);//change_flag
                    fish_info.put("flag_bomed",flag_bomed);//if 1, you got killed by a bomb
                }
// food, shark, green_fish
// food_movement, shark_movement
void random_movement(HashMap<String, Integer> fish_info)
{
  if (fish_info.get("change_flag")==1){
     //directions 
     float ran_x=random(-2,2);//-2 2
     float ran_y=random(-2,2);
     if (ran_x<0){fish_info.put("x_dirc",-1);} else{fish_info.put("x_dirc",1);}
     if (ran_y<0){fish_info.put("y_dirc",-1);} else{fish_info.put("y_dirc",1);}
     //update speed
     fish_info.put("speed_x",int(random(fish_info.get("start_range_x"),fish_info.get("end_range_x"))));
     fish_info.put("speed_y",int(random(fish_info.get("start_range_y"),fish_info.get("end_range_y"))));
     //wait for time to pass
     fish_info.put("change_flag",0);    
   }
     //update position
     fish_info.put("pos_x", fish_info.get("pos_x")+fish_info.get("speed_x")*fish_info.get("x_dirc"));
     fish_info.put("pos_y", fish_info.get("pos_y")+fish_info.get("speed_y")*fish_info.get("y_dirc"));
     //square 1
     if(fish_info.get("pos_y") < -fish_info.get("height")){
        // print("1");
         fish_info.put("pos_x",width/2); 
         fish_info.put("pos_y",-fish_info.get("height")); 
         fish_info.put("y_dirc",1);
       }
     //square 2
     else if(fish_info.get("pos_y") > (height +fish_info.get("height")))//+500
     {  
     //print("2");
     fish_info.put("pos_x",width/4);
     fish_info.put("pos_y",height);
     fish_info.put("y_dirc",-1);
    // fish_info.put("speed_x",26);
     fish_info.put("x_dirc",1);
   }
     //square 3
     else if(fish_info.get("pos_x") < (-fish_info.get("width")))//-100
     {
      // print("3");
       fish_info.put("pos_x",-fish_info.get("width")); 
       fish_info.put("pos_y",height/2);
       fish_info.put("x_dirc",1);
     }
     //square 4
     else if(fish_info.get("pos_x") > (width+fish_info.get("width")))
     { 
      // print("4");
       fish_info.put("pos_x",width); 
       fish_info.put("pos_y",height/2);
       fish_info.put("x_dirc",-1);
       //fish_info.put("y_dirc",0);
      // fish_info.put("speed_x",20); 

     }       
}
void change_level
     (int start_range_x, int end_range_x,
     int start_range_y,int end_range_y)
      {
          fish_info.put("start_range_x",start_range_x);
          fish_info.put("end_range_x",end_range_x);   
          fish_info.put("start_range_y",start_range_y);
          fish_info.put("end_range_y",end_range_y);
}
/*int s = millis();
if (s - old_s>2){fish_info.put("change_flag",1);old_s=s+100;}*/
void Time_change()
//wait for time before changing dirction or speed
{
     if (millis()-fish_info.get("old_second")>=0)
     {
          fish_info.put("change_flag",1);
          fish_info.put("old_second",millis()+5000);//each 5 seconds
     }
}

}
