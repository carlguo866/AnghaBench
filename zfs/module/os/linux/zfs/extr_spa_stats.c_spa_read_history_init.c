
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* pl_private; } ;
struct TYPE_9__ {TYPE_6__ procfs_list; scalar_t__ size; } ;
struct TYPE_7__ {TYPE_3__ read_history; } ;
struct TYPE_8__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_history_list_t ;


 char* kmem_asprintf (char*,int ) ;
 int kmem_strfree (char*) ;
 int offsetof (int ,int ) ;
 int procfs_list_install (char*,char*,int,TYPE_6__*,int ,int ,int ,int ) ;
 int spa_name (TYPE_2__*) ;
 int spa_read_history_clear ;
 int spa_read_history_show ;
 int spa_read_history_show_header ;
 int spa_read_history_t ;
 int srh_node ;

__attribute__((used)) static void
spa_read_history_init(spa_t *spa)
{
 spa_history_list_t *shl = &spa->spa_stats.read_history;
 char *module;

 shl->size = 0;

 module = kmem_asprintf("zfs/%s", spa_name(spa));

 shl->procfs_list.pl_private = shl;
 procfs_list_install(module,
     "reads",
     0600,
     &shl->procfs_list,
     spa_read_history_show,
     spa_read_history_show_header,
     spa_read_history_clear,
     offsetof(spa_read_history_t, srh_node));

 kmem_strfree(module);
}
