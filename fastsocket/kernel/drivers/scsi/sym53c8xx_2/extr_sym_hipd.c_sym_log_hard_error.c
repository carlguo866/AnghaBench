
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
typedef int u32 ;
struct sym_hcb {int scripta_ba; int scripta_sz; int scriptb_ba; int scriptb_sz; int features; scalar_t__ scriptb0; scalar_t__ scripta0; } ;
struct Scsi_Host {int dummy; } ;


 int BF ;
 int FE_C10 ;
 scalar_t__ INB (struct sym_hcb*,int ) ;
 scalar_t__ INB_OFF (struct sym_hcb*,int) ;
 int INL (struct sym_hcb*,int ) ;
 int MDPE ;
 int nc_dbc ;
 int nc_dsp ;
 int nc_sbcl ;
 int nc_sbdl ;
 int nc_scntl3 ;
 int nc_scntl4 ;
 int nc_sdid ;
 int nc_socl ;
 int nc_sxfer ;
 int printf (char*,...) ;
 int scr_to_cpu (int) ;
 struct sym_hcb* sym_get_hcb (struct Scsi_Host*) ;
 int sym_log_bus_error (struct Scsi_Host*) ;
 char* sym_name (struct sym_hcb*) ;

__attribute__((used)) static void sym_log_hard_error(struct Scsi_Host *shost, u_short sist, u_char dstat)
{
 struct sym_hcb *np = sym_get_hcb(shost);
 u32 dsp;
 int script_ofs;
 int script_size;
 char *script_name;
 u_char *script_base;
 int i;

 dsp = INL(np, nc_dsp);

 if (dsp > np->scripta_ba &&
   dsp <= np->scripta_ba + np->scripta_sz) {
  script_ofs = dsp - np->scripta_ba;
  script_size = np->scripta_sz;
  script_base = (u_char *) np->scripta0;
  script_name = "scripta";
 }
 else if (np->scriptb_ba < dsp &&
   dsp <= np->scriptb_ba + np->scriptb_sz) {
  script_ofs = dsp - np->scriptb_ba;
  script_size = np->scriptb_sz;
  script_base = (u_char *) np->scriptb0;
  script_name = "scriptb";
 } else {
  script_ofs = dsp;
  script_size = 0;
  script_base = ((void*)0);
  script_name = "mem";
 }

 printf ("%s:%d: ERROR (%x:%x) (%x-%x-%x) (%x/%x/%x) @ (%s %x:%08x).\n",
  sym_name(np), (unsigned)INB(np, nc_sdid)&0x0f, dstat, sist,
  (unsigned)INB(np, nc_socl), (unsigned)INB(np, nc_sbcl),
  (unsigned)INB(np, nc_sbdl), (unsigned)INB(np, nc_sxfer),
  (unsigned)INB(np, nc_scntl3),
  (np->features & FE_C10) ? (unsigned)INB(np, nc_scntl4) : 0,
  script_name, script_ofs, (unsigned)INL(np, nc_dbc));

 if (((script_ofs & 3) == 0) &&
     (unsigned)script_ofs < script_size) {
  printf ("%s: script cmd = %08x\n", sym_name(np),
   scr_to_cpu((int) *(u32 *)(script_base + script_ofs)));
 }

 printf("%s: regdump:", sym_name(np));
 for (i = 0; i < 24; i++)
  printf(" %02x", (unsigned)INB_OFF(np, i));
 printf(".\n");




 if (dstat & (MDPE|BF))
  sym_log_bus_error(shost);
}
