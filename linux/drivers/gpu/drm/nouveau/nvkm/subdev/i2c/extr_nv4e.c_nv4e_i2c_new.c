
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv4e_i2c ;
 int nvkm_i2c_new_ (int *,struct nvkm_device*,int,struct nvkm_i2c**) ;

int
nv4e_i2c_new(struct nvkm_device *device, int index, struct nvkm_i2c **pi2c)
{
 return nvkm_i2c_new_(&nv4e_i2c, device, index, pi2c);
}
