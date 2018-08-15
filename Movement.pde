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
