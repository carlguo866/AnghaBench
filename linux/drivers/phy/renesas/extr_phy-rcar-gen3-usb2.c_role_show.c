
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {int is_otg_channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 struct rcar_gen3_chan* dev_get_drvdata (struct device*) ;
 int rcar_gen3_is_any_rphy_initialized (struct rcar_gen3_chan*) ;
 scalar_t__ rcar_gen3_is_host (struct rcar_gen3_chan*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t role_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct rcar_gen3_chan *ch = dev_get_drvdata(dev);

 if (!ch->is_otg_channel || !rcar_gen3_is_any_rphy_initialized(ch))
  return -EIO;

 return sprintf(buf, "%s\n", rcar_gen3_is_host(ch) ? "host" :
           "peripheral");
}
