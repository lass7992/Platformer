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
