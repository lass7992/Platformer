//game changer
int max_hero = 3;
int max_baner = 2;



void setup() {  
  size(10, 10);
  surface.setSize(screen_x, screen_y);
  frameRate(60);
  
  start_();
  

}


void draw() {
  
  if(menu_active == true){
    game_active = false;
    menu(); 
    if(players == 1){
      //loader helte
      new_Hero();
    
    }else if(players == 2){
      //loader helte
      new_Hero();
      new_Hero_2();  
    }
  }
  
  
  if(game_active == true){
    //controllers and checkers
    Time_Controllers();
    
    player_1_rutine();
    
    if(players == 2){
      player_2_rutine();
    }
    
  
  
  
      //drawing
    draw_game();
  
  
  ///// TODOD
    if (hero_liv == 0) {
      textSize(93); 
      text("GAME OVER", 400, 400); 
      noLoop();
    }
  }
}
