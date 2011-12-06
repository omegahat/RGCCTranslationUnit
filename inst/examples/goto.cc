int
foo(int n)
{

  if(n > 0)
    goto myLabel;
  else
    goto otherLabel;


 myLabel:
  return(1);

 otherLabel:
  return(2);

}

int
bar(int n)
{
  int two = 1;
  two++;
  return( n / two );
}
