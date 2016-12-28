void calculate()
{
  println("culating");
  account = loadStrings("account.txt");
  String[] card=new String[account.length];
  String[] gender=new String[account.length];
  String[] swimAc=new String[5734];
  String[] gymAc=new String[2186];
  String[] tennisAc=new String[529];
  int[] birth=new int[account.length];

  for(int i=0;i<account.length;i++)
  {
    String[] line = splitTokens(account[i]);
    card[i]=line[0];
    gender[i]=line[2];
    birth[i]=Integer.parseInt(line[3]);
  }
  
  
  shop=loadStrings("merchant.txt");
  int[] jk = {0,0,0,0,0,0};
  String[] canteen1 = new String[19];
  String[] canteen2 = new String[25];
  String[] canteen3 = new String[10];
  String[] canteen4 = new String[44];
  String[] canteen5 = new String[10];
  String[] canteen6 = new String[6];
  for(int i=0;i<shop.length;i++)
  {
    String[] line = splitTokens(shop[i]);
    if(line[1].indexOf("一")!=-1)
    {
      canteen1[jk[0]] = line[2];
      jk[0]++;
    }
    if(line[1].indexOf("二")!=-1)
    {
      canteen2[jk[1]] = line[2];
      jk[1]++;
    }
    if(line[1].indexOf("三")!=-1)
    {
      canteen3[jk[2]] = line[2];
      jk[2]++;
    }
    if(line[1].indexOf("四")!=-1)
    {
      canteen4[jk[3]] = line[2];
      jk[3]++;
    }if(line[1].indexOf("五")!=-1)
    {
      canteen5[jk[4]] = line[2];
      jk[4]++;
    }
    if(line[1].indexOf("六")!=-1)
    {
      canteen6[jk[5]] = line[2];
      jk[5]++;
    }
  }
  jk[0]=jk[1]=jk[2]=0;
  
  int[] gym = new int[account.length];
  int[] swim = new int[account.length];
  int[] tennis = new int[account.length];
  for(int i=0;i<account.length;i++)
  {
    gym[i]=swim[i]=tennis[i]=0;
  }
  
  trade = loadStrings("trade.txt");
  for(int i=0;i<trade.length;i++)
  {
    String[] line = splitTokens(trade[i]); 
    String merchant = line[1];
    String student = line[0];
    
    if(merchant.equals("1000190") || merchant.equals("1000191"))
    {
      gymN++;
      for(int j=0;j<account.length;j++)
      {
        if(card[j].equals(student))
          gym[j]++;
      }
    }
    
    if(merchant.equals("1000193"))
    {
      tennisN++;
      for(int j=0;j<account.length;j++)
      {
        if(card[j].equals(student))
          tennis[j]++;
      }
    }
    
    if(merchant.equals("1000236") || merchant.equals("1000240"))
    {
      swimN++;
      for(int j=0;j<account.length;j++)
      {
        if(card[j].equals(student))
          swim[j]++;
      }
    }
    
    
  }
  println(gymN,tennisN,swimN);
  println(swimN*1.0/(swimN+tennisN+gymN));
  
  
  for(int i=0;i<account.length;i++)
  {
    String[] line = splitTokens(account[i]);
    if(tennis[i]!=0)
    {
      tennisAc[jk[0]]=line[0];
      jk[0]++;
      tennisR++;
      if(gender[i].equals("男"))
        tennisM++;
      else
        tennisF++;
      if(birth[i]<1970)
        tennisA[0]++;
      else if(birth[i]<1980)
        tennisA[1]++;
      else if(birth[i]<1990)
        tennisA[2]++;
      else if(birth[i]<2000)
        tennisA[3]++;
      else
        tennisA[4]++;
    }
    if(swim[i]!=0)
    {
      swimAc[jk[1]]=line[0];
      jk[1]++;
      swimR++;
      if(gender[i].equals("男"))
        swimM++;
      else
        swimF++;
      if(birth[i]<1970)
        swimA[0]++;
      else if(birth[i]<1980)
        swimA[1]++;
      else if(birth[i]<1990)
        swimA[2]++;
      else if(birth[i]<2000)
        swimA[3]++;
      else
        swimA[4]++;
    }
    if(gym[i]!=0)
    {
      gymAc[jk[2]]=line[0];
      jk[2]++;
      gymR++;
      if(gender[i].equals("男"))
        gymM++;
      else
        gymF++;
      if(birth[i]<1970)
        gymA[0]++;
      else if(birth[i]<1980)
        gymA[1]++;
      else if(birth[i]<1990)
        gymA[2]++;
      else if(birth[i]<2000)
        gymA[3]++;
      else
        gymA[4]++;
    }
  }
  
  println(gymR,tennisR,swimR);
  println(tennisM,tennisF,swimM,swimF,gymM,gymF);
  
  for(int i=0;i<trade.length/20;i++)
  {
    String[] line = splitTokens(trade[i]);
    for(int j=0;j<gymAc.length;j++)
    {
      if(line[0].equals(gymAc[j]))
      {
        for(int k=0;k<canteen1.length;k++)
          if(line[1].equals(canteen1[k]))
            gymC[0]++;
        for(int k=0;k<canteen2.length;k++)
          if(line[1].equals(canteen2[k]))
            gymC[1]++;
        for(int k=0;k<canteen3.length;k++)
          if(line[1].equals(canteen3[k]))
            gymC[2]++;
        for(int k=0;k<canteen4.length;k++)
          if(line[1].equals(canteen4[k]))
            gymC[3]++;
        for(int k=0;k<canteen5.length;k++)
          if(line[1].equals(canteen5[k]))
            gymC[4]++;
        for(int k=0;k<canteen6.length;k++)
          if(line[1].equals(canteen6[k]))
            gymC[5]++;
      }
    }
    
    for(int j=0;j<swimAc.length;j++)
    {
      if(line[0].equals(swimAc[j]))
      {
        for(int k=0;k<canteen1.length;k++)
          if(line[1].equals(canteen1[k]))
            swimC[0]++;
        for(int k=0;k<canteen2.length;k++)
          if(line[1].equals(canteen2[k]))
            swimC[1]++;
        for(int k=0;k<canteen3.length;k++)
          if(line[1].equals(canteen3[k]))
            swimC[2]++;
        for(int k=0;k<canteen4.length;k++)
          if(line[1].equals(canteen4[k]))
            swimC[3]++;
        for(int k=0;k<canteen5.length;k++)
          if(line[1].equals(canteen5[k]))
            swimC[4]++;
        for(int k=0;k<canteen6.length;k++)
          if(line[1].equals(canteen6[k]))
            swimC[5]++;
      }
    }
    
    for(int j=0;j<tennisAc.length;j++)
    {
      if(line[0].equals(tennisAc[j]))
      {
        for(int k=0;k<canteen1.length;k++)
          if(line[1].equals(canteen1[k]))
            tennisC[0]++;
        for(int k=0;k<canteen2.length;k++)
          if(line[1].equals(canteen2[k]))
            tennisC[1]++;
        for(int k=0;k<canteen3.length;k++)
          if(line[1].equals(canteen3[k]))
            tennisC[2]++;
        for(int k=0;k<canteen4.length;k++)
          if(line[1].equals(canteen4[k]))
            tennisC[3]++;
        for(int k=0;k<canteen5.length;k++)
          if(line[1].equals(canteen5[k]))
            tennisC[4]++;
        for(int k=0;k<canteen6.length;k++)
          if(line[1].equals(canteen6[k]))
            tennisC[5]++;
      }
    }
  }
  
  
  for(int i=0;i<5;i++)
    println(tennisA[i],swimA[i],gymA[i]);
  for(int i=0;i<6;i++)
    println(tennisC[i],swimC[i],gymC[i]);
  page=0;
}