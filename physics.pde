void gravity(){
  if(collision_down(x_pos,y_pos) == true && gravity_able == true){
    y_pos += 8;
  }
}

boolean collision_down(int x, int y){
  boolean able = true;
  
  
  for(int i = 0 ; i < map_objekter.length ; i++){
    if(x < map_objekter[i].xpos+84 && x > map_objekter[i].xpos-25 && y+8 < map_objekter[i].ypos &&  y+8 > map_objekter[i].ypos-40){
      able = false;
      break;
    }
  }
  
  return able;
}

boolean collision_rope(){
  boolean able = true;
  
  
  for(int i = 0 ; i < ropes.length ; i++){
    if(x_pos < ropes[i].xpos+40 && x_pos > ropes[i].xpos-40 && y_pos < ropes[i].ypos+40 &&  y_pos > ropes[i].ypos-40){
      able = false;
      break;
    }
  }
  
  return able;
}


boolean Collision_skud( int x, int y){  
  boolean hit = false;
  for(int i = 0 ; i < bullets.length ; i++){
    if(x < bullets[i].xpos+40 && x > bullets[i].xpos-40 && y < bullets[i].ypos+35 &&  y > bullets[i].ypos-35){
      hit = true;
      break;
    }
  }
  return hit;
}
