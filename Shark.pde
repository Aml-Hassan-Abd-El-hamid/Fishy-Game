class Shark extends Fishs 
{
  PImage shark;

  //HashMap<String, Integer> shark_move = new HashMap<String, Integer>();
  //shark_movement
  Shark(HashMap<String, Integer>shark_hashmap  )
  {
      fish_info=shark_hashmap;
  }
  void shark_movement()
  {
       { //fishes class
         Time_change();
         
         random_movement(fish_info);
         
         if (fish_info.get("x_dirc")<0){shark=sharkl;}
         if (fish_info.get("x_dirc")>0){shark=sharkr;}
         
         image(shark, fish_info.get("pos_x"),fish_info.get("pos_y"),530,300);
       }
       
  }
}
