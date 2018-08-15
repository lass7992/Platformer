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

boolean collision_rope(int x, int y, int width_, int height_) {
  boolean able = true;


  for (int i = 0; i < ropes.length; i++) {
    if (x-(width_/2) < ropes[i].xpos+16 && x+(width_/2) > ropes[i].xpos+16 && y-(height_) < ropes[i].ypos+32 &&  y > ropes[i].ypos-32) {
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
