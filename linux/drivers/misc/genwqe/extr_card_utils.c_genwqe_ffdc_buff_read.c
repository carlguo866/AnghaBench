
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct genwqe_reg {int dummy; } ;
struct genwqe_dev {int dummy; } ;


 int GENWQE_EXTENDED_DIAG_SELECTOR (int,int) ;
 int GENWQE_UID_OFFS (int) ;
 int IO_EXTENDED_DIAG_MAP (int) ;
 int IO_EXTENDED_DIAG_READ_MBX ;
 int IO_EXTENDED_DIAG_SELECTOR ;
 int IO_EXTENDED_ERROR_POINTER ;
 int __genwqe_readq (struct genwqe_dev*,int) ;
 int __genwqe_writeq (struct genwqe_dev*,int,int) ;
 int set_reg_idx (struct genwqe_dev*,struct genwqe_reg*,unsigned int*,unsigned int,int,int,int) ;

int genwqe_ffdc_buff_read(struct genwqe_dev *cd, int uid,
     struct genwqe_reg *regs, unsigned int max_regs)
{
 int i, traps, traces, trace, trace_entries, trace_entry, ring;
 unsigned int idx = 0;
 u32 eevptr_addr, l_addr, d_addr, d_len, d_type;
 u64 eevptr, e, val, addr;

 eevptr_addr = GENWQE_UID_OFFS(uid) | IO_EXTENDED_ERROR_POINTER;
 eevptr = __genwqe_readq(cd, eevptr_addr);

 if ((eevptr != 0x0) && (eevptr != 0xffffffffffffffffull)) {
  l_addr = GENWQE_UID_OFFS(uid) | eevptr;
  while (1) {
   e = __genwqe_readq(cd, l_addr);
   if ((e == 0x0) || (e == 0xffffffffffffffffull))
    break;

   d_addr = (e & 0x0000000000ffffffull);
   d_len = (e & 0x0000007fff000000ull) >> 24;
   d_type = (e & 0x0000008000000000ull) >> 36;
   d_addr |= GENWQE_UID_OFFS(uid);

   if (d_type) {
    for (i = 0; i < (int)d_len; i++) {
     val = __genwqe_readq(cd, d_addr);
     set_reg_idx(cd, regs, &idx, max_regs,
          d_addr, i, val);
    }
   } else {
    d_len >>= 3;
    for (i = 0; i < (int)d_len; i++, d_addr += 8) {
     val = __genwqe_readq(cd, d_addr);
     set_reg_idx(cd, regs, &idx, max_regs,
          d_addr, 0, val);
    }
   }
   l_addr += 8;
  }
 }





 for (ring = 0; ring < 8; ring++) {

  addr = GENWQE_UID_OFFS(uid) | IO_EXTENDED_DIAG_MAP(ring);
  val = __genwqe_readq(cd, addr);

  if ((val == 0x0ull) || (val == -1ull))
   continue;

  traps = (val >> 24) & 0xff;
  traces = (val >> 16) & 0xff;
  trace_entries = val & 0xffff;




  for (trace = 0; trace <= traces; trace++) {
   u32 diag_sel =
    GENWQE_EXTENDED_DIAG_SELECTOR(ring, trace);

   addr = (GENWQE_UID_OFFS(uid) |
    IO_EXTENDED_DIAG_SELECTOR);
   __genwqe_writeq(cd, addr, diag_sel);

   for (trace_entry = 0;
        trace_entry < (trace ? trace_entries : traps);
        trace_entry++) {
    addr = (GENWQE_UID_OFFS(uid) |
     IO_EXTENDED_DIAG_READ_MBX);
    val = __genwqe_readq(cd, addr);
    set_reg_idx(cd, regs, &idx, max_regs, addr,
         (diag_sel<<16) | trace_entry, val);
   }
  }
 }
 return 0;
}
