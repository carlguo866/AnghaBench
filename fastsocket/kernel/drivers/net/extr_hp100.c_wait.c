
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (int) ;

__attribute__((used)) static void wait(void)
{
 mdelay(1);
}
