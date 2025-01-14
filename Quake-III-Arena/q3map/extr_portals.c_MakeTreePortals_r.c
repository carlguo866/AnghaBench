
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* mins; scalar_t__* maxs; scalar_t__ planenum; struct TYPE_6__** children; int * referencepoint; int tinyportals; } ;
typedef TYPE_1__ node_t ;


 int CalcNodeBounds (TYPE_1__*) ;
 scalar_t__ MAX_WORLD_COORD ;
 scalar_t__ MIN_WORLD_COORD ;
 int MakeNodePortal (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int SplitNodePortals (TYPE_1__*) ;
 int _printf (char*,...) ;

void MakeTreePortals_r (node_t *node)
{
 int i;

 CalcNodeBounds (node);
 if (node->mins[0] >= node->maxs[0])
 {
  _printf ("WARNING: node without a volume\n");
  _printf("node has %d tiny portals\n", node->tinyportals);
  _printf("node reference point %1.2f %1.2f %1.2f\n", node->referencepoint[0],
               node->referencepoint[1],
               node->referencepoint[2]);
 }

 for (i=0 ; i<3 ; i++)
 {
  if (node->mins[i] < MIN_WORLD_COORD || node->maxs[i] > MAX_WORLD_COORD)
  {
   _printf ("WARNING: node with unbounded volume\n");
   break;
  }
 }
 if (node->planenum == PLANENUM_LEAF)
  return;

 MakeNodePortal (node);
 SplitNodePortals (node);

 MakeTreePortals_r (node->children[0]);
 MakeTreePortals_r (node->children[1]);
}
