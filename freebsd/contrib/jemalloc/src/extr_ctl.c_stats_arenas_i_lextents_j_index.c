
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int ctl_named_node_t ;


 size_t NBINS ;
 size_t NSIZES ;
 int const* super_stats_arenas_i_lextents_j_node ;

__attribute__((used)) static const ctl_named_node_t *
stats_arenas_i_lextents_j_index(tsdn_t *tsdn, const size_t *mib, size_t miblen,
    size_t j) {
 if (j > NSIZES - NBINS) {
  return ((void*)0);
 }
 return super_stats_arenas_i_lextents_j_node;
}
