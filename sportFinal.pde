int page=4;
PImage wait,back,img0, img1, img2, img3, img4, img5, img6, img7, img8, img9, img10;
PFont font1, font2;
String[] account;
String[] shop;
String[] trade;
String[] PeopleId;

int a;

int tennisN=0,swimN=0,gymN=0,tennisR=0,swimR=0,gymR=0;
int tennisM=0,tennisF=0,gymM=0,gymF=0,swimM=0,swimF=0;
int[] tennisC = {0,0,0,0,0,0};
int[] gymC = {0,0,0,0,0,0};
int[] swimC = {0,0,0,0,0,0};

int[] tennisA ={0,0,0,0,0};
int[] gymA ={0,0,0,0,0};
int[] swimA ={0,0,0,0,0};
void setup()
{
  size(1600,900);
  background(255);
  smooth();
  font1 = createFont("方正小标宋_GBK",20);
  font2 = createFont("微软雅黑",20);
  wait = loadImage("wait.png");
  image(wait,0,0);
  img0 = loadImage("11.png");
  img1 = loadImage("1.png");  
  img2 = loadImage("2.png");
  img3 = loadImage("3.png");
  img4 = loadImage("4.png");
  img5 = loadImage("5.png");
  img6 = loadImage("6.png");
  img7 = loadImage("7.png");
}

void draw()
{
  if(page==4 && millis()>3000)
    calculate();
  if(page==1)
  {
    drawGeneral();
  }
  if(page==2)
  {
    drawDiet();
  }
  if(page==3)
  {
    drawDrinks();
  }
  if(page==0)
  {
    drawWelcome();
  }
  if(page!=0&&page!=4)
    drawBar();
}