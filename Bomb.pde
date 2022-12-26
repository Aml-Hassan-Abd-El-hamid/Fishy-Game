class Bomb
{
  int pos_x, pos_y, speed_y, bomb_height, bomb_width, start_x_range, end_x_range;
  PImage bom2;
//pos_x pos_y  speed_y height width start_x_range end_x_range
//init
  Bomb(int pos_x, int pos_y, int speed_y, int bomb_height, int bomb_width,
     int start_x_range, int end_x_range, PImage bom2)
     {
         this.pos_x=pos_x;
         this.pos_y=pos_y;
         this.speed_y=speed_y;
         this.bomb_height=bomb_height;
         this.bomb_width=bomb_width;
         this.start_x_range=start_x_range;
         this.end_x_range=end_x_range;
         this.bom2=bom2;
     }
  void draw_bomb()
     {
       //print("draw_bomb"); 
       if (this.pos_y<height)
          {   
              //bomb1.put("pos_y",bomb1.get("pos_y")+20);//move down
              this.pos_y=this.pos_y+this.speed_y;
              image(bom,this.pos_x,this.pos_y,this.bomb_width,this.bomb_height);
          }
      else{
             //bomb1.put("pos_y",-10);
             this.pos_y=-10;
             //bomb1.put("pos_x",int(random(100,200))) ;
             this.pos_x=int( random(  this.start_x_range, this.end_x_range ) );
           }
     }
  void kill (ArrayList<HashMap<String, Integer>> f,
             HashMap<String, Integer> p)
             {
                int s = f.size();
                //loop through the fishes list     
                for (int j = 0; j < s; j++)
                { 
                  //I will treat every mousex as bomb.pos_x
                  //if(mouseX>=shark_move.get("pos_x")+50 && mouseX<=shark_move.get("pos_x")+420 && mouseY>=shark_move.get("pos_y")+100&&mouseY<=shark_move.get("pos_y")+300){
                  if(this.pos_x>=f.get(j).get("pos_x")&&
                     this.pos_x<=f.get(j).get("pos_x")+f.get(j).get("width")&&
                     this.pos_y>=f.get(j).get("pos_y")&&
                     this.pos_y<=f.get(j).get("pos_y")+f.get(j).get("height")/*+200*/)
                     {
                        //if so alive_flag =0    
                        f.get(j).put("flag_bomed",1);
                        //print("hi :)");
                      } 
                }
               //check if player is killed
               if(this.pos_x>=mouseX&&
                  this.pos_x<=/*p.get("pos_x")*/mouseX+p.get("width_pic") && 
                  this.pos_y>=mouseY && 
                  this.pos_y<=mouseY+p.get("height_pic")/*+30*/)
                  {
                     p.put("flag_bomed",1);//player was bomed
                     //print("I was bomed\n");} 
                   }
}}
