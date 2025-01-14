
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct torus {int x_sz; int y_sz; int z_sz; TYPE_2__* osm; int seed_cnt; TYPE_1__* seed; } ;
struct TYPE_4__ {int log; } ;
struct TYPE_3__ {int x_dateline; int y_dateline; int z_dateline; } ;


 int OSM_LOG (int *,int ,char*,int,...) ;
 int OSM_LOG_ERROR ;
 char* strtok (int *,char const*) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static
bool parse_dir_dateline(int c_dir, struct torus *t, const char *parse_sep)
{
 char *val;
 int *dl, max_dl;
 bool success = 0;

 val = strtok(((void*)0), parse_sep);
 if (!val)
  goto out;

 if (!t) {
  success = 1;
  goto out;
 }

 switch (c_dir) {
 case 1:
  dl = &t->seed[t->seed_cnt - 1].x_dateline;
  max_dl = t->x_sz;
  break;
 case 2:
  dl = &t->seed[t->seed_cnt - 1].y_dateline;
  max_dl = t->y_sz;
  break;
 case 3:
  dl = &t->seed[t->seed_cnt - 1].z_dateline;
  max_dl = t->z_sz;
  break;
 default:
  OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
   "ERR 4E0F: unknown dateline direction %d\n", c_dir);
  goto out;
 }
 *dl = strtol(val, ((void*)0), 0);

 if ((*dl < 0 && *dl <= -max_dl) || *dl >= max_dl)
  OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
   "ERR 4E10: dateline value for coordinate direction %d "
   "must be %d < dl < %d\n",
   c_dir, -max_dl, max_dl);
 else
  success = 1;
out:
 return success;
}
