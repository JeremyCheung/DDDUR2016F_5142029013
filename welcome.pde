void drawWelcome()
{
  background(255);
  
  image(img0,0,0);
  
  noFill();
  stroke(#43b68f);
  rect(700,810,200,50,5);
  textFont(font1);
  textSize(24);
  textAlign(CENTER);
  text("点 击 进 入",width/2,843);
  
  fill(#43b68f);
  textSize(30);
  text("运动  |  生活  |  数据",  width/2,740);
  if(mouseX >= 700 && mouseX <= 900 && mouseY >= 810 && mouseY <= 860){
    fill(#43b68f);
    stroke(#43b68f);
    rect(700,810,200,50,5);
  
    textFont(font1);
    textSize(24);
    textAlign(CENTER);
    fill(255,255,255);
    text("点 击 进 入",width/2,843);
    
    if (mousePressed){
      page = 1;
    }
  }
}