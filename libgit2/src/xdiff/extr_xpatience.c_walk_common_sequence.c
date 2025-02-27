
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int submap ;
struct hashmap {int env; int xpp; int file2; int file1; } ;
struct entry {int line1; int line2; struct entry* next; } ;


 scalar_t__ match (struct hashmap*,int,int) ;
 int memset (struct hashmap*,int ,int) ;
 scalar_t__ patience_diff (int ,int ,int ,int ,int,int,int,int) ;

__attribute__((used)) static int walk_common_sequence(struct hashmap *map, struct entry *first,
  int line1, int count1, int line2, int count2)
{
 int end1 = line1 + count1, end2 = line2 + count2;
 int next1, next2;

 for (;;) {

  if (first) {
   next1 = first->line1;
   next2 = first->line2;
   while (next1 > line1 && next2 > line2 &&
     match(map, next1 - 1, next2 - 1)) {
    next1--;
    next2--;
   }
  } else {
   next1 = end1;
   next2 = end2;
  }
  while (line1 < next1 && line2 < next2 &&
    match(map, line1, line2)) {
   line1++;
   line2++;
  }


  if (next1 > line1 || next2 > line2) {
   struct hashmap submap;

   memset(&submap, 0, sizeof(submap));
   if (patience_diff(map->file1, map->file2,
     map->xpp, map->env,
     line1, next1 - line1,
     line2, next2 - line2))
    return -1;
  }

  if (!first)
   return 0;

  while (first->next &&
    first->next->line1 == first->line1 + 1 &&
    first->next->line2 == first->line2 + 1)
   first = first->next;

  line1 = first->line1 + 1;
  line2 = first->line2 + 1;

  first = first->next;
 }
}
