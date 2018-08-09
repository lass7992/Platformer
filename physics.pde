void gravity(){
  if(collision_down() == true){
    y_pos += 8;
  }
}

boolean collision_down(){
  boolean able = true;
  
  
  for(int i = 0 ; i < floor_instances.length ; i++){
    if(x_pos < floor_instances[i].xpos+164 && x_pos > floor_instances[i].xpos-100 && y_pos+8 < floor_instances[i].ypos+114 &&  y_pos+8 > floor_instances[i].ypos-40){
      able = false;
      break;
    }
  }
  
  return able;
}
