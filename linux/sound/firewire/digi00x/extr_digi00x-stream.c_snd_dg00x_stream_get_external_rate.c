
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct snd_dg00x {int unit; } ;
typedef int reg ;
typedef int __be32 ;


 size_t ARRAY_SIZE (unsigned int*) ;
 scalar_t__ DG00X_ADDR_BASE ;
 scalar_t__ DG00X_OFFSET_EXTERNAL_RATE ;
 int EBUSY ;
 int TCODE_READ_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 unsigned int* snd_dg00x_stream_rates ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

int snd_dg00x_stream_get_external_rate(struct snd_dg00x *dg00x,
           unsigned int *rate)
{
 u32 data;
 __be32 reg;
 int err;

 err = snd_fw_transaction(dg00x->unit, TCODE_READ_QUADLET_REQUEST,
     DG00X_ADDR_BASE + DG00X_OFFSET_EXTERNAL_RATE,
     &reg, sizeof(reg), 0);
 if (err < 0)
  return err;

 data = be32_to_cpu(reg) & 0x0f;
 if (data < ARRAY_SIZE(snd_dg00x_stream_rates))
  *rate = snd_dg00x_stream_rates[data];

 else
  err = -EBUSY;

 return err;
}
