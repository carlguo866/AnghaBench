
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int num_tx_rings; } ;
struct TYPE_7__ {TYPE_2__* tx_ring; TYPE_1__ hw; int pci_dev; } ;
typedef TYPE_3__ qla_host_t ;
typedef int name_str ;
struct TYPE_6__ {int iscsi_pkt_count; int count; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int bzero (char*,int) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
qlnx_add_drvr_tx_stats(qla_host_t *ha)
{
        struct sysctl_ctx_list *ctx;
        struct sysctl_oid_list *children;
        struct sysctl_oid_list *node_children;
        struct sysctl_oid *ctx_oid;
        int i;
        uint8_t name_str[16];

        ctx = device_get_sysctl_ctx(ha->pci_dev);
        children = SYSCTL_CHILDREN(device_get_sysctl_tree(ha->pci_dev));

        ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "stats_drvr_xmt",
                        CTLFLAG_RD, ((void*)0), "stats_drvr_xmt");
        children = SYSCTL_CHILDREN(ctx_oid);

        for (i = 0; i < ha->hw.num_tx_rings; i++) {

                bzero(name_str, (sizeof(uint8_t) * sizeof(name_str)));
                snprintf(name_str, sizeof(name_str), "%d", i);

                ctx_oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, name_str,
                        CTLFLAG_RD, ((void*)0), name_str);
                node_children = SYSCTL_CHILDREN(ctx_oid);

                SYSCTL_ADD_QUAD(ctx, node_children,
   OID_AUTO, "count",
                        CTLFLAG_RD, &ha->tx_ring[i].count,
                        "count");







 }

 return;
}
