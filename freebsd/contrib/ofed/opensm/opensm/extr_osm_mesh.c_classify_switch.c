
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* node; } ;
typedef TYPE_3__ switch_t ;
typedef int osm_log_t ;
struct TYPE_12__ {int num_class; size_t* class_type; int* class_count; } ;
typedef TYPE_4__ mesh_t ;
struct TYPE_13__ {TYPE_3__** switches; TYPE_1__* p_osm; } ;
typedef TYPE_5__ lash_t ;
struct TYPE_10__ {int poly; int num_links; } ;
struct TYPE_9__ {int log; } ;


 int OSM_LOG_ENTER (int *) ;
 int OSM_LOG_EXIT (int *) ;
 scalar_t__ poly_diff (int ,int ,TYPE_3__*) ;

__attribute__((used)) static void classify_switch(lash_t *p_lash, mesh_t *mesh, int sw)
{
 osm_log_t *p_log = &p_lash->p_osm->log;
 int i;
 switch_t *s = p_lash->switches[sw];
 switch_t *s1;

 OSM_LOG_ENTER(p_log);

 if (!s->node->poly)
  goto done;

 for (i = 0; i < mesh->num_class; i++) {
  s1 = p_lash->switches[mesh->class_type[i]];

  if (poly_diff(s->node->num_links, s->node->poly, s1))
   continue;

  mesh->class_count[i]++;
  goto done;
 }

 mesh->class_type[mesh->num_class] = sw;
 mesh->class_count[mesh->num_class] = 1;
 mesh->num_class++;

done:
 OSM_LOG_EXIT(p_log);
}
