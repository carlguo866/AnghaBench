
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int daddr_t ;
typedef int caddr_t ;
struct TYPE_4__ {int bd_sec; int bd_hds; int bd_unit; } ;
typedef TYPE_1__ bdinfo_t ;
struct TYPE_5__ {int addr; int eax; int ecx; int edx; int efl; int ebx; int es; int ctl; } ;


 int BD_WR ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 int VTOPOFF (int ) ;
 int VTOPSEG (int ) ;
 TYPE_2__ v86 ;
 int v86int () ;

__attribute__((used)) static int
bd_chs_io(bdinfo_t *bd, daddr_t dblk, int blks, caddr_t dest,
    int dowrite)
{
 uint32_t x, bpc, cyl, hd, sec;

 bpc = bd->bd_sec * bd->bd_hds;
 x = dblk;
 cyl = x / bpc;
 x %= bpc;
 hd = x / bd->bd_sec;
 sec = x % bd->bd_sec;


 sec++;

 if (cyl > 1023) {

  return (1);
 }

 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 if (dowrite == BD_WR)
  v86.eax = 0x300 | blks;
 else
  v86.eax = 0x200 | blks;
 v86.ecx = ((cyl & 0xff) << 8) | ((cyl & 0x300) >> 2) | sec;
 v86.edx = (hd << 8) | bd->bd_unit;
 v86.es = VTOPSEG(dest);
 v86.ebx = VTOPOFF(dest);
 v86int();
 if (V86_CY(v86.efl))
  return (v86.eax >> 8);
 return (0);
}
