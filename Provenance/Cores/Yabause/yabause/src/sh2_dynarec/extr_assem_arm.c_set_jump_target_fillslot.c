
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int assert (int) ;

void set_jump_target_fillslot(int addr,u32 target,int copy)
{
  u8 *ptr=(u8 *)addr;
  u32 *ptr2=(u32 *)ptr;
  assert(!copy||ptr2[-1]==0xe28dd000);
  if(ptr[3]==0xe2) {
    assert(!copy);
    assert((target-(u32)ptr2-8)<4096);
    *ptr2=(*ptr2&0xFFFFF000)|(target-(u32)ptr2-8);
  }
  else {
    assert((ptr[3]&0x0e)==0xa);
    u32 target_insn=*(u32 *)target;
    if((target_insn&0x0e100000)==0) {
      copy=0;
    }
    if((target_insn&0x0c100000)==0x04100000) {
      copy=0;
    }
    if(target_insn&0x08000000) {
      copy=0;
    }
    if(copy) {
      ptr2[-1]=target_insn;
      target+=4;
    }
    *ptr2=(*ptr2&0xFF000000)|(((target-(u32)ptr2-8)<<6)>>8);
  }
}
