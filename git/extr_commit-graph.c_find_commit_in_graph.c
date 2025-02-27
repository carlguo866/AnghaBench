
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct commit_graph {scalar_t__ num_commits_in_base; struct commit_graph* base_graph; } ;
struct TYPE_2__ {int oid; } ;
struct commit {scalar_t__ graph_pos; TYPE_1__ object; } ;


 scalar_t__ COMMIT_NOT_FROM_GRAPH ;
 int bsearch_graph (struct commit_graph*,int *,scalar_t__*) ;

__attribute__((used)) static int find_commit_in_graph(struct commit *item, struct commit_graph *g, uint32_t *pos)
{
 if (item->graph_pos != COMMIT_NOT_FROM_GRAPH) {
  *pos = item->graph_pos;
  return 1;
 } else {
  struct commit_graph *cur_g = g;
  uint32_t lex_index;

  while (cur_g && !bsearch_graph(cur_g, &(item->object.oid), &lex_index))
   cur_g = cur_g->base_graph;

  if (cur_g) {
   *pos = lex_index + cur_g->num_commits_in_base;
   return 1;
  }

  return 0;
 }
}
