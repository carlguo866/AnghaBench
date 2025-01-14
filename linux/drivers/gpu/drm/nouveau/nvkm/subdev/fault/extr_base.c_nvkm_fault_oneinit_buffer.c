
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fault_buffer {int id; int entries; unsigned long long addr; int mem; struct nvkm_fault* fault; } ;
struct nvkm_fault {TYPE_2__* func; struct nvkm_fault_buffer** buffer; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {int entry_size; int (* info ) (struct nvkm_fault_buffer*) ;} ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NVKM_MEM_TARGET_INST ;
 struct nvkm_fault_buffer* kzalloc (int,int ) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int,int) ;
 unsigned long long nvkm_memory_bar2 (int ) ;
 int nvkm_memory_new (struct nvkm_device*,int ,int,int,int,int *) ;
 int stub1 (struct nvkm_fault_buffer*) ;

__attribute__((used)) static int
nvkm_fault_oneinit_buffer(struct nvkm_fault *fault, int id)
{
 struct nvkm_subdev *subdev = &fault->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_fault_buffer *buffer;
 int ret;

 if (!(buffer = kzalloc(sizeof(*buffer), GFP_KERNEL)))
  return -ENOMEM;
 buffer->fault = fault;
 buffer->id = id;
 fault->func->buffer.info(buffer);
 fault->buffer[id] = buffer;

 nvkm_debug(subdev, "buffer %d: %d entries\n", id, buffer->entries);

 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, buffer->entries *
         fault->func->buffer.entry_size, 0x1000, 1,
         &buffer->mem);
 if (ret)
  return ret;


 buffer->addr = nvkm_memory_bar2(buffer->mem);
 if (buffer->addr == ~0ULL)
  return -EFAULT;

 return 0;
}
