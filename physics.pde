void gravity() {
  if (collision_down(x_pos, y_pos, hero_reletive_width) == true && gravity_able == true) {
    y_pos += max(8, min(8+(gravity_counter)/2,20));
    gravity_counter ++;
  }else {
    gravity_counter = 0;
  }
}
void gravity_2() {
  if (collision_down(x_pos_2, y_pos_2, hero_reletive_width_2) == true && gravity_able_2 == true) {
    y_pos_2 += max(8, min(8+(gravity_counter_2)/2,20));
    gravity_counter_2 ++;
  }else {
    gravity_counter_2 = 0;
  }
}


boolean collision_down(int x, int y, int int_reletive_width) {
  boolean able = true;
  for (int i = 0; i < map_objekter.length; i++) {
    if (x-(int_reletive_width/2) < map_objekter[i].xpos+64 && x+(int_reletive_width/2) > map_objekter[i].xpos && y+8 < map_objekter[i].ypos &&  y+8 > map_objekter[i].ypos-40) {
      able = false;
      break;
    }
  }
  return able;
}

boolean collision_rope(int x, int y) {
  boolean able = true;


  for (int i = 0; i < ropes.length; i++) {
    if (x-(hero_reletive_width/2) < ropes[i].xpos+16 && x+(hero_reletive_width/2) > ropes[i].xpos+16 && y-(hero_height) < ropes[i].ypos+32 &&  y > ropes[i].ypos-32) {
      able = false;
      break;
    }
  }

  return able;
}


boolean Collision_skud( int x, int y, int int_width, int int_height) {  
  boolean hit = false;
  for (int i = 0; i < bullets.length; i++) {
    if (x-(int_width/2) < bullets[i].xpos+6 && x+(int_width/2) > bullets[i].xpos-6 && y-(int_height/2-20) < bullets[i].ypos+6 &&  y+(int_height/2) > bullets[i].ypos-6) {
      hit = true;
      bullets = (bullet[])concat(subset(bullets, 0, i), subset(bullets, i+1, bullets.length-i-1));


      break;
    }
  }
  return hit;
}


boolean Collision_enermy( int x, int y) {  
  boolean hit = false;
  for (int i = 0; i < enemies.length; i++) {
    if (x < enemies[i].xpos+(enemies[i].enemy_width/2) && x > enemies[i].xpos-(enemies[i].enemy_width/2) && y < enemies[i].ypos+(enemies[i].enemy_height/2) &&  y > enemies[i].ypos-(enemies[i].enemy_height/2)) {
      hit = true;

      break;
    }
  }
  return hit;
}
