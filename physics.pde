void gravity(){
  if(collision_down() == true && gravity_able == true){
    y_pos += 8;
  }
}

boolean collision_down(){
  boolean able = true;
  
  
  for(int i = 0 ; i < floor_instances.length ; i++){
    if(x_pos < floor_instances[i].xpos+84 && x_pos > floor_instances[i].xpos-25 && y_pos+8 < floor_instances[i].ypos+114 &&  y_pos+8 > floor_instances[i].ypos-40){
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
