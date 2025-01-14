
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;


 int VPRINTK (char*) ;

__attribute__((used)) static void scsi_16_lba_len(const u8 *cdb, u64 *plba, u32 *plen)
{
 u64 lba = 0;
 u32 len = 0;

 VPRINTK("sixteen-byte command\n");

 lba |= ((u64)cdb[2]) << 56;
 lba |= ((u64)cdb[3]) << 48;
 lba |= ((u64)cdb[4]) << 40;
 lba |= ((u64)cdb[5]) << 32;
 lba |= ((u64)cdb[6]) << 24;
 lba |= ((u64)cdb[7]) << 16;
 lba |= ((u64)cdb[8]) << 8;
 lba |= ((u64)cdb[9]);

 len |= ((u32)cdb[10]) << 24;
 len |= ((u32)cdb[11]) << 16;
 len |= ((u32)cdb[12]) << 8;
 len |= ((u32)cdb[13]);

 *plba = lba;
 *plen = len;
}
