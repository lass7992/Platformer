class enemy{
  int xpos, ypos, speed, dir, hp, hp_max;
  String type;
  
  enemy(int x, int y, String temp_type, int temp_speed, int temp_dir, int temp_hp){
    xpos = x;
    ypos = y;
    speed = temp_speed;
    type = temp_type;
    dir = temp_dir;
    hp = temp_hp;
    hp_max = hp;
    
  }
  
  void update(){

    if(xpos > bane_x_length+250){ // rykker monsteret ind på skærmen 
      xpos -= bane_x_length+250;
    }
    if(ypos > bane_y_length+250){ // rykker monsteret ind på skærmen 
      ypos -= bane_y_length+250;
      xpos = 100;
    }
    
    if(collision_down(xpos,ypos-14) == true){
      ypos += 8;
    }else{
      xpos += dir*speed;
    }
    
    //mister liv hvis den rør et skud
    if(Collision_skud(xpos,ypos) == true){
      hp -= 10;
    }
    
    draw();
  }
  
  void draw(){
    if(type == "normal"){
      fill(100,200,100);
    }
    else{
      fill(200,100,100);
    }
    
    ellipse(xpos,ypos,50,50);
    fill(0,255,0);
    rect(xpos-25,ypos-40,int((hp/hp_max))*50,10);
  }
}
