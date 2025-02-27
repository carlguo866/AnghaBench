
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qib_devdata {int dummy; } ;
struct TYPE_3__ {int rdesc; int* rdata; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EPB_LOC (int ,int,int) ;
 int ibsd_mod_allchnls (struct qib_devdata*,int,int,int) ;
 TYPE_1__* rxeq_init_vals ;

__attribute__((used)) static int set_rxeq_vals(struct qib_devdata *dd, int vsel)
{
 int ret;
 int ridx;
 int cnt = ARRAY_SIZE(rxeq_init_vals);

 for (ridx = 0; ridx < cnt; ++ridx) {
  int elt, reg, val, loc;

  elt = rxeq_init_vals[ridx].rdesc & 0xF;
  reg = rxeq_init_vals[ridx].rdesc >> 4;
  loc = EPB_LOC(0, elt, reg);
  val = rxeq_init_vals[ridx].rdata[vsel];

  ret = ibsd_mod_allchnls(dd, loc, val, 0xFF);
  if (ret < 0)
   break;
 }
 return ret;
}
