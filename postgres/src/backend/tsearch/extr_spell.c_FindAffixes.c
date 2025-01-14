
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_6__ {int length; TYPE_1__* data; scalar_t__ isvoid; } ;
struct TYPE_5__ {scalar_t__ val; TYPE_2__* node; scalar_t__ naff; } ;
typedef TYPE_1__ AffixNodeData ;
typedef TYPE_2__ AffixNode ;


 scalar_t__ GETWCHAR (char const*,int,int,int) ;

__attribute__((used)) static AffixNodeData *
FindAffixes(AffixNode *node, const char *word, int wrdlen, int *level, int type)
{
 AffixNodeData *StopLow,
      *StopHigh,
      *StopMiddle;
 uint8 symbol;

 if (node->isvoid)
 {
  if (node->data->naff)
   return node->data;
  node = node->data->node;
 }

 while (node && *level < wrdlen)
 {
  StopLow = node->data;
  StopHigh = node->data + node->length;
  while (StopLow < StopHigh)
  {
   StopMiddle = StopLow + ((StopHigh - StopLow) >> 1);
   symbol = GETWCHAR(word, wrdlen, *level, type);

   if (StopMiddle->val == symbol)
   {
    (*level)++;
    if (StopMiddle->naff)
     return StopMiddle;
    node = StopMiddle->node;
    break;
   }
   else if (StopMiddle->val < symbol)
    StopLow = StopMiddle + 1;
   else
    StopHigh = StopMiddle;
  }
  if (StopLow >= StopHigh)
   break;
 }
 return ((void*)0);
}
