
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_status; } ;
struct block_desc {TYPE_1__ h1; } ;


 int TP_STATUS_USER ;
 int __v3_test_block_seq_num (struct block_desc*) ;
 int exit (int) ;
 int fprintf (int ,char*,int const) ;
 int stderr ;

__attribute__((used)) static void __v3_test_block_header(struct block_desc *pbd, const int block_num)
{
 if ((pbd->h1.block_status & TP_STATUS_USER) == 0) {
  fprintf(stderr, "\nblock %u: not in TP_STATUS_USER\n", block_num);
  exit(1);
 }

 __v3_test_block_seq_num(pbd);
}
