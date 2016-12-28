int chart=1;
void drawDiet()
{
  String[] b={"一餐","二餐","三餐","四餐","五餐","六餐"};
  background(255);
  stroke(0);
  strokeWeight(3);
  line(100,700,1500,700);
  line(100,700,100,300);
  line(100,300,90,320);
  line(100,300,110,320);
  line(1500,700,1480,690);
  line(1500,700,1480,710);
  int[] data1= new int[6];
  int[] data2= new int[6];
  int[] data3= new int[6];
  
  for(int i=0;i<6;i++)
  {
    data1[i]=tennisC[i]*400/7000;
    data2[i]=gymC[i]*400/22900;
    data3[i]=swimC[i]*400/70000;
    //println(data3[i]);
  }
  for(int i=0;i<6;i++)
  {
    fill(0,129,204);
    if(chart==1)
      rect(204+i*216,700,112,-data1[i]);
    if(chart==2)
      rect(204+i*216,700,112,-data2[i]);
    if(chart==3)
      rect(204+i*216,700,112,-data3[i]);
    textSize(34);
    textAlign(CENTER);
    fill(0);
    text(b[i],260+i*216,750);
    text("次数",55,350);
  }
  
  meunBar(650,800,chart);
  if(mouseX>650&&mouseX<750&mouseY>800&&mouseY<830)
  {
    fill(255);
    rect(650,800,100,30,5);
    fill(0);
    text("tennis",650+50,800+25);
    if(mousePressed)
    {
      chart=1;
    }
  }
  if(mouseX>750&&mouseX<850&mouseY>800&&mouseY<830)
  {
    fill(255);
    rect(750,800,100,30,5);
    fill(0);
    text("gym",650+150,800+25);
    if(mousePressed)
    {
      chart=2;
    }
  }
  if(mouseX>850&&mouseX<950&mouseY>800&&mouseY<830)
  {
    fill(255);
    rect(850,800,100,30,5);
    fill(0);
    text("swim",650+250,800+25);
    if(mousePressed)
    {
      chart=3;
    }
  }
}