
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int end; int flags; int start; } ;
struct intel_th_subdevice {scalar_t__ type; int nres; int scrpd; int otype; scalar_t__ mknode; int name; int res; int id; } ;
struct TYPE_5__ {int devt; } ;
struct TYPE_4__ {int port; int scratchpad; int type; } ;
struct intel_th_device {int host_mode; TYPE_2__ dev; int resource; TYPE_1__ output; int drvdata; } ;
struct intel_th {int num_resources; int irq; struct intel_th_device* hub; int num_thdevs; int major; int dev; struct resource* resource; int drvdata; } ;


 int ENODEV ;
 int ENOMEM ;
 struct intel_th_device* ERR_PTR (int) ;
 scalar_t__ INTEL_TH_CAP (struct intel_th*,int ) ;
 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ INTEL_TH_SWITCH ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int MKDEV (int ,int ) ;
 int TH_MMIO_CONFIG ;
 int dev_dbg (int ,char*,int ,int,struct resource*) ;
 int device_add (TYPE_2__*) ;
 int has_mintctl ;
 int host_mode ;
 int host_mode_only ;
 int intel_th_device_add_resources (struct intel_th_device*,struct resource*,int) ;
 struct intel_th_device* intel_th_device_alloc (struct intel_th*,scalar_t__,int ,int ) ;
 int intel_th_request_hub_module (struct intel_th*) ;
 int kfree (int ) ;
 int memcpy (struct resource*,int ,int) ;
 int put_device (TYPE_2__*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static struct intel_th_device *
intel_th_subdevice_alloc(struct intel_th *th,
    const struct intel_th_subdevice *subdev)
{
 struct intel_th_device *thdev;
 struct resource res[3];
 unsigned int req = 0;
 int r, err;

 thdev = intel_th_device_alloc(th, subdev->type, subdev->name,
          subdev->id);
 if (!thdev)
  return ERR_PTR(-ENOMEM);

 thdev->drvdata = th->drvdata;

 memcpy(res, subdev->res,
        sizeof(struct resource) * subdev->nres);

 for (r = 0; r < subdev->nres; r++) {
  struct resource *devres = th->resource;
  int bar = TH_MMIO_CONFIG;






  if (!res[r].end && res[r].flags == IORESOURCE_MEM) {
   bar = res[r].start;
   err = -ENODEV;
   if (bar >= th->num_resources)
    goto fail_put_device;
   res[r].start = 0;
   res[r].end = resource_size(&devres[bar]) - 1;
  }

  if (res[r].flags & IORESOURCE_MEM) {
   res[r].start += devres[bar].start;
   res[r].end += devres[bar].start;

   dev_dbg(th->dev, "%s:%d @ %pR\n",
    subdev->name, r, &res[r]);
  } else if (res[r].flags & IORESOURCE_IRQ) {




   if (INTEL_TH_CAP(th, has_mintctl) && th->irq != -1)
    res[r].start = th->irq;
  }
 }

 err = intel_th_device_add_resources(thdev, res, subdev->nres);
 if (err) {
  put_device(&thdev->dev);
  goto fail_put_device;
 }

 if (subdev->type == INTEL_TH_OUTPUT) {
  if (subdev->mknode)
   thdev->dev.devt = MKDEV(th->major, th->num_thdevs);
  thdev->output.type = subdev->otype;
  thdev->output.port = -1;
  thdev->output.scratchpad = subdev->scrpd;
 } else if (subdev->type == INTEL_TH_SWITCH) {
  thdev->host_mode =
   INTEL_TH_CAP(th, host_mode_only) ? 1 : host_mode;
  th->hub = thdev;
 }

 err = device_add(&thdev->dev);
 if (err) {
  put_device(&thdev->dev);
  goto fail_free_res;
 }


 if (subdev->type == INTEL_TH_SWITCH && !req) {
  err = intel_th_request_hub_module(th);
  if (!err)
   req++;
 }

 return thdev;

fail_free_res:
 kfree(thdev->resource);

fail_put_device:
 put_device(&thdev->dev);

 return ERR_PTR(err);
}
