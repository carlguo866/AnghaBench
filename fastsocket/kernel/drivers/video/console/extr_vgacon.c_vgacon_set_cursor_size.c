
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_CRTC_CURSOR_END ;
 int VGA_CRTC_CURSOR_START ;
 scalar_t__ VIDEO_TYPE_VGAC ;
 int cursor_size_lastfrom ;
 int cursor_size_lastto ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_lock ;
 int vga_video_port_reg ;
 int vga_video_port_val ;
 scalar_t__ vga_video_type ;

__attribute__((used)) static void vgacon_set_cursor_size(int xpos, int from, int to)
{
 unsigned long flags;
 int curs, cure;






 if ((from == cursor_size_lastfrom) && (to == cursor_size_lastto))
  return;
 cursor_size_lastfrom = from;
 cursor_size_lastto = to;

 spin_lock_irqsave(&vga_lock, flags);
 if (vga_video_type >= VIDEO_TYPE_VGAC) {
  outb_p(VGA_CRTC_CURSOR_START, vga_video_port_reg);
  curs = inb_p(vga_video_port_val);
  outb_p(VGA_CRTC_CURSOR_END, vga_video_port_reg);
  cure = inb_p(vga_video_port_val);
 } else {
  curs = 0;
  cure = 0;
 }

 curs = (curs & 0xc0) | from;
 cure = (cure & 0xe0) | to;

 outb_p(VGA_CRTC_CURSOR_START, vga_video_port_reg);
 outb_p(curs, vga_video_port_val);
 outb_p(VGA_CRTC_CURSOR_END, vga_video_port_reg);
 outb_p(cure, vga_video_port_val);
 spin_unlock_irqrestore(&vga_lock, flags);
}
