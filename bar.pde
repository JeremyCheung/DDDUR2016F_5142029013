void drawBar()
{
  back();
  if(mouseX >= 150 && mouseX <= 650 && mouseY >= 50 && mouseY <= 200)
  {
    fill(0);
    stroke(0);    
    line(288,55,288,178);
    text("概况",298,140);
    image(img1,150,50);
    if (mousePressed){
      page = 1;
    }    
  }
  if(mouseX >= 650 && mouseX <= 950 && mouseY >= 50 && mouseY <= 200)
  {
    fill(0);
    stroke(0);
    line(788,55,788,178);
    text("食谱",798,140);
    image(img2,650,50);
    if (mousePressed){
      page = 2;
    }    
  }
  if(mouseX >= 1150 && mouseX <= 1600 && mouseY >= 50 && mouseY <= 200)
  {
    fill(0);
    stroke(0);
    line(1288,55,1288,178);
    text("饮料",1298,140);
    image(img3,1172,50);
    if (mousePressed){
      page = 3;
    }    
  }
}

void back()
{
  noStroke();
  fill(255);
  rect(0,0,1600,200);
  textSize(50);
  textAlign(BOTTOM);
  if(page==1)
  {
    fill(0);
    stroke(0);    
    line(288,55,288,178);
    text("概况",298,140);
    fill(150);
    stroke(150);
    image(img1,150,50);
    line(788,55,788,178);
    text("食谱",798,140);
    image(img5,650,50);
    line(1288,55,1288,178);
    text("饮料",1298,140);
    image(img6,1172,50);
  }
  if(page==2)
  {
    fill(0);
    stroke(0);
    line(788,55,788,178);
    text("食谱",798,140);
    fill(150);
    stroke(150);
    image(img2,650,50);
    line(288,55,288,178);
    text("概况",298,140);
    image(img4,150,50);    
    line(1288,55,1288,178);
    text("饮料",1298,140);
    image(img6,1172,50);
  }
  if(page==3)
  {
    fill(0);
    stroke(0);
    line(288,55,288,178);
    text("概况",298,140);
    fill(150);
    stroke(150);
    image(img4,150,50);
    line(788,55,788,178);
    text("食谱",798,140);
    image(img5,650,50);
    line(1288,55,1288,178);
    text("饮料",1298,140);
    image(img3,1172,50);
  }
}