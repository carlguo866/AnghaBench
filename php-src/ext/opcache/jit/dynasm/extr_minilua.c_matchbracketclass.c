
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ match_class (int,int) ;
 int uchar (char const) ;

__attribute__((used)) static int matchbracketclass(int c,const char*p,const char*ec){
int sig=1;
if(*(p+1)=='^'){
sig=0;
p++;
}
while(++p<ec){
if(*p=='%'){
p++;
if(match_class(c,uchar(*p)))
return sig;
}
else if((*(p+1)=='-')&&(p+2<ec)){
p+=2;
if(uchar(*(p-2))<=c&&c<=uchar(*p))
return sig;
}
else if(uchar(*p)==c)return sig;
}
return!sig;
}
