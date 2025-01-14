
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct drsmp {int base_version; int class_version; int method; int dr_slid; int dr_dlid; scalar_t__ hop_cnt; int initial_path; int tid; int attr_mod; scalar_t__ attr_id; int mgmt_class; } ;
struct TYPE_3__ {scalar_t__ hop_cnt; int path; } ;
typedef TYPE_1__ DRPath ;


 int IB_SMI_DIRECT_CLASS ;
 int drmad_tid ;
 int htonl (int) ;
 int htonll (int ) ;
 scalar_t__ htons (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct drsmp*,int ,int) ;
 scalar_t__ umad_get_mad (void*) ;
 int umad_set_addr (void*,int,int ,int ,int ) ;

void drsmp_get_init(void *umad, DRPath * path, int attr, int mod)
{
 struct drsmp *smp = (struct drsmp *)(umad_get_mad(umad));

 memset(smp, 0, sizeof(*smp));

 smp->base_version = 1;
 smp->mgmt_class = IB_SMI_DIRECT_CLASS;
 smp->class_version = 1;

 smp->method = 1;
 smp->attr_id = (uint16_t) htons((uint16_t) attr);
 smp->attr_mod = htonl(mod);
 smp->tid = htonll(drmad_tid++);
 smp->dr_slid = 0xffff;
 smp->dr_dlid = 0xffff;

 umad_set_addr(umad, 0xffff, 0, 0, 0);

 if (path)
  memcpy(smp->initial_path, path->path, path->hop_cnt + 1);

 smp->hop_cnt = (uint8_t) path->hop_cnt;
}
