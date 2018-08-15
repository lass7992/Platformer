void MovementChecker() {
  if ( keys[0]) 
  {  
    if (true == true) {
      Player_1.x_pos -= 7;
      Player_1.hero_dir = 1;
    }
  }
  if ( keys[1]) 
  {
    if (collision_rope(Player_1.x_pos,Player_1.y_pos+14,Player_1.hero_reletive_width , Player_1.hero_height) == false  && Player_1.y_pos < screen_y-20-(Player_1.hero_height/2)) {
      Player_1.gravity_able = false;
      Player_1.y_pos += 5;
    }else if (collision_rope(Player_1.x_pos,Player_1.y_pos+14,Player_1.hero_reletive_width , Player_1.hero_height) == true) {
      Player_1.gravity_able = true;
    }
  }
  if ( keys[2]) 
  {  
    if (collision_rope(Player_1.x_pos,Player_1.y_pos,Player_1.hero_reletive_width , Player_1.hero_height) == false) {
      Player_1.gravity_able = false;
      Player_1.y_pos -= 5;
    }
    
  }
  if ( keys[3]) 
  {
    if (true == true) {
      Player_1.x_pos += 7;
      Player_1.hero_dir = -1;
    }
  }
    
    //player 2 starts here
  if(players == 2){
      if ( keys[4]){  
      if (true == true) {
        Player_2.x_pos -= 7;
        Player_2.hero_dir = 1;
      }
    }
    if ( keys[5]) {
      if (collision_rope(Player_2.x_pos,Player_2.y_pos+14,Player_2.hero_reletive_width , Player_2.hero_height) == false  && Player_2.y_pos < screen_y-20-(Player_2.hero_height/2)) {
        Player_2.gravity_able = false;
        Player_2.y_pos += 5;
      }else if (collision_rope(Player_2.x_pos, Player_2.y_pos+14,Player_2.hero_reletive_width , Player_2.hero_height) == true) {
        Player_2.gravity_able = true;
      }
    }
    if ( keys[6]) 
    {  
      if (collision_rope(Player_2.x_pos,Player_2.y_pos,Player_2.hero_reletive_width , Player_2.hero_height) == false) {
        Player_2.gravity_able = false;
        Player_2.y_pos -= 5;
      }
      
    }
    if ( keys[7]) 
    {
      if (true == true) {
        Player_2.x_pos += 7;
        Player_2.hero_dir = -1;
      }
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
    if (Player_1.jumping == false &&  Player_1.gravity_able == true) {
      Player_1.jumping = true;
    }
  }
  if (key=='e') {
    bullets = (bullet[])append(bullets, new bullet(Player_1.x_pos+Player_1.hero_dir*(-80), Player_1.y_pos, str(Player_1.hero_index), Player_1.current_bullet_speed,Player_1.hero_dir, Player_1.current_bullet_skade)); //<>//
  }
    if (key=='-') {
      bullets = (bullet[])append(bullets, new bullet(Player_2.x_pos+Player_2.hero_dir*(-80), Player_2.y_pos, str(Player_2.hero_index), Player_2.current_bullet_speed, Player_2.hero_dir, Player_2.current_bullet_skade));

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
      if (Player_2.jumping == false &&  Player_2.gravity_able == true) {
        Player_2.jumping = true;
      } //<>//
    }
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
