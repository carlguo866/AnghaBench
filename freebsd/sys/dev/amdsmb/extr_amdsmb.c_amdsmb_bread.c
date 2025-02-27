
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct amdsmb_softc {int dummy; } ;
typedef int device_t ;


 int AMDSMB_DEBUG (int ) ;
 int AMDSMB_LOCK (struct amdsmb_softc*) ;
 int AMDSMB_UNLOCK (struct amdsmb_softc*) ;
 int SMB_ADDR ;
 scalar_t__ SMB_BCNT ;
 int SMB_CMD ;
 scalar_t__ SMB_DATA ;
 int SMB_EINVAL ;
 int SMB_ENOERR ;
 int SMB_PRTCL ;
 int SMB_PRTCL_BLOCK_DATA ;
 int SMB_PRTCL_READ ;
 int amdsmb_ec_read (struct amdsmb_softc*,scalar_t__,int*) ;
 int amdsmb_ec_write (struct amdsmb_softc*,int ,int) ;
 int amdsmb_wait (struct amdsmb_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,int,char,int) ;

__attribute__((used)) static int
amdsmb_bread(device_t dev, u_char slave, char cmd, u_char *count, char *buf)
{
 struct amdsmb_softc *sc = (struct amdsmb_softc *)device_get_softc(dev);
 u_char data, len, i;
 int error;

 if (*count < 1 || *count > 32)
  return (SMB_EINVAL);

 AMDSMB_LOCK(sc);
 amdsmb_ec_write(sc, SMB_CMD, cmd);
 amdsmb_ec_write(sc, SMB_ADDR, slave);
 amdsmb_ec_write(sc, SMB_PRTCL, SMB_PRTCL_READ | SMB_PRTCL_BLOCK_DATA);

 if ((error = amdsmb_wait(sc)) == SMB_ENOERR) {
  amdsmb_ec_read(sc, SMB_BCNT, &len);
  for (i = 0; i < len; i++) {
   amdsmb_ec_read(sc, SMB_DATA + i, &data);
   if (i < *count)
    buf[i] = data;
  }
  *count = len;
 }

 AMDSMB_DEBUG(printf("amdsmb: READBLK to 0x%x, count=0x%x, cmd=0x%x, "
     "error=0x%x", slave, *count, cmd, error));
 AMDSMB_UNLOCK(sc);

 return (error);
}
