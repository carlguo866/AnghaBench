
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char const) ;
 int strlen (char const*) ;
 int yyerror (char*) ;

__attribute__((used)) static long
name2number(const char *str)
{
    const char *p;
    long num = 0;
    const char *x = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 "abcdefghijklmnopqrstuvwxyz0123456789_";
    if(strlen(str) > 4) {
 yyerror("table name too long");
 return 0;
    }
    for(p = str; *p; p++){
 char *q = strchr(x, *p);
 if(q == ((void*)0)) {
     yyerror("invalid character in table name");
     return 0;
 }
 num = (num << 6) + (q - x) + 1;
    }
    num <<= 8;
    if(num > 0x7fffffff)
 num = -(0xffffffff - num + 1);
    return num;
}
