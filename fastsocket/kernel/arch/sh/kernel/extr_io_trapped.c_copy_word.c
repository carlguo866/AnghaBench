
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long ctrl_inb (unsigned long) ;
 unsigned long long ctrl_inl (unsigned long) ;
 unsigned long long ctrl_inq (unsigned long) ;
 unsigned long long ctrl_inw (unsigned long) ;
 int ctrl_outb (unsigned long long,unsigned long) ;
 int ctrl_outl (unsigned long long,unsigned long) ;
 int ctrl_outq (unsigned long long,unsigned long) ;
 int ctrl_outw (unsigned long long,unsigned long) ;

__attribute__((used)) static unsigned long long copy_word(unsigned long src_addr, int src_len,
        unsigned long dst_addr, int dst_len)
{
 unsigned long long tmp = 0;

 switch (src_len) {
 case 1:
  tmp = ctrl_inb(src_addr);
  break;
 case 2:
  tmp = ctrl_inw(src_addr);
  break;
 case 4:
  tmp = ctrl_inl(src_addr);
  break;
 case 8:
  tmp = ctrl_inq(src_addr);
  break;
 }

 switch (dst_len) {
 case 1:
  ctrl_outb(tmp, dst_addr);
  break;
 case 2:
  ctrl_outw(tmp, dst_addr);
  break;
 case 4:
  ctrl_outl(tmp, dst_addr);
  break;
 case 8:
  ctrl_outq(tmp, dst_addr);
  break;
 }

 return tmp;
}
