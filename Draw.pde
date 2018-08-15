void draw_game(){
    //draw
    draw_background();
  
  
    for (int i = 0; i < bullets.length; i++) {  //updatere skydne
      if (bullets[i].xpos < 0 || bullets[i].xpos > screen_x) {
        bullets = (bullet[])concat(subset(bullets, 0, i), subset(bullets, i+1, bullets.length-i-1));
        continue;
      }
      bullets[i].update();
    }
  
  
    draw_hero();
    if(players == 2){
      draw_hero_2();
    }
    
  
    // draw map
    for (int i = 0; i < map_objekter.length; i++) {
      draw_floor(map_objekter[i].xpos, map_objekter[i].ypos);
    } 
    // rope
    for (int i = 0; i < ropes.length; i++) {
      draw_rope(ropes[i].xpos, ropes[i].ypos,ropes[i].end);
    }
  
    //draw enemy
    for (int i = 0; i < enemies.length; i++) {
      enemies[i].update();
      if (enemies[i].hp <= 0) {
        enemies = (enemy[])concat(subset(enemies, 0, i), subset(enemies, i+1, enemies.length-i-1));
      }
  
    }
  
    //hp
    draw_hud();
  
  
    //draw muffin
    muffin_instance.update();

}







void draw_floor(int x, int y) {
  image(floor_tile, x, y, 64, 40);
}

void draw_hero() {
  pushMatrix();
  translate(x_pos, y_pos);
  scale(hero_dir, 1);
  if (invis_counter > 1) {
    tint(100, 100, 100);
  }    
  image(current_hero, hero_width_offset, hero_height_offset, hero_width , hero_height );
  noTint();
  popMatrix();
}
void draw_hero_2() {
  pushMatrix();
  translate(x_pos_2, y_pos_2);
  scale(hero_dir_2, 1);
  if (invis_counter_2 > 1) {
    tint(100, 100, 100);
  }    
  image(current_hero_2, hero_width_offset_2, hero_height_offset_2, hero_width_2 , hero_height_2 );
  noTint();
  popMatrix();
}



void draw_rope(int x, int y, boolean end) {
  if(end == true){
    image(rope_spr_end, x, y);
  }else{
    image(rope_spr, x, y);
  }
  
  //fill(200, 50, 100);
  //rect(x,y,20,64);
}

void draw_background() {
  pushMatrix();
  image(background_img, 0, 0);
  noTint();
  popMatrix();
}


void draw_liv() {
  for (int i=0; i < hero_liv; i++) {
    fill(255, 0, 0);
    image(HP_img, 20+i*40, 20);
    //ellipse(20+i*40,20,20,20);
  }
}

void draw_score() {
  pushMatrix();
  fill(0, 0, 0);
  textSize(25); 
  text(str(score), 150, 42); 
  popMatrix();
}


void draw_hud() {
  draw_score();
  draw_liv();
}
