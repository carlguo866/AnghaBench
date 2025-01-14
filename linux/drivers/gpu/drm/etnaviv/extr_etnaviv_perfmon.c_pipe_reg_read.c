
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct etnaviv_pm_signal {scalar_t__ data; } ;
struct etnaviv_pm_domain {int profile_read; int profile_config; } ;
struct TYPE_2__ {unsigned int pixel_pipes; } ;
struct etnaviv_gpu {TYPE_1__ identity; } ;


 int VIVS_HI_CLOCK_CONTROL ;
 scalar_t__ VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE (unsigned int) ;
 scalar_t__ VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK ;
 scalar_t__ gpu_read (struct etnaviv_gpu*,int ) ;
 int gpu_write (struct etnaviv_gpu*,int ,scalar_t__) ;

__attribute__((used)) static u32 pipe_reg_read(struct etnaviv_gpu *gpu,
 const struct etnaviv_pm_domain *domain,
 const struct etnaviv_pm_signal *signal)
{
 u32 clock = gpu_read(gpu, VIVS_HI_CLOCK_CONTROL);
 u32 value = 0;
 unsigned i;

 for (i = 0; i < gpu->identity.pixel_pipes; i++) {
  clock &= ~(VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK);
  clock |= VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE(i);
  gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, clock);
  gpu_write(gpu, domain->profile_config, signal->data);
  value += gpu_read(gpu, domain->profile_read);
 }


 clock &= ~(VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE__MASK);
 clock |= VIVS_HI_CLOCK_CONTROL_DEBUG_PIXEL_PIPE(0);
 gpu_write(gpu, VIVS_HI_CLOCK_CONTROL, clock);

 return value;
}
