
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zoneref {int dummy; } ;
struct zone {int dummy; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 int MAX_NR_ZONES ;
 int check_highest_zone (int) ;
 scalar_t__ managed_zone (struct zone*) ;
 int zoneref_set_zone (struct zone*,struct zoneref*) ;

__attribute__((used)) static int build_zonerefs_node(pg_data_t *pgdat, struct zoneref *zonerefs)
{
 struct zone *zone;
 enum zone_type zone_type = MAX_NR_ZONES;
 int nr_zones = 0;

 do {
  zone_type--;
  zone = pgdat->node_zones + zone_type;
  if (managed_zone(zone)) {
   zoneref_set_zone(zone, &zonerefs[nr_zones++]);
   check_highest_zone(zone_type);
  }
 } while (zone_type);

 return nr_zones;
}
