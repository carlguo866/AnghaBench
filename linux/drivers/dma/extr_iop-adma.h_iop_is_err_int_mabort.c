
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_chan {int dummy; } ;


 int test_bit (int,unsigned long*) ;

__attribute__((used)) static inline int
iop_is_err_int_mabort(unsigned long status, struct iop_adma_chan *chan)
{
 return test_bit(5, &status);
}
