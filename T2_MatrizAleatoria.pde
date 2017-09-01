matriz pixeles;
matriz pixeles2;

void setup()
{
  size(400,400);
  pixeles= new matriz (5,100,65,50,0,0);
  pixeles2= new matriz(5,100,230,50,0,0);
}

void draw()
{
  background(255);
  pixeles.zoom();
  pixeles.display();
  pixeles2.zoom();
  pixeles2.display();
}

class matriz
{
  int t, u, x, y, i, j;
  
  matriz(int t_, int u_, int x_, int y_, int i_, int j_)
  {
    t=t_;
    u=u_;
    x=x_;
    y=y_;
    i=i_;
    j=j_;
  }
  
  void zoom()
  {
    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x))
    {
    t= 10;
    }
    else 
    {
    t= 5;
    }

    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x)) 
    {
    t= 10;
    }
    else 
    {
    t= 5;
    }
  }
  
  void display()
  {
    for (i = 0; i<u; i+=t)
    {
      for (j = 0; j<u; j+=t)
      {
        fill (random(255));
        rect (x+i,y+j,t,t);
      }
    } 
  }
}