
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int status; int prev; } ;
struct intel_sst_drv {scalar_t__ sst_state; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ SST_FW_RUNNING ;
 int STREAM_INIT ;
 int STREAM_UN_INIT ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,int) ;
 int sst_drop_stream (struct intel_sst_drv*,int) ;

__attribute__((used)) static int sst_stream_drop(struct device *dev, int str_id)
{
 struct stream_info *str_info;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 if (ctx->sst_state != SST_FW_RUNNING)
  return 0;

 str_info = get_stream_info(ctx, str_id);
 if (!str_info)
  return -EINVAL;
 str_info->prev = STREAM_UN_INIT;
 str_info->status = STREAM_INIT;
 return sst_drop_stream(ctx, str_id);
}
