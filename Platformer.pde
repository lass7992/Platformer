//game changer
int max_hero = 3;
int max_baner = 2;

Player Player_1;
Player Player_2;



void setup() {  
  size(10, 10);
  surface.setSize(screen_x, screen_y);
  frameRate(60);
  
  Player_1 = new Player();
  Player_1.new_Hero();  
  
  start_();
  

}


void draw() {
  
  if(menu_active == true){
    game_active = false;
    menu(); 

      if(players == 2){
        //loader helte
        Player_2 = new Player();
        Player_2.new_Hero();  
    }
  }
  
  
  if(game_active == true){
    //controllers and checkers
    Time_Controllers();
    

    
  
  
  
      //drawing
    draw_game();
    
    Player_1.update();
    
    if(players == 2){
      Player_2.update();
    }
  
  
  ///// TODOD
    if(players == 1){
      if (Player_1.hero_liv == 0) {
        textSize(93); 
        text("GAME OVER", 800, 400); 
        noLoop();
      }
    }else if(players == 2){
      if (Player_1.hero_liv <= 0 && Player_2.hero_liv  <= 0) {
        textSize(93); 
        text("GAME OVER", 800, 400); 
        noLoop();
      }else if (Player_1.hero_liv  < 0 && Player_2.hero_liv  > 0){
        Player_2.hero_liv  += Player_1.hero_liv ;
        Player_1.hero_liv  = 0;
      }else if (Player_1.hero_liv  > 0 && Player_2.hero_liv  < 0){
        Player_1.hero_liv  += Player_2.hero_liv ;
        Player_2.hero_liv  = 0;
      }
    }
  }
}
