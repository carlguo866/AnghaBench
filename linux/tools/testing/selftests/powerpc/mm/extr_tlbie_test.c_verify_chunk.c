
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RIM_CHUNK_SIZE ;
 char* compute_chunk_start_addr (unsigned int) ;
 unsigned int compute_store_pattern (unsigned int,unsigned int*,unsigned int) ;
 int dcbf (unsigned int volatile*) ;
 int end_verification_log (unsigned int,int) ;
 int log_anamoly (unsigned int,unsigned int*,unsigned int,unsigned int) ;
 int start_verification_log (unsigned int,unsigned int*,unsigned int,unsigned int) ;

__attribute__((used)) static void verify_chunk(unsigned int tid, unsigned int *next_store_addr,
    unsigned int cur_sweep_id,
    unsigned int prev_sweep_id)
{
 unsigned int *iter_ptr;
 unsigned int size = RIM_CHUNK_SIZE;
 unsigned int expected;
 unsigned int observed;
 char *chunk_start = compute_chunk_start_addr(tid);

 int nr_anamolies = 0;

 start_verification_log(tid, next_store_addr,
          cur_sweep_id, prev_sweep_id);

 for (iter_ptr = (unsigned int *)chunk_start;
      (unsigned long)iter_ptr < (unsigned long)chunk_start + size;
      iter_ptr++) {
  unsigned int expected_sweep_id;

  if (iter_ptr < next_store_addr) {
   expected_sweep_id = cur_sweep_id;
  } else {
   expected_sweep_id = prev_sweep_id;
  }

  expected = compute_store_pattern(tid, iter_ptr, expected_sweep_id);

  dcbf((volatile unsigned int*)iter_ptr);
  observed = *iter_ptr;

         if (observed != expected) {
   nr_anamolies++;
   log_anamoly(tid, iter_ptr, expected, observed);
  }
 }

 end_verification_log(tid, nr_anamolies);
}
