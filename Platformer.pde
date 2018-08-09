
  //spil data
int bane_x_length = 800;
int bane_y_length = 800;
int screen_x = 1020;
int screen_y = 700;

  
  
  // int
int x_pos = 40;
int y_pos = 40;
  
  
  //billeder
PShape s;

//arrays
floor [] floor_instances;

void setup(){  

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
  
  
  //draw
  background(204);
  shape(s,x_pos-100,y_pos-50,200,100);
  
  for(int i = 0 ; i < floor_instances.length ; i++){
    draw_floor(floor_instances[i].xpos,floor_instances[i].ypos);
  }
  
  
};
