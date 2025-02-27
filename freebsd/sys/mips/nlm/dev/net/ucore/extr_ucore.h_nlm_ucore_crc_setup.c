
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_write_ucore_crcinfo (unsigned int) ;
 int nlm_write_ucore_crcpos (unsigned int) ;

__attribute__((used)) static __inline__ void
nlm_ucore_crc_setup(int crcpos, int cps, int cfi, int cbm, int fcoe,
    int keysize, int valid, int startcrc, int endcrc)
{
 unsigned int val = 0;

 val |= ((cfi & 0x1) << 20);
 val |= ((cbm & 0x1) << 19);
 val |= ((fcoe & 0x1) << 18);
 val |= ((cps & 0x1) << 16);
 val |= (crcpos & 0xffff);

 nlm_write_ucore_crcpos(val);

 val = 0;
 val |= ((keysize & 0x3f) << 25);
 val |= ((valid & 0x1) << 24);
 val |= ((endcrc & 0xffff) << 8);
 val |= (startcrc & 0xff);

 nlm_write_ucore_crcinfo(val);
}
