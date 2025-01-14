
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;
struct sym_hcb {int rv_dcntl; int features; int maxwide; } ;


 int CRST ;
 int FE_WIDE ;
 int INB (struct sym_hcb*,int ) ;
 int INW (struct sym_hcb*,int ) ;
 int IRQM ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int OUTW (struct sym_hcb*,int ,int ) ;
 int RST ;
 int SYM_SETUP_SCSI_BUS_CHECK ;
 int TE ;
 int nc_dcntl ;
 int nc_mbox1 ;
 int nc_sbcl ;
 int nc_sbdl ;
 int nc_scntl1 ;
 int nc_sien ;
 int nc_sstat0 ;
 int nc_sstat2 ;
 int nc_stest3 ;
 int printf (char*,char*,...) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_soft_reset (struct sym_hcb*) ;
 int udelay (int) ;

int sym_reset_scsi_bus(struct sym_hcb *np, int enab_int)
{
 u32 term;
 int retv = 0;

 sym_soft_reset(np);
 if (enab_int)
  OUTW(np, nc_sien, RST);




 OUTB(np, nc_stest3, TE);
 OUTB(np, nc_dcntl, (np->rv_dcntl & IRQM));
 OUTB(np, nc_scntl1, CRST);
 INB(np, nc_mbox1);
 udelay(200);

 if (!SYM_SETUP_SCSI_BUS_CHECK)
  goto out;






 term = INB(np, nc_sstat0);
 term = ((term & 2) << 7) + ((term & 1) << 17);
 term |= ((INB(np, nc_sstat2) & 0x01) << 26) |
  ((INW(np, nc_sbdl) & 0xff) << 9) |
  ((INW(np, nc_sbdl) & 0xff00) << 10) |
  INB(np, nc_sbcl);

 if (!np->maxwide)
  term &= 0x3ffff;

 if (term != (2<<7)) {
  printf("%s: suspicious SCSI data while resetting the BUS.\n",
   sym_name(np));
  printf("%s: %sdp0,d7-0,rst,req,ack,bsy,sel,atn,msg,c/d,i/o = "
   "0x%lx, expecting 0x%lx\n",
   sym_name(np),
   (np->features & FE_WIDE) ? "dp1,d15-8," : "",
   (u_long)term, (u_long)(2<<7));
  if (SYM_SETUP_SCSI_BUS_CHECK == 1)
   retv = 1;
 }
out:
 OUTB(np, nc_scntl1, 0);
 return retv;
}
