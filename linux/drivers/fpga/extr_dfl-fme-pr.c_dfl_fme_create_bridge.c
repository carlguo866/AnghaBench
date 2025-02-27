
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dfl_fme_bridge {TYPE_3__* br; } ;
struct dfl_fme_br_pdata {int port_id; int cdev; } ;
struct dfl_feature_platform_data {int dfl_cdev; TYPE_1__* dev; } ;
struct device {int dummy; } ;
typedef int br_pdata ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_9__ {TYPE_2__ dev; } ;
struct TYPE_7__ {struct device dev; } ;


 int DFL_FPGA_FME_BRIDGE ;
 int ENOMEM ;
 struct dfl_fme_bridge* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PLATFORM_DEVID_AUTO ;
 struct dfl_fme_bridge* devm_kzalloc (struct device*,int,int ) ;
 int platform_device_add (TYPE_3__*) ;
 int platform_device_add_data (TYPE_3__*,struct dfl_fme_br_pdata*,int) ;
 TYPE_3__* platform_device_alloc (int ,int ) ;
 int platform_device_put (TYPE_3__*) ;

__attribute__((used)) static struct dfl_fme_bridge *
dfl_fme_create_bridge(struct dfl_feature_platform_data *pdata, int port_id)
{
 struct device *dev = &pdata->dev->dev;
 struct dfl_fme_br_pdata br_pdata;
 struct dfl_fme_bridge *fme_br;
 int ret = -ENOMEM;

 fme_br = devm_kzalloc(dev, sizeof(*fme_br), GFP_KERNEL);
 if (!fme_br)
  return ERR_PTR(ret);

 br_pdata.cdev = pdata->dfl_cdev;
 br_pdata.port_id = port_id;

 fme_br->br = platform_device_alloc(DFL_FPGA_FME_BRIDGE,
        PLATFORM_DEVID_AUTO);
 if (!fme_br->br)
  return ERR_PTR(ret);

 fme_br->br->dev.parent = dev;

 ret = platform_device_add_data(fme_br->br, &br_pdata, sizeof(br_pdata));
 if (ret)
  goto create_br_err;

 ret = platform_device_add(fme_br->br);
 if (ret)
  goto create_br_err;

 return fme_br;

create_br_err:
 platform_device_put(fme_br->br);
 return ERR_PTR(ret);
}
