
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int redirectArgs ;
 scalar_t__ systemf (char*,int ) ;

int
canLz4(void)
{
 static int tested = 0, value = 0;
 if (!tested) {
  tested = 1;
  if (systemf("lz4 -V %s", redirectArgs) == 0)
   value = 1;
 }
 return (value);
}
