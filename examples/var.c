int x;

int i = 333;

int 
foo() 
{
   int i = 1;
   
   return i + x;
}

void
bar()
{
   if(x < 10) {
      x++;
   }
}

int foobar()
{
   bar();
   return(i);
}

