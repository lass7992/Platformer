void draw_floor(int x,int y){
  fill(50,200,50);
  rect(x,y,64,64);
}

void draw_hero(){
  pushMatrix();
    translate(x_pos, y_pos);
    scale(hero_dir,1);
    shape(s,-130,-50,200,100);
  popMatrix();
}
