
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int (* gen_syndrome ) (int,size_t,void**) ;} ;


 TYPE_1__ raid6_call ;
 scalar_t__ raid6_empty_zero_page ;
 size_t* raid6_gfexi ;
 size_t* raid6_gfexp ;
 size_t* raid6_gfinv ;
 size_t** raid6_gfmul ;
 int stub1 (int,size_t,void**) ;
 int xor_block (size_t*,size_t*) ;

__attribute__((used)) static void raid6_2data_recov_s390xc(int disks, size_t bytes, int faila,
  int failb, void **ptrs)
{
 u8 *p, *q, *dp, *dq;
 const u8 *pbmul;
 const u8 *qmul;
 int i;

 p = (u8 *)ptrs[disks-2];
 q = (u8 *)ptrs[disks-1];




 dp = (u8 *)ptrs[faila];
 ptrs[faila] = (void *)raid6_empty_zero_page;
 ptrs[disks-2] = dp;
 dq = (u8 *)ptrs[failb];
 ptrs[failb] = (void *)raid6_empty_zero_page;
 ptrs[disks-1] = dq;

 raid6_call.gen_syndrome(disks, bytes, ptrs);


 ptrs[faila] = dp;
 ptrs[failb] = dq;
 ptrs[disks-2] = p;
 ptrs[disks-1] = q;


 pbmul = raid6_gfmul[raid6_gfexi[failb-faila]];
 qmul = raid6_gfmul[raid6_gfinv[raid6_gfexp[faila]^raid6_gfexp[failb]]];


 while (bytes) {
  xor_block(dp, p);
  xor_block(dq, q);
  for (i = 0; i < 256; i++)
   dq[i] = pbmul[dp[i]] ^ qmul[dq[i]];
  xor_block(dp, dq);
  p += 256;
  q += 256;
  dp += 256;
  dq += 256;
  bytes -= 256;
 }
}
