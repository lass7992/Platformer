class Player{
  int hero_dir = -1;
  int hero_liv = 3;
  int current_bullet_speed = 10;
  int current_bullet_skade = 50;
  int x_pos = 500;
  int y_pos = 500;
  int hero_width = 80;
  int hero_height = 140;
  int hero_width_offset; 
  int hero_height_offset;
  int hero_reletive_width;
  int hero_max_img;
  int hero_index;
  int score = 0;
    //booleans
  boolean jumping = false;
  boolean gravity_able = true;
  //counters
  int jump_counter = 0;
  int gravity_counter = 0;
  int invis_counter = 0;
    //strings
  String current_bullet = "normal";
    //images
  PImage current_hero;
  
  Player(){
  
  }
  void update(){
    //controllers
    gravity();
    
    
    MovementChecker();
    if (jumping == true) {
      jump();
    }
    
    if (gravity_able == false && collision_rope(x_pos,y_pos,hero_reletive_width , hero_height) == true) {
      gravity_able = true;
    }
    //enemy hit
    if (invis_counter == 0) {
      if (Collision_enermy(x_pos, y_pos) == true) {  
        hero_liv--;
        invis_counter = 100;
      }
    } else {
      invis_counter--;
    }
    
    draw_hero();
    Place_controller();
  }
  
  
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
  void gravity() {
    if (collision_down(x_pos, y_pos, hero_reletive_width) == true && gravity_able == true) {
      y_pos += max(8, min(8+(gravity_counter)/2,20));
      gravity_counter ++;
    }else {
      gravity_counter = 0;
    }
  }
  void jump() {
    if (jump_counter < 20 ) {
      jump_counter++;
      y_pos -= min(40-jump_counter*2, 30);
    } else if (jump_counter < 35) {
      jump_counter++;
    } else {
      jump_counter = 0;
      jumping = false;
    }
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
  
  
  void Place_controller(){
    if(y_pos > screen_y+hero_height){
      y_pos = 400;
      hero_liv -= 1;
      invis_counter = 100;
    
    }
    if(x_pos > screen_x+hero_width/8){
      x_pos -= screen_x+hero_width/2;
    }
    if(x_pos < 0-hero_width/8){
      x_pos += screen_x+hero_width/2;
    }
    
  }
}  
