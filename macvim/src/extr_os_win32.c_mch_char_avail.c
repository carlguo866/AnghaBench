
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WaitForChar (long) ;

int
mch_char_avail(void)
{
    return WaitForChar(0L);
}
