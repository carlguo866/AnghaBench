
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counters {double* vals; double sum; } ;


 struct counters* find_counter (struct counters*,char*) ;
 int printf (char*,double) ;

__attribute__((used)) static int
splitstore_sb(struct counters *cpu, int pos)
{

 int ret;
 struct counters *mem_split;
 struct counters *mem_stores;
 double memsplit, memstore, res;
 mem_split = find_counter(cpu, "MEM_UOP_RETIRED.SPLIT_STORES");
 mem_stores = find_counter(cpu, "MEM_UOP_RETIRED.ALL_STORES");
 if (pos != -1) {
  memsplit = mem_split->vals[pos] * 1.0;
  memstore = mem_stores->vals[pos] * 1.0;
 } else {
  memsplit = mem_split->sum * 1.0;
  memstore = mem_stores->sum * 1.0;
 }
 res = memsplit/memstore;
 ret = printf("%1.3f", res);
 return(ret);
}
