
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct cplbinfo_data {size_t pos; size_t switched; TYPE_1__* tbl; } ;
typedef size_t loff_t ;
struct TYPE_2__ {unsigned long addr; unsigned long data; } ;


 unsigned long CPLB_SUPV_WR ;
 unsigned long CPLB_USER_RD ;
 unsigned long CPLB_USER_WR ;
 int seq_printf (struct seq_file*,char*,int,unsigned long,unsigned long,int ,char,char,char,char) ;
 int strpage (unsigned long) ;

__attribute__((used)) static int cplbinfo_show(struct seq_file *m, void *p)
{
 struct cplbinfo_data *cdata;
 unsigned long data, addr;
 loff_t pos;

 cdata = p;
 pos = cdata->pos;
 addr = cdata->tbl[pos].addr;
 data = cdata->tbl[pos].data;

 seq_printf(m,
  "%d\t0x%08lx\t%05lx\t%s\t%c\t%c\t%c\t%c\n",
  (int)pos, addr, data, strpage(data),
  (data & CPLB_USER_RD) ? 'Y' : 'N',
  (data & CPLB_USER_WR) ? 'Y' : 'N',
  (data & CPLB_SUPV_WR) ? 'Y' : 'N',
  pos < cdata->switched ? 'N' : 'Y');

 return 0;
}
