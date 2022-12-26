class War
{
  //call 1 time
  //called before draw but not in setup
  ArrayList<HashMap<String, Integer>> fishes_to_be_bomed = new ArrayList();//doesn't include player
//pos_x pos_y  speed_y height width start_x_range end_x_range 
//start_x_range end_x_range : where will the bomb drop from 
  Bomb bomb1= new Bomb(500,50,5,200,200,200,250,bom);
  Bomb bomb2= new Bomb(500,50,10,200,200,460,650,bom);
  Bomb bomb3= new Bomb(500,50,10,200,200,840,1000,bom);
  Bomb bomb4= new Bomb(500,50,5,200,200,1200,width-50,bom); 
//pos_x pos_y y_dirc speed_y height width start_x_range start_y_range
 
  //void //draw with war_flag==1
  void inatialize_war()
  {
      //image(sea_pic, 0, 0,width,height);
      //fill fishes_to_be_bomed list
      //print("inatialize_war");
      fishes_to_be_bomed.add(food1_move);
      fishes_to_be_bomed.add(food2_move);
      fishes_to_be_bomed.add(food3_move);
      fishes_to_be_bomed.add(food4_move);
      fishes_to_be_bomed.add(food5_move);
      fishes_to_be_bomed.add(food6_move);
      fishes_to_be_bomed.add(food7_move);
      fishes_to_be_bomed.add(food8_move);
      fishes_to_be_bomed.add(food9_move);
      fishes_to_be_bomed.add(food10_move);
      //fishes_to_be_bomed.add(shark_move);
      //fishes_to_be_bomed.add(green_info);
      //bombs
         
}

  //call all the time
  void draw_war()
  {
      
    //print("draw_war");
      //Bomb bomb1= new Bomb(500,50,5,200,200,200,250,bom);
      bomb1.draw_bomb();
      bomb1.kill(fishes_to_be_bomed,player_info);
      bomb2.draw_bomb();
      bomb2.kill(fishes_to_be_bomed,player_info);
      bomb3.draw_bomb();
      bomb3.kill(fishes_to_be_bomed,player_info); 
      bomb4.draw_bomb();
      bomb4.kill(fishes_to_be_bomed,player_info);

}

}
