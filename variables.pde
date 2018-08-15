// int
  //spil data
int screen_x = 1250;
int screen_y = 800;


int players = 1;

//player 1
  //ints
int hero_dir = -1;
int hero_liv = 3;
int current_bullet_speed = 10;
int current_bullet_skade = 50;
int x_pos = 100;
int y_pos = 100;
int hero_width = 80;
int hero_height = 140;
int hero_width_offset; 
int hero_height_offset;
int hero_reletive_width;
int hero_max_img;
int hero_index;
int score = 0;
  //booleans
boolean jumping = false;
boolean gravity_able = true;
//counters
int jump_counter = 0;
int gravity_counter = 0;
int invis_counter = 0;
  //strings
String current_bullet = "normal";
  //images
PImage current_hero;


// player 2
  //ints
int hero_dir_2 = -1;
int hero_liv_2 = 3;
int current_bullet_speed_2 = 10;
int current_bullet_skade_2 = 50;
int x_pos_2 = 100;
int y_pos_2 = 100;
int hero_width_2 = 80;
int hero_height_2 = 140;
int hero_width_offset_2; 
int hero_height_offset_2;
int hero_reletive_width_2;
int hero_max_img_2;
int hero_index_2;
int score_2 = 0;
  //booleans
boolean jumping_2 = false;
boolean gravity_able_2 = true;
  //counter
int jump_counter_2 = 0;
int gravity_counter_2 = 0;
int invis_counter_2 = 0;
  //strings
String current_bullet_2 = "normal";
  //images
PImage current_hero_2;



  //minions
int super_charge=0;
int enemy_spawn_rate = 3000;
int [] normal_enemy_scale;
int [] super_enemy_scale;
int [][] enemy_spawn_points; 

    //Game variabler
float time = 0;
float past_time = millis();




//boolean
boolean menu_active = true;
boolean game_active = false;

//billeder
PShape s;
PImage background_img;
PImage floor_tile;
PImage rope_spr;
PImage rope_spr_end;
PImage HP_img;


//arrays
boolean[] keys;
rope [] ropes;
bullet [] bullets;
map_objekt [] map_objekter;
enemy [] enemies;
PImage [] enemy_img;
PImage [] super_enemy_img;
PImage [] bullet_img;

//String
String Bane_nr;

//objects
muffin muffin_instance = new muffin(400, 400);
