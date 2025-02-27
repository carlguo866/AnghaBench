
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int CHECK (int,char*,char*,int,int,int ) ;
 int NR_RESULTS ;
 int bpf_map_lookup_elem (int ,int*,int*) ;
 int errno ;
 int* expected_results ;
 int get_linum () ;
 int printf (char*,...) ;
 int result_map ;

__attribute__((used)) static void check_results(void)
{
 __u32 results[NR_RESULTS];
 __u32 i, broken = 0;
 int err;

 for (i = 0; i < NR_RESULTS; i++) {
  err = bpf_map_lookup_elem(result_map, &i, &results[i]);
  CHECK(err == -1, "lookup_elem(result_map)",
        "i:%u err:%d errno:%d\n", i, err, errno);
 }

 for (i = 0; i < NR_RESULTS; i++) {
  if (results[i] != expected_results[i]) {
   broken = i;
   break;
  }
 }

 if (i == NR_RESULTS)
  return;

 printf("unexpected result\n");
 printf(" result: [");
 printf("%u", results[0]);
 for (i = 1; i < NR_RESULTS; i++)
  printf(", %u", results[i]);
 printf("]\n");

 printf("expected: [");
 printf("%u", expected_results[0]);
 for (i = 1; i < NR_RESULTS; i++)
  printf(", %u", expected_results[i]);
 printf("]\n");

 CHECK(expected_results[broken] != results[broken],
       "unexpected result",
       "expected_results[%u] != results[%u] bpf_prog_linum:%u\n",
       broken, broken, get_linum());
}
