
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,int) ;

void
XX_Exit(int status)
{

 panic("NetCommSW: Exit called with status %i", status);
}
