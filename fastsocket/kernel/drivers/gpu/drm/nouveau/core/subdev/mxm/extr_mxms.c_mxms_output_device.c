
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nouveau_mxm {int dummy; } ;
struct mxms_odev {int outp_type; int ddc_port; int conn_type; int dig_conn; } ;


 scalar_t__ ROM16 (int ) ;
 int ROM32 (int ) ;
 int mxms_version (struct nouveau_mxm*) ;

void
mxms_output_device(struct nouveau_mxm *mxm, u8 *pdata, struct mxms_odev *desc)
{
 u64 data = ROM32(pdata[0]);
 if (mxms_version(mxm) >= 0x0300)
  data |= (u64)ROM16(pdata[4]) << 32;

 desc->outp_type = (data & 0x00000000000000f0ULL) >> 4;
 desc->ddc_port = (data & 0x0000000000000f00ULL) >> 8;
 desc->conn_type = (data & 0x000000000001f000ULL) >> 12;
 desc->dig_conn = (data & 0x0000000000780000ULL) >> 19;
}
