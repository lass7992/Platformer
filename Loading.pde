void load_billeder() {
  //loader mappet
  Bane_Creater("/Baner/Bane_1/Map.txt"); //skriv navnet på filen der skal indlæses

  //loader helte
  new_Hero();

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
  super_enemy_img[0] = loadImage("/Baner/Bane_1/enemy/enemy_2/" + str(1) + ".png");
}
