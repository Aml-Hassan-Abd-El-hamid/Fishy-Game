// sounds
import processing.sound.*;
int start_level2_flag=0;
int start_level3_flag=0;

int choose_Score=30;//show win screen after getting it
SoundFile start_song;
//int page_flag=0;
int warr=1;//to make shark eat the player only peace 
PImage playerl;
PImage playerr;
PImage player;
PImage player11;
PImage sea1;
PImage sea2;
PImage sharkr;
PImage sharkl;
//PImage green_fish;
float angl=0.0;
//PImage food;
PImage foodr;
PImage foodl;
//new food
//PImage foodd;
PImage foodr2;
PImage foodl2;

//PImage fooddd;
PImage foodr3;
PImage foodl3;

PImage green_fish_right;
PImage green_fish_left;

///
int flagFood=1;
int flag=1;
int old_s=0;
int f=0;
int score=0;////////////////////
int resize=0;
int flag_green_fish=0;
int new_sec=0;
int old_sec=0;
float angle=0.0;
PFont font;
//war
PImage bom;
PImage fire;
PImage ship;

// options 
PImage sea_opt;
PImage player3_opt;
PImage player3_optl;
PImage player3_optr;
PImage player2_opt;
PImage player2_optl;
PImage player2_optr;
//PImage player1_opt;
PImage m1_opt;
PImage m2_opt;
PImage return_home_opt;
// lose_page
PImage sad;
//start image
PImage Shape_back;
  PImage start_back;
  PImage start_shark;
  PImage sound;
  PImage mute;
  PFont word;
  
// winner_page
PImage winn;
//ArrayList<Integer> shark_move = new ArrayList<Integer>(); 
//dic={}
//dic=dict()
HashMap<String, Integer> food1_move = new HashMap<String, Integer>();
HashMap<String, Integer> food2_move = new HashMap<String, Integer>();
HashMap<String, Integer> food3_move = new HashMap<String, Integer>();
HashMap<String, Integer> food4_move = new HashMap<String, Integer>();
HashMap<String, Integer> food5_move = new HashMap<String, Integer>();
HashMap<String, Integer> food6_move = new HashMap<String, Integer>();
HashMap<String, Integer> food7_move = new HashMap<String, Integer>();
HashMap<String, Integer> food8_move = new HashMap<String, Integer>();
HashMap<String, Integer> food9_move = new HashMap<String, Integer>();
HashMap<String, Integer> food10_move = new HashMap<String, Integer>();
//////////
HashMap<String, Integer> shark_move = new HashMap<String, Integer>();
//stinky fish
HashMap<String, Integer> green_info = new HashMap<String, Integer>();
//
HashMap<String, Integer> player_info = new HashMap<String, Integer>();

start_page main_page= new start_page(0); 
Player nemo = new Player();
Body peace = new Body();
War war1= new War();
Score_Resize resizee=new Score_Resize();
Green_fish rotate=new Green_fish();
Body war_body = new Body();
options op= new options();
//
/////
////////////

//font 
  
void setup() {
    start_song = new SoundFile(this,"data/Baby.mp3");
    start_song.loop();
    
    Load_image images_and_fonts = new Load_image();
    images_and_fonts.setup_game();
    
    peace.init_food();
    peace.init_green();
    peace.init_shark();
    //intialize player
    nemo.intial_player();//width_player, hieght_player
    //war zone
    size(1600,600);
    smooth();
}
int flag_war_intialize=1;
void draw() 

{ 
      main_page.draw_start_page();
      //print(score);        
}
