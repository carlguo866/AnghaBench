
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dsa_switch {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mv88e6131_hw_stats ;
 int mv88e6xxx_get_ethtool_stats (struct dsa_switch*,int ,int ,int,int *) ;

__attribute__((used)) static void
mv88e6131_get_ethtool_stats(struct dsa_switch *ds,
      int port, uint64_t *data)
{
 mv88e6xxx_get_ethtool_stats(ds, ARRAY_SIZE(mv88e6131_hw_stats),
        mv88e6131_hw_stats, port, data);
}
