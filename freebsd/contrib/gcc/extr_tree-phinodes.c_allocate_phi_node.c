
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct tree_phi_node {int dummy; } ;
struct phi_arg_d {int dummy; } ;


 int NUM_BUCKETS ;
 int PHI_ARG_CAPACITY (scalar_t__) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ free_phinode_count ;
 scalar_t__* free_phinodes ;
 scalar_t__ ggc_alloc (int) ;
 scalar_t__ phi_kind ;
 int phi_nodes_created ;
 int phi_nodes_reused ;
 int * tree_node_counts ;
 int* tree_node_sizes ;

__attribute__((used)) static inline tree
allocate_phi_node (int len)
{
  tree phi;
  int bucket = NUM_BUCKETS - 2;
  int size = (sizeof (struct tree_phi_node)
       + (len - 1) * sizeof (struct phi_arg_d));

  if (free_phinode_count)
    for (bucket = len - 2; bucket < NUM_BUCKETS - 2; bucket++)
      if (free_phinodes[bucket])
 break;


  if (bucket < NUM_BUCKETS - 2
      && PHI_ARG_CAPACITY (free_phinodes[bucket]) >= len)
    {
      free_phinode_count--;
      phi = free_phinodes[bucket];
      free_phinodes[bucket] = PHI_CHAIN (free_phinodes[bucket]);



    }
  else
    {
      phi = ggc_alloc (size);





    }

  return phi;
}
