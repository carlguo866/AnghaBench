
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PROSSYM_INFO ;


 int RosSymFreeMem (int ) ;

VOID
RosSymDelete(PROSSYM_INFO RosSymInfo)
{
  RosSymFreeMem(RosSymInfo);
}
