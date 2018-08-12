void gravity() {
  if (collision_down(x_pos, y_pos, hero_reletive_width) == true && gravity_able == true) {
    y_pos += 8;
  }
}

boolean collision_down(int x, int y, int int_reletive_width) {
  boolean able = true;


  for (int i = 0; i < map_objekter.length; i++) {
    if (x-(int_reletive_width/2) < map_objekter[i].xpos+32 && x+(int_reletive_width/2) > map_objekter[i].xpos-32 && y+8 < map_objekter[i].ypos &&  y+8 > map_objekter[i].ypos-40) {
      able = false;
      break;
    }
  }

  return able;
}

boolean collision_rope() {
  boolean able = true;


  for (int i = 0; i < ropes.length; i++) {
    if (x_pos < ropes[i].xpos+hero_width && x_pos > ropes[i].xpos-hero_width && y_pos < ropes[i].ypos+hero_width &&  y_pos > ropes[i].ypos-hero_width) {
      able = false;
      break;
    }
  }

  return able;
}


boolean Collision_skud( int x, int y, int int_width, int int_height) {  
  boolean hit = false;
  for (int i = 0; i < bullets.length; i++) {
    if (x < bullets[i].xpos+(int_width/2-15) && x > bullets[i].xpos-(int_width/2-15) && y < bullets[i].ypos+(int_height/2-20) &&  y > bullets[i].ypos-(int_height/2-20)) {
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
