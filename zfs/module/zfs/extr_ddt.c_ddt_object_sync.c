
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int dmu_tx_t ;
struct TYPE_11__ {int doi_physical_blocks_512; int doi_fill_count; int doi_data_block_size; } ;
typedef TYPE_2__ dmu_object_info_t ;
struct TYPE_12__ {int ** ddt_histogram; TYPE_1__* ddt_spa; int ddt_os; TYPE_4__** ddt_object_stats; } ;
typedef TYPE_3__ ddt_t ;
struct TYPE_13__ {int ddo_dspace; int ddo_mspace; int ddo_count; } ;
typedef TYPE_4__ ddt_object_t ;
typedef int ddt_histogram_t ;
struct TYPE_10__ {int spa_ddt_stat_object; } ;


 int DDT_NAMELEN ;
 int VERIFY (int) ;
 scalar_t__ ddt_object_count (TYPE_3__*,int,int,int *) ;
 scalar_t__ ddt_object_info (TYPE_3__*,int,int,TYPE_2__*) ;
 int ddt_object_name (TYPE_3__*,int,int,char*) ;
 scalar_t__ zap_update (int ,int ,char*,int,int,int *,int *) ;

__attribute__((used)) static void
ddt_object_sync(ddt_t *ddt, enum ddt_type type, enum ddt_class class,
    dmu_tx_t *tx)
{
 ddt_object_t *ddo = &ddt->ddt_object_stats[type][class];
 dmu_object_info_t doi;
 uint64_t count;
 char name[DDT_NAMELEN];

 ddt_object_name(ddt, type, class, name);

 VERIFY(zap_update(ddt->ddt_os, ddt->ddt_spa->spa_ddt_stat_object, name,
     sizeof (uint64_t), sizeof (ddt_histogram_t) / sizeof (uint64_t),
     &ddt->ddt_histogram[type][class], tx) == 0);




 VERIFY(ddt_object_info(ddt, type, class, &doi) == 0);
 VERIFY(ddt_object_count(ddt, type, class, &count) == 0);

 ddo->ddo_count = count;
 ddo->ddo_dspace = doi.doi_physical_blocks_512 << 9;
 ddo->ddo_mspace = doi.doi_fill_count * doi.doi_data_block_size;
}
