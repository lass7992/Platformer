void new_Hero(){
  hero_index = int(round(random(1,3)));
  
  String [] Hero_file = loadStrings("/Hero/Hero" + str(hero_index)+"/Hero_data.txt");
  current_hero = loadImage("/Hero/Hero" + str(hero_index)+"/Hero_spr.png");
  hero_width = int(Hero_file[0]);
  hero_height = int(Hero_file[1]);
  hero_width_offset = int(Hero_file[2]);
  hero_height_offset = int(Hero_file[3]);
  hero_reletive_width = int(Hero_file[4]);
  hero_max_img = int(Hero_file[5]);
  current_bullet_speed = int(Hero_file[6]);
  current_bullet_skade = int(Hero_file[7]);
  current_bullet = Hero_file[8];

  //////////////////// TODO mangler lige en ofset brede og højde
}

void new_Hero_2(){
  hero_index = int(round(random(1,3)));
  
  String [] Hero_file = loadStrings("/Hero/Hero" + str(hero_index)+"/Hero_data.txt");
  current_hero_2 = loadImage("/Hero/Hero" + str(hero_index)+"/Hero_spr.png");
  hero_width_2 = int(Hero_file[0]);
  hero_height_2 = int(Hero_file[1]);
  hero_width_offset_2 = int(Hero_file[2]);
  hero_height_offset_2 = int(Hero_file[3]);
  hero_reletive_width_2 = int(Hero_file[4]);
  hero_max_img_2 = int(Hero_file[5]);
  current_bullet_speed_2 = int(Hero_file[6]);
  current_bullet_skade_2 = int(Hero_file[7]);
  current_bullet_2 = Hero_file[8];

  //////////////////// TODO mangler lige en ofset brede og højde
}
