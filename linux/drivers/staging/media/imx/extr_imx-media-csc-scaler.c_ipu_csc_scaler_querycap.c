
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;

__attribute__((used)) static int ipu_csc_scaler_querycap(struct file *file, void *priv,
       struct v4l2_capability *cap)
{
 strscpy(cap->driver, "imx-media-csc-scaler", sizeof(cap->driver));
 strscpy(cap->card, "imx-media-csc-scaler", sizeof(cap->card));
 strscpy(cap->bus_info, "platform:imx-media-csc-scaler",
  sizeof(cap->bus_info));

 return 0;
}
