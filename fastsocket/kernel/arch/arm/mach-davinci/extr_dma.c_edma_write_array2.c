
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edma_write (unsigned int,int,unsigned int) ;

__attribute__((used)) static inline void edma_write_array2(unsigned ctlr, int offset, int i, int j,
  unsigned val)
{
 edma_write(ctlr, offset + ((i*2 + j) << 2), val);
}
