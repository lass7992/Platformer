void start_(){
  keys=new boolean[8];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;



  //opsætter arrays
  Bane_nr = str(round(random(1, max_baner)));
  
  Array_loading();
  
  //loader mappen og billeder
  load_billeder();
  
  
  enemies[0] = new enemy("normal", 4, 100, normal_enemy_scale[0], normal_enemy_scale[1]);

}
