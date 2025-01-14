
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int comm; } ;


 unsigned int MAX_ERROR_COUNT ;
 TYPE_1__* current ;
 int dmatest_mismatch (int,int,unsigned int,unsigned int,int,int) ;
 int gen_inv_idx (unsigned int,int) ;
 int pr_warn (char*,int ,unsigned int) ;

__attribute__((used)) static unsigned int dmatest_verify(u8 **bufs, unsigned int start,
  unsigned int end, unsigned int counter, u8 pattern,
  bool is_srcbuf, bool is_memset)
{
 unsigned int i;
 unsigned int error_count = 0;
 u8 actual;
 u8 expected;
 u8 *buf;
 unsigned int counter_orig = counter;

 for (; (buf = *bufs); bufs++) {
  counter = counter_orig;
  for (i = start; i < end; i++) {
   actual = buf[i];
   expected = pattern | gen_inv_idx(counter, is_memset);
   if (actual != expected) {
    if (error_count < MAX_ERROR_COUNT)
     dmatest_mismatch(actual, pattern, i,
        counter, is_srcbuf,
        is_memset);
    error_count++;
   }
   counter++;
  }
 }

 if (error_count > MAX_ERROR_COUNT)
  pr_warn("%s: %u errors suppressed\n",
   current->comm, error_count - MAX_ERROR_COUNT);

 return error_count;
}
