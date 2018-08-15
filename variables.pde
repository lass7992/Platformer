// int
  //spil data
int screen_x = 1250;
int screen_y = 800;


int players = 1;



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
