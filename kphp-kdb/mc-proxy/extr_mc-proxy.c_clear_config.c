
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mc_config {int clusters_num; scalar_t__ ConfigServersCount; struct mc_cluster* Clusters; } ;
struct mc_cluster {int tot_buckets; scalar_t__ cluster_name; scalar_t__ points; TYPE_1__** buckets; } ;
struct conn_target {int dummy; } ;
struct TYPE_3__ {int port; int target; } ;


 int destroy_target (TYPE_1__*) ;
 int free (scalar_t__) ;
 int inet_ntoa (int ) ;
 int memset (TYPE_1__**,int ,int) ;
 scalar_t__ strlen (scalar_t__) ;
 int vkprintf (int,char*,int ,int ) ;
 int zfree (scalar_t__,scalar_t__) ;

void clear_config (struct mc_config *MC, int do_destroy_targets) {
  int i, j;
  for (i = 0; i < MC->clusters_num; i++) {
    struct mc_cluster *C = &MC->Clusters[i];
    if (do_destroy_targets) {
      for (j = 0; j < C->tot_buckets; j++) {
        vkprintf (1, "destroying target %s:%d\n", inet_ntoa (C->buckets[j]->target), C->buckets[j]->port);
 destroy_target (C->buckets[j]);
      }
      memset (C->buckets, 0, C->tot_buckets * sizeof (struct conn_target *));
    }
    if (C->points) {
      free (C->points);
      C->points = 0;
    }
    if (C->cluster_name) {
      zfree (C->cluster_name, strlen (C->cluster_name) + 1);
      C->cluster_name = 0;
    }
  }

  MC->ConfigServersCount = 0;
  MC->clusters_num = 0;
}
