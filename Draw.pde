void draw_floor(int x,int y){
  image(floor_tile,x,y,64,40);
}

void draw_hero(){
  pushMatrix();
    translate(x_pos, y_pos);
    scale(hero_dir,1);
    image(current_hero,-130,-94,87*2,70*2);
  popMatrix();
}

void draw_rope(int x,int y){
  fill(200,50,100);
  rect(x,y,20,64);
}

void draw_background(){
  pushMatrix();
  image(background_img,0,0);
  popMatrix();
}
