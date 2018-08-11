  //spil data
int bane_x_length = 800;
int bane_y_length = 800;
int screen_x = 1020;
int screen_y = 700;

int hero_dir = -1;

int current_bullet_speed = 10;

  
  // int
int x_pos = 100;
int y_pos = 100;
int jump_counter = 0;

  //boolean
boolean jumping = false;
boolean gravity_able = true;
  
  //billeder
PShape s;
PImage background_img;


//arrays
floor [] floor_instances;
boolean[] keys;
rope [] ropes;
bullet [] bullets;


//String
String current_bullet = "normal";

//objects
muffin muffin_instance = new muffin(400,500);


void setup(){  
  keys=new boolean[4];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;

  
  
  //opsætter arrays
  floor_instances = new floor[0];
  ropes = new rope[0];
  bullets = new bullet[0];
  
  //loader billeder
  s = loadShape("soldier.svg");
  background_img =  loadImage("/Backgrounds/Background_HAHA.png");
  
  size(10,10);
  surface.setSize(screen_x, screen_y);
  frameRate(60);
  
  
  for(int i = 0 ; i < 20 ; i++){
    floor_instances = (floor[])append(floor_instances,new floor(i*64,630));
  }
  for(int i = 0 ; i < 6 ; i++){
    floor_instances = (floor[])append(floor_instances,new floor(200+i*64,300));
  }
  for(int i = 0 ; i < 4 ; i++){
    ropes = (rope[])append(ropes,new rope(350,300+i*64));
  }
  
  
}



void draw(){
  //controllers and checkers
  gravity();
  MovementChecker();
  if(jumping == true){
    jump();
  }
  if(gravity_able == false && collision_rope() == true){
    gravity_able = true;
  }
  


  

  //draw
  draw_background();
  
  
  for(int i = 0 ; i < bullets.length ; i++){  //updatere skydne
    bullets[i].update();
  }

  
  draw_hero();
  
  for(int i = 0 ; i < floor_instances.length ; i++){
    draw_floor(floor_instances[i].xpos,floor_instances[i].ypos);
  }
  for(int i = 0 ; i < ropes.length ; i++){
    draw_rope(ropes[i].xpos,ropes[i].ypos);
  }
  
  //draw muffin
    muffin_instance.update();
  

  
  
};
