
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 int BUG_ON (int) ;
 int memory_bm_find_bit (struct memory_bitmap*,unsigned long,void**,unsigned int*) ;
 int test_bit (unsigned int,void*) ;

__attribute__((used)) static int memory_bm_test_bit(struct memory_bitmap *bm, unsigned long pfn)
{
 void *addr;
 unsigned int bit;
 int error;

 error = memory_bm_find_bit(bm, pfn, &addr, &bit);
 BUG_ON(error);
 return test_bit(bit, addr);
}
