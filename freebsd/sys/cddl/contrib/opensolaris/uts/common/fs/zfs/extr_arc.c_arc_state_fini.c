
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int arcs_size; int * arcs_esize; } ;
struct TYPE_11__ {int arcs_size; int * arcs_esize; } ;
struct TYPE_10__ {int * arcs_list; int arcs_size; int * arcs_esize; } ;
struct TYPE_9__ {int * arcs_list; int arcs_size; int * arcs_esize; } ;
struct TYPE_8__ {int * arcs_list; int arcs_size; int * arcs_esize; } ;
struct TYPE_7__ {int * arcs_list; int arcs_size; int * arcs_esize; } ;


 size_t ARC_BUFC_DATA ;
 size_t ARC_BUFC_METADATA ;
 int aggsum_fini (int *) ;
 TYPE_6__* arc_anon ;
 TYPE_5__* arc_l2c_only ;
 int arc_meta_used ;
 TYPE_4__* arc_mfu ;
 TYPE_3__* arc_mfu_ghost ;
 TYPE_2__* arc_mru ;
 TYPE_1__* arc_mru_ghost ;
 int arc_size ;
 int astat_bonus_size ;
 int astat_data_size ;
 int astat_dbuf_size ;
 int astat_dnode_size ;
 int astat_hdr_size ;
 int astat_l2_hdr_size ;
 int astat_metadata_size ;
 int multilist_destroy (int ) ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
arc_state_fini(void)
{
 zfs_refcount_destroy(&arc_anon->arcs_esize[ARC_BUFC_METADATA]);
 zfs_refcount_destroy(&arc_anon->arcs_esize[ARC_BUFC_DATA]);
 zfs_refcount_destroy(&arc_mru->arcs_esize[ARC_BUFC_METADATA]);
 zfs_refcount_destroy(&arc_mru->arcs_esize[ARC_BUFC_DATA]);
 zfs_refcount_destroy(&arc_mru_ghost->arcs_esize[ARC_BUFC_METADATA]);
 zfs_refcount_destroy(&arc_mru_ghost->arcs_esize[ARC_BUFC_DATA]);
 zfs_refcount_destroy(&arc_mfu->arcs_esize[ARC_BUFC_METADATA]);
 zfs_refcount_destroy(&arc_mfu->arcs_esize[ARC_BUFC_DATA]);
 zfs_refcount_destroy(&arc_mfu_ghost->arcs_esize[ARC_BUFC_METADATA]);
 zfs_refcount_destroy(&arc_mfu_ghost->arcs_esize[ARC_BUFC_DATA]);
 zfs_refcount_destroy(&arc_l2c_only->arcs_esize[ARC_BUFC_METADATA]);
 zfs_refcount_destroy(&arc_l2c_only->arcs_esize[ARC_BUFC_DATA]);

 zfs_refcount_destroy(&arc_anon->arcs_size);
 zfs_refcount_destroy(&arc_mru->arcs_size);
 zfs_refcount_destroy(&arc_mru_ghost->arcs_size);
 zfs_refcount_destroy(&arc_mfu->arcs_size);
 zfs_refcount_destroy(&arc_mfu_ghost->arcs_size);
 zfs_refcount_destroy(&arc_l2c_only->arcs_size);

 multilist_destroy(arc_mru->arcs_list[ARC_BUFC_METADATA]);
 multilist_destroy(arc_mru_ghost->arcs_list[ARC_BUFC_METADATA]);
 multilist_destroy(arc_mfu->arcs_list[ARC_BUFC_METADATA]);
 multilist_destroy(arc_mfu_ghost->arcs_list[ARC_BUFC_METADATA]);
 multilist_destroy(arc_mru->arcs_list[ARC_BUFC_DATA]);
 multilist_destroy(arc_mru_ghost->arcs_list[ARC_BUFC_DATA]);
 multilist_destroy(arc_mfu->arcs_list[ARC_BUFC_DATA]);
 multilist_destroy(arc_mfu_ghost->arcs_list[ARC_BUFC_DATA]);

 aggsum_fini(&arc_meta_used);
 aggsum_fini(&arc_size);
 aggsum_fini(&astat_data_size);
 aggsum_fini(&astat_metadata_size);
 aggsum_fini(&astat_hdr_size);
 aggsum_fini(&astat_bonus_size);
 aggsum_fini(&astat_dnode_size);
 aggsum_fini(&astat_dbuf_size);
 aggsum_fini(&astat_l2_hdr_size);
}
