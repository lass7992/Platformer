void menu(){
      //tegner loading
    background(10);
    fill(200,200,200);
    textSize(93); 
    textAlign(CENTER, CENTER);
    text("Menu", screen_x/2, (screen_y*1)/3); 
   
    
    
        //play 1 button
    int [] play_1_knap;
    
    play_1_knap = new int[4];
    play_1_knap[0] = screen_x/2 - screen_x/10;
    play_1_knap[1] = (screen_y*2)/3;
    play_1_knap[2] = screen_x/8;
    play_1_knap[3] = screen_y/20;    
    
   
    fill(200,200,200);
    rect(play_1_knap[0]-(play_1_knap[2])/2,play_1_knap[1]-(play_1_knap[3])/2,play_1_knap[2],play_1_knap[3] );
    fill(0,0,0);
    textSize(30); 
    text("1 player", play_1_knap[0],play_1_knap[1]-4); 
    
    if(mousePressed == true && mouseX > play_1_knap[0]-(play_1_knap[2])/2 && mouseX < play_1_knap[0]+(play_1_knap[2])/2 && mouseY > play_1_knap[1]-(play_1_knap[3])/2 && mouseY < play_1_knap[1]+(play_1_knap[3])/2){
        menu_active = false;
        game_active = true;
        players = 1;
    }
    
        //play 2 button
    int [] play_2_knap;
    play_2_knap = new int[4];
    play_2_knap[0] = screen_x/2 + screen_x/10;
    play_2_knap[1] = (screen_y*2)/3;
    play_2_knap[2] = screen_x/8;
    play_2_knap[3] = screen_y/20;
        
        
    fill(200,200,200);
    rect(play_2_knap[0]-(play_2_knap[2])/2,play_2_knap[1]-(play_2_knap[3])/2,play_2_knap[2],play_2_knap[3] );
    fill(0,0,0);
    textSize(30); 
    text("2 player", play_2_knap[0],play_2_knap[1]-4); 
    
    if(mousePressed == true && mouseX > play_2_knap[0]-(play_2_knap[2])/2 && mouseX < play_2_knap[0]+(play_2_knap[2])/2 && mouseY > play_2_knap[1]-(play_2_knap[3])/2 && mouseY < play_2_knap[1]+(play_2_knap[3])/2){
        menu_active = false;
        game_active = true;
        players = 2;
    }
}
