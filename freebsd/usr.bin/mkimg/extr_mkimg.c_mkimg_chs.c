
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int lba_t ;


 int nheads ;
 int nsecs ;

void
mkimg_chs(lba_t lba, u_int maxcyl, u_int *cylp, u_int *hdp, u_int *secp)
{
 u_int hd, sec;

 *cylp = *hdp = *secp = ~0U;
 if (nsecs == 1 || nheads == 1)
  return;

 sec = lba % nsecs + 1;
 lba /= nsecs;
 hd = lba % nheads;
 lba /= nheads;
 if (lba > maxcyl)
  return;

 *cylp = lba;
 *hdp = hd;
 *secp = sec;
}
