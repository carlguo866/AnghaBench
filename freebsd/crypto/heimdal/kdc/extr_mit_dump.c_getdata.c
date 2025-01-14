
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* nexttoken (char**) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static size_t
getdata(char **p, unsigned char *buf, size_t len)
{
    size_t i;
    int v;
    char *q = nexttoken(p);
    i = 0;
    while(*q && i < len) {
 if(sscanf(q, "%02x", &v) != 1)
     break;
 buf[i++] = v;
 q += 2;
    }
    return i;
}
