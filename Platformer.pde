
  //spil data
int bane_x_length = 800;
int bane_y_length = 800;
int screen_x = 1020;
int screen_y = 700;

int hero_dir = -1;
  
  
  // int
int x_pos = 100;
int y_pos = 100;
int jump_counter = 0;

  //boolean
boolean jumping = false;
boolean gravity_able = true;
  
  //billeder
PShape s;


//arrays
floor [] floor_instances;
boolean[] keys;
rope [] ropes;



void setup(){  
  keys=new boolean[4];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;

  
  
  
  floor_instances = new floor[0];
  ropes = new rope[0];
  
  s = loadShape("soldier.svg");
  
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
  background(204);
  
  draw_hero();
  
  for(int i = 0 ; i < floor_instances.length ; i++){
    draw_floor(floor_instances[i].xpos,floor_instances[i].ypos);
  }
  for(int i = 0 ; i < ropes.length ; i++){
    draw_rope(ropes[i].xpos,ropes[i].ypos);
  }
  
  
};
