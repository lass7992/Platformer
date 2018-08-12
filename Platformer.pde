// int
  //spil data
int screen_x = 1250;
int screen_y = 800;
int hero_dir = -1;
int hero_liv = 3;
int current_bullet_speed = 10;
int x_pos = 100;
int y_pos = 100;

    //Game variabler
float time = 0;
float past_time = millis();

  //others
int jump_counter = 0;
int invis_counter = 0;
int score = 0;
int super_charge=0;
int enemy_spawn_rate = 4000;


//boolean
boolean jumping = false;
boolean gravity_able = true;

//billeder
PShape s;
PImage background_img;
PImage current_hero;
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

//String
String current_bullet = "normal";

//objects
muffin muffin_instance = new muffin(400, 500);


void setup() {  
  keys=new boolean[4];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;



  //opsætter arrays
  ropes = new rope[0];
  bullets = new bullet[0];
  map_objekter = new map_objekt[0];
  enemies = new enemy[1];
  enemy_img = new PImage[6];
  super_enemy_img = new PImage[1];


  enemies[0] = new enemy("normal", 4, 100);

  //loader mappen og billeder
  load_billeder();

  size(10, 10);
  surface.setSize(screen_x, screen_y);
  frameRate(60);
}



void draw() {

  //controllers and checkers
  Time_Controllers();
  
  gravity();
  MovementChecker();
  if (jumping == true) {
    jump();
  }
  if (gravity_able == false && collision_rope() == true) {
    gravity_able = true;
  }
  //enemy hit
  if (invis_counter == 0) {
    if (Collision_enermy(x_pos, y_pos) == true) {  
      hero_liv--;
      invis_counter = 100;
    }
  } else {
    invis_counter--;
  }





  //draw
  draw_background();


  for (int i = 0; i < bullets.length; i++) {  //updatere skydne
    if (bullets[i].xpos < 0 || bullets[i].xpos > screen_x) {
      bullets = (bullet[])concat(subset(bullets, 0, i), subset(bullets, i+1, bullets.length-i-1));
      continue;
    }
    bullets[i].update();
  }


  draw_hero();

  // draw map
  for (int i = 0; i < map_objekter.length; i++) {
    draw_floor(map_objekter[i].xpos, map_objekter[i].ypos);
  } 
  // rope
  for (int i = 0; i < ropes.length; i++) {
    draw_rope(ropes[i].xpos, ropes[i].ypos,ropes[i].end);
  }

  //draw enemy
  for (int i = 0; i < enemies.length; i++) {
    enemies[i].update();
    if (enemies[i].hp <= 0) {
      enemies = (enemy[])concat(subset(enemies, 0, i), subset(enemies, i+1, enemies.length-i-1));
    }

  }

  //hp
  draw_hud();


  //draw muffin
  muffin_instance.update();


  if (hero_liv == 0) {
    textSize(93); 
    text("GAME OVER", 400, 400); 
    noLoop();
  }
};
