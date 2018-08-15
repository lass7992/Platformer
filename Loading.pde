void load_billeder() {
  //loader mappet
  Bane_Creater("/Baner/Bane_"+ Bane_nr +"/Map.txt"); //skriv navnet på filen der skal indlæses
  
  //loader bullets
  for(int i = 0; i < max_hero; i++){
    bullet_img = (PImage[])append(bullet_img, loadImage("/Hero/Hero" + str(i+1) + "/bullet.png"));
  }

  //loader billeder
  s = loadShape("soldier.svg");
  background_img =  loadImage("/Baner/Bane_1/Background.png");
  floor_tile = loadImage("/Baner/Bane_1/floor.png");
  HP_img = loadImage("/spr/HP.png");
  rope_spr = loadImage("/Baner/Bane_1/rope.png");
  rope_spr_end = loadImage("/Baner/Bane_1/rope_end.png");


    //loader enemies
  for (int i = 0; i < 6; i++) {
    enemy_img[i] = loadImage("/Baner/Bane_1/enemy/enemy_1/" + str(i) + ".png");
  }
  for (int i = 0; i < 2; i++) {
    super_enemy_img[i] = loadImage("/Baner/Bane_1/enemy/enemy_2/" + str(i+1) + ".png");
  }
  
}



void Array_loading(){
  bullet_img = new PImage[0];
  ropes = new rope[0];
  bullets = new bullet[0];
  map_objekter = new map_objekt[0];
  enemies = new enemy[1];
  enemy_img = new PImage[6];
  super_enemy_img = new PImage[2];
  normal_enemy_scale = new int[2];
  super_enemy_scale = new int[2];
  enemy_spawn_points = new int[0][0]; 
}
