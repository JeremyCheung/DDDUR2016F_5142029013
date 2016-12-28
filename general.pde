int chart1=1,chart2=1,chart3=1;
void drawGeneral()
{
  background(255);
  String[] name1={"tennis","gym","swim"};
  String[] name2={"male","female"};
  String[] name3={"70后","80后","90后"};
  float[] data11={tennisN,gymN,swimN};
  float[] data12={tennisR,gymR,swimR};
  float[] data21={tennisM,tennisF};
  float[] data22={gymM,gymF};
  float[] data23={swimM,swimF};
  float[] data31={tennisA[1],tennisA[2],tennisA[3]};
  float[] data32={gymA[1],gymA[2],gymA[3]};
  float[] data33={swimA[1],swimA[2],swimA[3]};
   
  textSize(100);
  textAlign(CENTER);
  fill(0);
  if(chart1==1)
    pieChart(300,550,300,data11,name1);
  if(chart1==2)
    pieChart(300,550,300,data12,name1);
  if(chart2==1)
    pieChart(800,550,300,data21,name2);
  if(chart2==2)
    pieChart(800,550,300,data22,name2);
  if(chart2==3)
    pieChart(800,550,300,data23,name2);
  if(chart3==1)
    pieChart(1300,550,300,data31,name3);
  if(chart3==2)
    pieChart(1300,550,300,data32,name3);
  if(chart3==3)
    pieChart(1300,550,300,data33,name3);
  textSize(34);
  textAlign(CENTER);
  fill(0);
  text("人数",300,325);
  text("男女比例",800,325);
  text("年龄分布",1300,325);
  meunBar1(200.0,750.0,chart1);
  meunBar(660.0, 750.0, chart2);
  meunBar(1160.0, 750.0, chart3);
  if(mouseX>200&&mouseX<300&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(200,750,100,30,5);
    fill(0);
    text("人次",200+50,750+25);
    if(mousePressed)
    {
      chart1=1;
    }
  }
  if(mouseX>300&&mouseX<400&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(300,750,100,30,5);
    fill(0);
    text("人数",200+150,750+25);
    if(mousePressed)
    {
      chart1=2;
    }
  }
  
  if(mouseX>660&&mouseX<760&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(660,750,100,30,5);
    fill(0);
    text("tennis",660+50,750+25);
    if(mousePressed)
    {
      chart2=1;
    }
  }
  if(mouseX>760&&mouseX<860&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(760,750,100,30,5);
    fill(0);
    text("gym",660+150,750+25);
    if(mousePressed)
    {
      chart2=2;
    }
  }
  if(mouseX>860&&mouseX<960&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(860,750,100,30,5);
    fill(0);
    text("swim",660+250,750+25);
    if(mousePressed)
    {
      chart2=3;
    }
  }
  
  if(mouseX>1160&&mouseX<1260&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(1160,750,100,30,5);
    fill(0);
    text("tennis",1160+50,750+25);
    if(mousePressed)
    {
      chart3=1;
    }
  }
  if(mouseX>1260&&mouseX<1360&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(1260,750,100,30,5);
    fill(0);
    text("gym",1160+150,750+25);
    if(mousePressed)
    {
      chart3=2;
    }
  }
  if(mouseX>1360&&mouseX<1460&mouseY>750&&mouseY<780)
  {
    fill(255);
    rect(1360,750,100,30,5);
    fill(0);
    text("swim",1160+250,750+25);
    if(mousePressed)
    {
      chart3=3;
    }
  }
}
void pieChart(float pieX,float pieY,float diameter, float[] data,String[] name) {
  float lastAngle = 0;
  float[] angles = new float[data.length];
  float sum=0;
  for (int i = 0; i < data.length; i++) 
    sum+=data[i];
  for(int i=0;i<data.length;i++)
    angles[i]=data[i]/sum*360;
  for(int i = 0; i < data.length; i++) {
    noStroke();
    if(i==0)
      fill(0,129,204);
    if(i==1)
      fill(171,205,3);
    if(i==2)
      fill(219,202,202);
    rect(pieX+1.2*(diameter/2),pieY+diameter/2-(2*i+3)*0.1*diameter/1.5,diameter/10,diameter/10);
    arc(pieX, pieY, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
    textSize(diameter/10);
    textAlign(BOTTOM); 
    fill(0);
    text(name[i],pieX+1.2*(diameter/2)+diameter/8,pieY+diameter/2-(2*i+3)*0.1*diameter/1.5+diameter/10);
  }
}
void meunBar(float x,float y,int a)
{
  stroke(0);
  for(int i=0;i<3;i++)
  {
    if(a==i+1)
      fill(255);
    else
      fill(201,202,202);
    rect(x+i*100,y,100,30,5);
  }
  textSize(24);
  textAlign(CENTER);
  fill(0);
  text("tennis",x+50,y+25);
  text("gym",x+150,y+25);
  text("swim",x+250,y+25);
}
void meunBar1(float x,float y,int a)
{
  stroke(0);
  for(int i=0;i<2;i++)
  {
    if(a==i+1)
      fill(255);
    else
      fill(201,202,202);
    rect(x+i*100,y,100,30,5);
  }
  textSize(24);
  textAlign(CENTER);
  fill(0);
  text("人次",x+50,y+25);
  text("人数",x+150,y+25);
}