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
  image(current_hero, -130, -94, 87*2, 70*2);
  noTint();
  popMatrix();
}

void draw_rope(int x, int y) {
  image(rope_spr, x, y);
  fill(200, 50, 100);
  //rect(x,y,20,64);
}

void draw_background() {
  pushMatrix();
  image(background_img, 0, 0);
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
