
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ planenum; int cluster; int area; TYPE_1__* brushlist; scalar_t__ areaportal; scalar_t__ opaque; struct TYPE_6__** children; } ;
typedef TYPE_2__ node_t ;
struct TYPE_7__ {int* portalareas; int brushnum; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_5__ {TYPE_3__* original; } ;


 scalar_t__ PLANENUM_LEAF ;
 int _printf (char*,int) ;

void CheckAreas_r (node_t *node)
{
 bspbrush_t *b;

 if (node->planenum != PLANENUM_LEAF)
 {
  CheckAreas_r (node->children[0]);
  CheckAreas_r (node->children[1]);
  return;
 }

 if (node->opaque)
  return;

 if (node->cluster != -1)
  if (node->area == -1)
   _printf("WARNING: cluster %d has area set to -1\n", node->cluster);
 if (node->areaportal)
 {
  b = node->brushlist->original;


  if (b->portalareas[0] == -1 || b->portalareas[1] == -1)
   _printf ("WARNING: areaportal brush %i doesn't touch two areas\n", b->brushnum);
 }
}
