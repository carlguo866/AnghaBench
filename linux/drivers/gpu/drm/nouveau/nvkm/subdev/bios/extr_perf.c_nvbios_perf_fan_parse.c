
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_perf_fan {int pwm_divisor; } ;


 int ENODEV ;
 scalar_t__ nvbios_perf_table (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;

int
nvbios_perf_fan_parse(struct nvkm_bios *bios,
        struct nvbios_perf_fan *fan)
{
 u8 ver, hdr, cnt, len, snr, ssz;
 u32 perf = nvbios_perf_table(bios, &ver, &hdr, &cnt, &len, &snr, &ssz);
 if (!perf)
  return -ENODEV;

 if (ver >= 0x20 && ver < 0x40 && hdr > 6)
  fan->pwm_divisor = nvbios_rd16(bios, perf + 6);
 else
  fan->pwm_divisor = 0;

 return 0;
}
