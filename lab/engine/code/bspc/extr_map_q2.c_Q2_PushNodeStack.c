
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*) ;
 size_t NODESTACKSIZE ;
 int* nodestack ;
 int* nodestackptr ;
 int nodestacksize ;

void Q2_PushNodeStack(int num)
{
 *nodestackptr = num;
 nodestackptr++;
 nodestacksize++;

 if (nodestackptr >= &nodestack[NODESTACKSIZE])
 {
  Error("Q2_PushNodeStack: stack overflow\n");
 }
}
