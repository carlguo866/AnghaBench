
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_path {int egress_fc_enable; int priority; int weight; TYPE_1__* hops; scalar_t__ nfc_credits; scalar_t__ drop_packages; void* ingress_shared_buffer; int ingress_fc_enable; void* egress_shared_buffer; } ;
struct TYPE_2__ {int initial_credits; } ;


 int TB_PATH_ALL ;
 int TB_PATH_INTERNAL ;
 void* TB_PATH_NONE ;
 int TB_PATH_SOURCE ;

__attribute__((used)) static void tb_pci_init_path(struct tb_path *path)
{
 path->egress_fc_enable = TB_PATH_SOURCE | TB_PATH_INTERNAL;
 path->egress_shared_buffer = TB_PATH_NONE;
 path->ingress_fc_enable = TB_PATH_ALL;
 path->ingress_shared_buffer = TB_PATH_NONE;
 path->priority = 3;
 path->weight = 1;
 path->drop_packages = 0;
 path->nfc_credits = 0;
 path->hops[0].initial_credits = 7;
 path->hops[1].initial_credits = 16;
}
