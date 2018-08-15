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
    if(players == 1){
      if (hero_liv == 0) {
        textSize(93); 
        text("GAME OVER", 800, 400); 
        noLoop();
      }
    }else if(players == 2){
      if (hero_liv <= 0 && hero_liv_2 <= 0) {
        textSize(93); 
        text("GAME OVER", 800, 400); 
        noLoop();
      }else if (hero_liv < 0 && hero_liv_2 > 0){
        hero_liv_2 += hero_liv;
        hero_liv = 0;
      }else if (hero_liv > 0 && hero_liv_2 < 0){
        hero_liv += hero_liv_2;
        hero_liv_2 = 0;
      }
    }
  }
}
