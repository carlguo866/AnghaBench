
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char DO ;
 unsigned char DONT ;
 unsigned char IAC ;
 unsigned char WILL ;
 unsigned char WONT ;
 int atomicio (int ,int,unsigned char*,int) ;
 int vwrite ;
 int warn (char*) ;

void
atelnet(int nfd, unsigned char *buf, unsigned int size)
{
 unsigned char *p, *end;
 unsigned char obuf[4];

 if (size < 3)
  return;
 end = buf + size - 2;

 for (p = buf; p < end; p++) {
  if (*p != IAC)
   continue;

  obuf[0] = IAC;
  p++;
  if ((*p == WILL) || (*p == WONT))
   obuf[1] = DONT;
  else if ((*p == DO) || (*p == DONT))
   obuf[1] = WONT;
  else
   continue;

  p++;
  obuf[2] = *p;
  if (atomicio(vwrite, nfd, obuf, 3) != 3)
   warn("Write Error!");
 }
}
