
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct snd_miro_aci {int dummy; } ;


 int EIO ;
 int RDS_DATA (int) ;
 scalar_t__ RDS_RESET ;
 int memset (scalar_t__*,int ,scalar_t__) ;
 scalar_t__ rds_ack (struct snd_miro_aci*) ;
 int rds_readcycle_nowait (struct snd_miro_aci*) ;
 scalar_t__ rds_waitread (struct snd_miro_aci*) ;
 int rds_write (struct snd_miro_aci*,scalar_t__) ;

__attribute__((used)) static int rds_cmd(struct snd_miro_aci *aci, u8 cmd, u8 databuffer[], u8 datasize)
{
 int i, j;

 rds_write(aci, cmd);


 if (cmd == RDS_RESET)
  return 0;
 if (rds_ack(aci))
  return -EIO;
 if (datasize == 0)
  return 0;



 if (rds_waitread(aci) < 0)
  return -1;

 memset(databuffer, 0, datasize);

 for (i = 0; i < 8 * datasize; i++) {
  j = rds_readcycle_nowait(aci);
  if (j < 0)
   return -EIO;
  databuffer[i / 8] |= RDS_DATA(j) << (7 - (i % 8));
 }
 return 0;
}
