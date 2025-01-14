
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 int ARRAY_SIZE (unsigned int**) ;
 int MAX_ALT ;
 unsigned int** event_alternatives ;

__attribute__((used)) static int find_alternatives_list(u64 event)
{
 int i, j;
 unsigned int alt;

 for (i = 0; i < ARRAY_SIZE(event_alternatives); ++i) {
  if (event < event_alternatives[i][0])
   return -1;
  for (j = 0; j < MAX_ALT; ++j) {
   alt = event_alternatives[i][j];
   if (!alt || event < alt)
    break;
   if (event == alt)
    return i;
  }
 }
 return -1;
}
