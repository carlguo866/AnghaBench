
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Log_print (char*) ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_B_Null(void)
{
 if (devbug)
  Log_print("B: NULL");
}
