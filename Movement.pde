void MovementChecker(){
  if( keys[0]) 
  {  
    if (true == true){
      x_pos -= 2;
      hero_dir = 1;
    }
  }
  if( keys[1]) 
  {
    if (true == true){
      //y += 3;
    }
  }
  if( keys[2]) 
  {  
    if (collision_rope() == false){
      gravity_able = false;
      y_pos -= 3;
    }
  }
  if( keys[3]) 
  {
    if (true == true){
      x_pos += 2;
      hero_dir = -1;
    }
  }
}

void keyPressed(){
  if(key=='a')
    keys[0]=true;
  if(key=='s')
    keys[1]=true;
  if(key=='w')
    keys[2]=true;
  if(key=='d')
    keys[3]=true;
  if(key==' '){
    if(jumping == false){
      jumping = true;
    }
  }
  if(key=='e'){
    bullets = (bullet[])append(bullets,new bullet(x_pos+hero_dir*(-80),y_pos,current_bullet,current_bullet_speed));
  }
}
void keyReleased(){
    if(key=='a')
      keys[0]=false;
    if(key=='s')
      keys[1]=false;
    if(key=='w')
      keys[2]=false;
    if(key=='d')
      keys[3]=false;
}

void jump(){
  if(jump_counter < 20 ){
    jump_counter++;
    y_pos -= min(40-jump_counter*2,20);
  }else if (jump_counter < 40){
    jump_counter++;
  }else{
    jump_counter = 0;
    jumping = false;
  }
  
}
