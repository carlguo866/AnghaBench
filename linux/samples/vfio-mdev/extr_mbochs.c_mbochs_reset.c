
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdev_state {int memsize; int* vbe; } ;
struct mdev_device {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int VBE_DISPI_ID5 ;
 size_t VBE_DISPI_INDEX_ID ;
 size_t VBE_DISPI_INDEX_VIDEO_MEMORY_64K ;
 struct mdev_state* mdev_get_drvdata (struct mdev_device*) ;

__attribute__((used)) static int mbochs_reset(struct mdev_device *mdev)
{
 struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
 u32 size64k = mdev_state->memsize / (64 * 1024);
 int i;

 for (i = 0; i < ARRAY_SIZE(mdev_state->vbe); i++)
  mdev_state->vbe[i] = 0;
 mdev_state->vbe[VBE_DISPI_INDEX_ID] = VBE_DISPI_ID5;
 mdev_state->vbe[VBE_DISPI_INDEX_VIDEO_MEMORY_64K] = size64k;
 return 0;
}
