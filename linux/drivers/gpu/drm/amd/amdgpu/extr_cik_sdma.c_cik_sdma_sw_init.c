
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int name; int * ring_obj; } ;
struct TYPE_4__ {int num_instances; int trap_irq; TYPE_1__* instance; int illegal_inst_irq; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int AMDGPU_SDMA_IRQ_INSTANCE0 ;
 int AMDGPU_SDMA_IRQ_INSTANCE1 ;
 int DRM_ERROR (char*) ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,int ) ;
 int cik_sdma_init_microcode (struct amdgpu_device*) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int cik_sdma_sw_init(void *handle)
{
 struct amdgpu_ring *ring;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r, i;

 r = cik_sdma_init_microcode(adev);
 if (r) {
  DRM_ERROR("Failed to load sdma firmware!\n");
  return r;
 }


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 224,
         &adev->sdma.trap_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 241,
         &adev->sdma.illegal_inst_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 247,
         &adev->sdma.illegal_inst_irq);
 if (r)
  return r;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  ring = &adev->sdma.instance[i].ring;
  ring->ring_obj = ((void*)0);
  sprintf(ring->name, "sdma%d", i);
  r = amdgpu_ring_init(adev, ring, 1024,
         &adev->sdma.trap_irq,
         (i == 0) ?
         AMDGPU_SDMA_IRQ_INSTANCE0 :
         AMDGPU_SDMA_IRQ_INSTANCE1);
  if (r)
   return r;
 }

 return r;
}
