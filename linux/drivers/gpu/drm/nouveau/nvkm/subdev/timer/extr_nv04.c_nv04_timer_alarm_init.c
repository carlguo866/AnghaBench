
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_timer {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int NV04_PTIMER_ALARM_0 ;
 int NV04_PTIMER_INTR_EN_0 ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

void
nv04_timer_alarm_init(struct nvkm_timer *tmr, u32 time)
{
 struct nvkm_device *device = tmr->subdev.device;
 nvkm_wr32(device, NV04_PTIMER_ALARM_0, time);
 nvkm_wr32(device, NV04_PTIMER_INTR_EN_0, 0x00000001);
}
