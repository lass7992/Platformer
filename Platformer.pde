
  //spil data
int bane_x_length = 800;
int bane_y_length = 800;
int screen_x = 1020;
int screen_y = 700;

int hero_dir = -1;
  
  
  // int
int x_pos = 100;
int y_pos = 100;
  
  
  //billeder
PShape s;


//arrays
floor [] floor_instances;
boolean[] keys;



void setup(){  
  keys=new boolean[4];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;

  
  
  
  floor_instances = new floor[0];
  
  s = loadShape("soldier.svg");
  
  size(10,10);
  surface.setSize(screen_x, screen_y);
  frameRate(60);
  
  
  for(int i = 0 ; i < 20 ; i++){
    floor_instances = (floor[])append(floor_instances,new floor(i*64,630));
  }
  
}



void draw(){
  //controllers and checkers
  gravity();
  MovementChecker();
  

  //draw
  background(204);
  
  draw_hero();
  
  for(int i = 0 ; i < floor_instances.length ; i++){
    draw_floor(floor_instances[i].xpos,floor_instances[i].ypos);
  }
  
  
};
