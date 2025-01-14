
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_hcb {int features; } ;


 int ABRT ;
 int CABRT ;
 int DIP ;
 int FE_ISTAT1 ;
 int INB (struct sym_hcb*,int ) ;
 int INW (struct sym_hcb*,int ) ;
 int OUTB (struct sym_hcb*,int ,int ) ;
 int SCRUN ;
 int SIP ;
 int nc_dstat ;
 int nc_istat ;
 int nc_istat1 ;
 int nc_sist ;
 int printf (char*,char*,int) ;
 int sym_chip_reset (struct sym_hcb*) ;
 char* sym_name (struct sym_hcb*) ;
 int udelay (int) ;

__attribute__((used)) static void sym_soft_reset (struct sym_hcb *np)
{
 u_char istat = 0;
 int i;

 if (!(np->features & FE_ISTAT1) || !(INB(np, nc_istat1) & SCRUN))
  goto do_chip_reset;

 OUTB(np, nc_istat, CABRT);
 for (i = 100000 ; i ; --i) {
  istat = INB(np, nc_istat);
  if (istat & SIP) {
   INW(np, nc_sist);
  }
  else if (istat & DIP) {
   if (INB(np, nc_dstat) & ABRT)
    break;
  }
  udelay(5);
 }
 OUTB(np, nc_istat, 0);
 if (!i)
  printf("%s: unable to abort current chip operation, "
         "ISTAT=0x%02x.\n", sym_name(np), istat);
do_chip_reset:
 sym_chip_reset(np);
}
