class enemy{
  int xpos, ypos, speed, dir, hp, hp_max;
  String type;
  
  enemy( String temp_type, int temp_speed, int temp_hp){
    if(random(1) >= 0.5){xpos = 100;}else {xpos = 700;}
    ypos = 100;
    speed = temp_speed;
    type = temp_type;
    if(random(1) >= 0.5){dir = 1;}else {dir = -1;}
    hp = temp_hp;
    hp_max = hp;
    
  }
  
  void update(){

    if(xpos > bane_x_length+230){ // rykker monsteret ind på skærmen 
      xpos -= bane_x_length+230;
    }
    if(xpos < 0){ // rykker monsteret ind på skærmen 
      xpos += bane_x_length+230;
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
    rect(xpos-25,ypos-40,(float(hp)/hp_max)*50,10);
  }
}
