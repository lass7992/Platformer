void MovementChecker() {
  if ( keys[0]) 
  {  
    if (true == true) {
      x_pos -= 7;
      hero_dir = 1;
    }
  }
  if ( keys[1]) 
  {
    if (collision_rope(x_pos,y_pos+14) == false  && y_pos < screen_y-20-(hero_height/2)) {
      gravity_able = false;
      y_pos += 5;
    }else if (collision_rope(x_pos,y_pos+14) == true) {
      gravity_able = true;
    }
  }
  if ( keys[2]) 
  {  
    if (collision_rope(x_pos,y_pos) == false) {
      gravity_able = false;
      y_pos -= 5;
    }
    
  }
  if ( keys[3]) 
  {
    if (true == true) {
      x_pos += 7;
      hero_dir = -1;
    }
  }
    
    //player 2 starts here
  if(players == 2){
      if ( keys[4]){  
      if (true == true) {
        x_pos_2 -= 7;
        hero_dir_2 = 1;
      }
    }
    if ( keys[5]) {
      if (collision_rope(x_pos_2,y_pos_2+14) == false  && y_pos_2 < screen_y-20-(hero_height_2/2)) {
        gravity_able_2 = false;
        y_pos_2 += 5;
      }else if (collision_rope(x_pos_2,y_pos_2+14) == true) {
        gravity_able_2 = true;
      }
    }
    if ( keys[6]) 
    {  
      if (collision_rope(x_pos_2,y_pos_2) == false) {
        gravity_able_2 = false;
        y_pos_2 -= 5;
      }
      
    }
    if ( keys[7]) 
    {
      if (true == true) {
        x_pos_2 += 7;
        hero_dir_2 = -1;
      }
    }
  }
}

void keyPressed() {
  if (key=='a')
    keys[0]=true;
  if (key=='s')
    keys[1]=true;
  if (key=='w')
    keys[2]=true;
  if (key=='d')
    keys[3]=true;
  if (key==' ') {
    if (jumping == false &&  gravity_able == true) {
      jumping = true;
    }
  }
  if (key=='e') {
    bullets = (bullet[])append(bullets, new bullet(x_pos+hero_dir*(-80), y_pos, str(hero_index), current_bullet_speed));
  }
    if (key=='-') {
    if (jumping_2 == false &&  gravity_able_2 == true) {
      jumping_2 = true;
    }
  }  
  if (key==CODED){
    if(keyCode == LEFT)
      keys[4]=true;
    if(keyCode == DOWN)
      keys[5]=true;
    if(keyCode == UP)
      keys[6]=true;
    if(keyCode == RIGHT)
      keys[7]=true;
    if(keyCode == SHIFT){
      bullets = (bullet[])append(bullets, new bullet(x_pos_2+hero_dir_2*(-80), y_pos_2, str(hero_index_2), current_bullet_speed_2));
    }
  }
}
void keyReleased() {
  if (key=='a')
    keys[0]=false;
  if (key=='s')
    keys[1]=false;
  if (key=='w')
    keys[2]=false;
  if (key=='d')
    keys[3]=false;
  if (key==CODED){
    if(keyCode == LEFT)
      keys[4]=false;
    if(keyCode == DOWN)
      keys[5]=false;
    if(keyCode == UP)
      keys[6]=false;
    if(keyCode == RIGHT)
      keys[7]=false;
  }
}

void jump() {
  if (jump_counter < 20 ) {
    jump_counter++;
    y_pos -= min(40-jump_counter*2, 30);
  } else if (jump_counter < 35) {
    jump_counter++;
  } else {
    jump_counter = 0;
    jumping = false;
  }
}
void jump_2() {
  if (jump_counter_2 < 20 ) {
    jump_counter_2++;
    y_pos_2 -= min(40-jump_counter_2*2, 30);
  } else if (jump_counter_2 < 35) {
    jump_counter_2++;
  } else {
    jump_counter_2 = 0;
    jumping_2 = false;
  }
}
