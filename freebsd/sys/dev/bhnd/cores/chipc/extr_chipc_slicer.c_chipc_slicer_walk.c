
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource {int dummy; } ;
struct flash_slice {int size; char* label; int base; } ;
typedef int device_t ;


 int BHND_TRACE (char*,...) ;
 int BHND_TRACE_DEV (int ,char*,int) ;
 int BHND_WARN (char*,...) ;



 int bus_read_4 (struct resource*,int) ;
 int rman_get_size (struct resource*) ;

__attribute__((used)) static int
chipc_slicer_walk(device_t dev, struct resource *res,
    struct flash_slice *slices, int *nslices)
{
 uint32_t fw_len;
 uint32_t fs_ofs;
 uint32_t val;
 uint32_t ofs_trx;
 int flash_size;

 *nslices = 0;

 flash_size = rman_get_size(res);
 ofs_trx = flash_size;

 BHND_TRACE_DEV(dev, "slicer: scanning memory [%x bytes] for headers...",
     flash_size);


 for(uint32_t ofs = 0; ofs < flash_size; ofs+= 0x1000){
  val = bus_read_4(res, ofs);
  switch (val) {
  case 128:

   if (ofs_trx < ofs) {
    BHND_TRACE_DEV(dev, "stop on 2nd TRX: %x", ofs);
    break;
   }

   BHND_TRACE("TRX found: %x", ofs);
   ofs_trx = ofs;

   fs_ofs = bus_read_4(res, ofs + 24);
   BHND_TRACE("FS offset: %x", fs_ofs);





   if (fs_ofs % 0x200 != 0) {
    BHND_WARN("WARNING! filesystem offset should be"
        " aligned on sector size (%d bytes)", 0x200);
    BHND_WARN("ignoring TRX firmware image");
    break;
   }

   slices[*nslices].base = ofs + fs_ofs;

   fw_len = bus_read_4(res, ofs + 4);
   slices[*nslices].size = fw_len - fs_ofs;
   slices[*nslices].label = "rootfs";
   *nslices += 1;
   break;
  case 130:
   BHND_TRACE("CFE found: %x", ofs);
   break;
  case 129:
   BHND_TRACE("NVRAM found: %x", ofs);
   break;
  default:
   break;
  }
 }

 BHND_TRACE("slicer: done");
 return (0);
}
