
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u_size; short* queue; short* distance; scalar_t__* pair_uv; short** adjacency; int* pair_vu; } ;
typedef TYPE_1__ BipartiteMatchState ;


 int Assert (int) ;
 short HK_INFINITY ;

__attribute__((used)) static bool
hk_breadth_search(BipartiteMatchState *state)
{
 int usize = state->u_size;
 short *queue = state->queue;
 short *distance = state->distance;
 int qhead = 0;
 int qtail = 0;
 int u;

 distance[0] = HK_INFINITY;

 for (u = 1; u <= usize; u++)
 {
  if (state->pair_uv[u] == 0)
  {
   distance[u] = 0;
   queue[qhead++] = u;
  }
  else
   distance[u] = HK_INFINITY;
 }

 while (qtail < qhead)
 {
  u = queue[qtail++];

  if (distance[u] < distance[0])
  {
   short *u_adj = state->adjacency[u];
   int i = u_adj ? u_adj[0] : 0;

   for (; i > 0; i--)
   {
    int u_next = state->pair_vu[u_adj[i]];

    if (distance[u_next] == HK_INFINITY)
    {
     distance[u_next] = 1 + distance[u];
     Assert(qhead < usize + 2);
     queue[qhead++] = u_next;
    }
   }
  }
 }

 return (distance[0] != HK_INFINITY);
}
