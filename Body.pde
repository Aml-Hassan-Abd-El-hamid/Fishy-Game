class Body
{
  //first fish
      Food food1=new Food(food1_move);//HashMap<String, Integer> food_hash_map
      Food food2=new Food(food2_move);
      Food food3=new Food(food3_move);
      Food food4=new Food(food4_move);
      Food food5=new Food(food5_move);
      Food food6=new Food(food6_move);
      Food food7=new Food(food7_move);
      Food food8=new Food(food8_move);
      Food food9=new Food(food9_move);
      Food food10=new Food(food10_move);
      //green fish 
      Food green_info1=new Food(green_info);
      //shark
      Shark shark1=new Shark(shark_move);

void init_food()
{
     
      //          int pos_x, pos_y x_dirc,int y_dirc speed_x,int speed_y,
      //          int start_range_x,int end_range_x,
     //           int start_range_y,int end_range_y,
     //           int height_pic,int width_pic,
     //           int change_flag,
      //          int old_second, last time you changed
      //          int flag_bomed

      food1.intial_object_position(800,900,-1,1,12,3, 5, 10,5,10,70,120,0,0,0);
      food2.intial_object_position(550,670,1,-1,12,3,5, 10,5,10,70,120,0,0,0);
      food3.intial_object_position(500,500,1,1,12,3, 5, 10,5,10,70,120,0,0,0);
      food4.intial_object_position(200,200,-1,-1,12,3,5, 10,5,10,70,120,0,0,0);
      food5.intial_object_position(1000,600,-1,-1,12,3, 5, 10,5,10,70,120,0,0,0);
      food6.intial_object_position(400,300,-1,1,12,3, 5, 10,5,10,70,120,0,0,0);
      food7.intial_object_position(100,700,-1,-1,12,3,5, 10,5,10,70,120,0,0,0);
      food8.intial_object_position(600,330,-1,1,12,3,5, 10,5,10,70,120,0,0,0);
      food9.intial_object_position(360,75,1,1,12,3,5, 10,5,10,70,120,0,0,0);
      food10.intial_object_position(360,75,1,1,12,3,5, 10,5,10,70,120,0,0,0);
}    
void init_green()
{      
green_info1.intial_object_position(360,75,1,1,12,3, 5, 10,5,10,70,120,0,0,0);
}
void init_shark()
  {
      shark1.intial_object_position(100,100,1,-1,20,20,5, 10,5,10,300,530,0,0,0);

  }

void draw_food()
{
//fish 1 move
//int pos_x_dead ,int pos_y_dead, //only called if the food was dead
//PImage foodl,PImage foodr,PImage food
//food is the default picture
//Food food1=new Food(food1_move);
    food1.food_movement(0,0,foodl2,foodr2);
    //food 2 move
    food2.food_movement(0,int(random(100,200)),foodl2,foodr2);
    //food 3 move
    food3.food_movement(0,int(random(200,300)),foodl2,foodr2);
     
    food4.food_movement(0,int(random(300,400)),foodl2,foodr2);
    
    food5.food_movement(0,int(random(400,500)),foodl2,foodr2);
    
    food6.food_movement(1600,int(random(100,200)),foodl3,foodr3);
    
    food7.food_movement(1600,int(random(200,300)),foodl3,foodr3);
    
    food8.food_movement(1600,int(random(400,500)),foodl3,foodr3);
    
    food9.food_movement(1600,int(random(150,250)),foodl,foodr);
     
    food10.food_movement(1600,int(random(250,350)),foodl,foodr);
    
    if(score>=10&&score<20)
    {
      if(main_page.page_flag==-8/*only in peace*/&& start_level2_flag==0)
                  {/*level 2 page flag*/main_page.page_flag=10;};
      //print("level 2\n");
//int start_range_x, int end_range_x,int start_range_y,int end_range_y
      food1.change_level(30,40,30,40);
      food2.change_level(30,40,30,40);
      food3.change_level(30,40,30,40);
      food4.change_level(30,40,30,40);
      food5.change_level(30,40,30,40);
      food6.change_level(30,40,30,40);
      food7.change_level(30,40,30,40);
      food8.change_level(30,40,30,40);
      food9.change_level(30,40,30,40);
      food10.change_level(30,40,30,40);
    }
    else if(score>=20)
    {  
      if(main_page.page_flag==-8&& start_level3_flag==0){main_page.page_flag=20;};

      //print("level 3\n");
      food1.change_level(60,70,60,70);
      food2.change_level(60,70,60,70);
      food3.change_level(60,70,60,70);
      food4.change_level(60,70,60,70);
      food5.change_level(60,70,60,70);
      food6.change_level(60,70,60,70);
      food7.change_level(60,70,60,70);
      food8.change_level(60,70,60,70);
      food9.change_level(60,70,60,70);
      food10.change_level(60,70,60,70);
  }
  fill(255,255,0);
  textSize(40);
  text("Your Score is "+score, 10, 550);
    
}

void draw_green_and_shark(){
      
    green_info1.food_movement(0,int(random(50,500)),green_fish_left,green_fish_right);
     //shark movement    
    shark1.shark_movement();       
    if(score>=10&&score<=20)
    {
      print("level 2\n");
      shark1.change_level(30,40,30,40);
    }
    else if(score>20)
    {  
      print("level 3\n");
      shark1.change_level(60,70,60,70);     
    }
    //rotate player         
    //Green_fish rotate = new Green_fish();
    rotate.check_green_fish();
    //war1.draw_war();  
  }
}
